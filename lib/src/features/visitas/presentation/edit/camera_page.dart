import 'dart:async';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:camera/camera.dart';
import 'package:image/image.dart' as img;
import 'package:intl/intl.dart';
import 'package:material_ui/material_ui.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/application/log_service.dart';
import '../../../../core/presentation/common_widgets/progress_indicator_widget.dart';

@RoutePage()
class CameraPage extends StatefulWidget {
  const CameraPage({super.key, required this.maxImages});

  final int maxImages;

  @override
  CameraPageState createState() => CameraPageState();
}

class CameraPageState extends State<CameraPage> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  final List<File> _imageFileList = [];

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

    _controller = CameraController(cameras.first, ResolutionPreset.high);

    await _controller.initialize().catchError((e) {
      if (e is CameraException) {
        switch (e.code) {
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
        if (snapshot.connectionState == ConnectionState.done) {
          return _controller.value.isInitialized
              ? Scaffold(
                  appBar: AppBar(title: Text(S.of(context).camera)),
                  body: Stack(
                    children: [
                      Center(
                        child: LayoutBuilder(
                          builder: (context, constraints) => SizedBox(
                            width: constraints.maxWidth,
                            height: constraints.maxHeight,
                            child: CameraPreview(_controller),
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: MediaQuery.sizeOf(context).width * 0.8,
                          height: MediaQuery.sizeOf(context).width * 0.5,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.red, width: 2.0),
                          ),
                        ),
                      ),
                    ],
                  ),
                  floatingActionButton: FloatingActionButton(
                    onPressed: () => _takePicture(),
                    child: const Icon(Icons.camera_alt),
                  ),
                )
              : Scaffold(
                  appBar: AppBar(title: Text(S.of(context).camera)),
                  body: Container(
                    color: Colors.black,
                    child: ProgressIndicatorWidget(),
                  ),
                );
        }
        return ProgressIndicatorWidget();
      },
    );
  }

  Future<void> _takePicture() async {
    File? imageFile;
    if (!_controller.value.isInitialized) {
      log.d('Controller is not initialized');
    }

    // Formatting Date and Time
    final dateTimeStr = DateFormat.yMMMd()
        .addPattern('-')
        .add_Hms()
        .format(DateTime.now())
        .toString();

    final formattedDateTime = dateTimeStr.replaceAll(' ', '');
    log.d('Formatted: $formattedDateTime');

    if (_controller.value.isTakingPicture) {
      log.d('Processing is progress ...');
    }

    try {
      const xRatio = 0.8; // Relación de ancho del recuadro con respecto al ancho de la pantalla
      const yRatio = 0.3; // Relación de altura del recuadro con respecto a la altura de la pantalla

      final screenWidth = MediaQuery.sizeOf(context).width;
      final screenHeight = MediaQuery.sizeOf(context).height;

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

      imageFile = originalFile;
    } on CameraException catch (e) {
      log.d('Camera Exception: $e');
    }

    if (imageFile == null) {
      log.d('Error: imageFile is null');
      return;
    }

    _imageFileList.add(imageFile);

    if (!mounted) return;

    if (_imageFileList.length >= widget.maxImages) {
      unawaited(context.router.maybePop(_imageFileList));
      return;
    }

    final takeAnotherPhoto = await showDialog<bool>(
      context: context,
      builder: (dialogCtx) => AlertDialog(
        content: Text(S.of(dialogCtx).captureAnotherImageQuestion),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, false),
            child: Text(S.of(dialogCtx).no),
          ),
          TextButton(
            onPressed: () => Navigator.pop(dialogCtx, true),
            child: Text(S.of(dialogCtx).yes),
          ),
        ],
      ),
    );

    if (takeAnotherPhoto != true && mounted) {
      unawaited(context.router.maybePop(_imageFileList));
    }
  }
}
