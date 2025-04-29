import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image/image.dart' as img;

import '../../../../../generated/l10n.dart';
import '../../../../core/application/log_service.dart';

@RoutePage()
class CameraPage extends StatefulWidget {
  const CameraPage({super.key});

  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;

  @override
  void initState() {
    super.initState();

    _initializeControllerFuture = getInitializeCamera();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> getInitializeCamera() async {
    final cameras = await availableCameras();

    _controller = CameraController(cameras[0], ResolutionPreset.high);

    await _controller.initialize().catchError((e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _initializeControllerFuture,
      builder: (context, snapshot) {
        return snapshot.connectionState == ConnectionState.done
            ? _controller.value.isInitialized
                ? Scaffold(
                  appBar: AppBar(title: Text(S.of(context).camera)),
                  body: Stack(
                    children: <Widget>[
                      Center(
                        child: LayoutBuilder(
                          builder:
                              (context, constraints) => SizedBox(
                                width: constraints.maxWidth,
                                height: constraints.maxHeight,
                                child: CameraPreview(_controller),
                              ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.8,
                          height: MediaQuery.of(context).size.width * 0.5,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () async {
                      final imageFile = await _takePicture();
                      if (context.mounted && imageFile != null) {
                        unawaited(context.router.maybePop(imageFile));
                      }
                    },
                    child: const Icon(Icons.camera_alt),
                  ),
                )
                : Scaffold(
                  appBar: AppBar(title: Text(S.of(context).camera)),
                  body: Container(
                    color: Colors.black,
                    child: const Center(child: CircularProgressIndicator()),
                  ),
                )
            : const Center(child: CircularProgressIndicator());
      },
    );
  }

  Future<File?> _takePicture() async {
    if (!_controller.value.isInitialized) {
      log.d('Controller is not initialized');
      return null;
    }

    if (_controller.value.isTakingPicture) {
      log.d('Processing is progress ...');
      return null;
    }

    try {
      const xRatio =
          0.8; // Relación de ancho del recuadro con respecto al ancho de la pantalla
      const yRatio =
          0.3; // Relación de altura del recuadro con respecto a la altura de la pantalla

      final screenWidth = MediaQuery.of(context).size.width;
      final screenHeight = MediaQuery.of(context).size.height;

      final cropWidth = screenWidth * xRatio;
      final cropHeight = screenHeight * yRatio;
      final cropX = (screenWidth - cropWidth) / 2;
      final cropY = (screenHeight - cropHeight) / 2;

      final xfile = await _controller.takePicture();

      final originalFile = File(xfile.path);

      final originalImage = img.decodeImage(await originalFile.readAsBytes());

      final left = (cropX * originalImage!.width / screenWidth).round();
      final top = (cropY * originalImage.height / screenHeight).round();
      final width = (cropWidth * originalImage.width / screenWidth).round();
      final height = (cropHeight * originalImage.height / screenHeight).round();

      final croppedImage = img.copyCrop(
        originalImage,
        x: left,
        y: top,
        width: width,
        height: height,
      );

      await originalFile.writeAsBytes(img.encodeJpg(croppedImage));

      return originalFile;
    } on CameraException catch (e) {
      log.e('Camera Exception: $e');
      return null;
    }
  }
}
