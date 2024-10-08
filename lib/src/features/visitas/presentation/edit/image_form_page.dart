import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flash/flash_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:riverpod_mutations_annotation/riverpod_mutations_annotation.dart';

import '../../../../../generated/l10n.dart';
import '../../../../core/presentation/common_widgets/common_app_bar.dart';
import '../../../../core/presentation/common_widgets/error_message_widget.dart';
import '../../domain/image_form_data.dart';
import '../../domain/ocr_recognized_text.dart';
import '../../domain/recognized_text_type.dart';
import '../../infrastructure/visita_repository.dart';

part 'image_form_page.g.dart';

@riverpod
class ImageFormPageController extends _$ImageFormPageController {
  ImageFormPageController();

  @override
  Future<List<OcrRecognizedText>> build(File imageFile) {
    return ref.read(visitaRepositoryProvider).reconginzedImage(imageFile);
  }

  @mutation
  Future<ImageFormData> setImageFromData(
    String? name,
    String? company,
    String? cargo,
    List<String> address,
    String? email,
    List<String> phoneList,
    // String? website,
  ) async {
    return ref
        .read(visitaRepositoryProvider)
        .setImageFormData(name, company, cargo, address, email, phoneList);
  }
}

@RoutePage()
class ImageFormPage extends ConsumerStatefulWidget {
  const ImageFormPage({super.key, required this.imageFile});

  final File imageFile;

  @override
  ConsumerState<ImageFormPage> createState() => _ImageFormPageState();
}

class _ImageFormPageState extends ConsumerState<ImageFormPage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(imageFormPageControllerProvider(widget.imageFile));
    return state.when(
      loading: () => Scaffold(
        appBar: CommonAppBar(
          titleText: S.of(context).imageForm,
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      ),
      data: (ocrRecognizedTextList) => DraggableForm(
        ocrRecognizedTextList: ocrRecognizedTextList,
        imageFile: widget.imageFile,
      ),
      error: (error, stackTrace) => Scaffold(
        appBar: CommonAppBar(
          titleText: S.of(context).imageForm,
        ),
        body: Center(
          child: ErrorMessageWidget(error.toString()),
        ),
      ),
    );
  }
}

class DraggableForm extends ConsumerStatefulWidget {
  const DraggableForm(
      {super.key,
      required this.imageFile,
      required this.ocrRecognizedTextList});

  final File imageFile;
  final List<OcrRecognizedText> ocrRecognizedTextList;

  @override
  ConsumerState<DraggableForm> createState() => _DraggableFormState();
}

class _DraggableFormState extends ConsumerState<DraggableForm> {
  String? name;
  String? company;
  String? cargo;
  List<String> phones = [];
  String? email;
  List<String> address = [];
  List<String> unreconizedList = [];

  @override
  void initState() {
    super.initState();
    _setInitalValues(widget.ocrRecognizedTextList);
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
        imageFormPageControllerProvider(widget.imageFile).setImageFromData,
        (_, state) {
      if (state is SetImageFromDataMutationSuccess) {
        context.router.maybePop(state.result);
      } else if (state is SetImageFromDataMutationFailure) {
        context.showErrorBar(content: Text(state.error.toString()));
      }
    });

    final stateImageFormData = ref.watch(
        imageFormPageControllerProvider(widget.imageFile).setImageFromData);

    return Scaffold(
      appBar: CommonAppBar(
        titleText: S.of(context).imageForm,
        actions: [
          IconButton(
            onPressed: () => saveImageFormData(stateImageFormData, ref),
            icon: const Icon(Icons.check),
          ),
        ],
      ),
      body: Column(
        children: [
          ImageFileWidget(imageFile: widget.imageFile),
          const Divider(),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TargetTextField(
                      value: name,
                      title: S.of(context).name,
                      updateDataValue: (selectedTextType) {
                        if (selectedTextType != RecognizedTextType.name) {
                          if (name != null) {
                            setTextType(selectedTextType, name!);
                            name = null;
                            setState(() {});
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TargetTextField(
                      value: company,
                      title: S.of(context).company,
                      updateDataValue: (selectedTextType) {
                        if (selectedTextType != RecognizedTextType.company) {
                          if (company != null) {
                            setTextType(selectedTextType, company!);
                            company = null;
                            setState(() {});
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TargetTextField(
                      value: cargo,
                      title: S.of(context).position,
                      updateDataValue: (selectedTextType) {
                        if (selectedTextType != RecognizedTextType.cargo) {
                          if (cargo != null) {
                            setTextType(selectedTextType, cargo!);
                            cargo = null;
                            setState(() {});
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TargetListView(
                      dataList: address,
                      title: S.of(context).addresses,
                      updateDataListValue: (selectedTextType, text) {
                        if (selectedTextType != RecognizedTextType.address) {
                          setTextType(selectedTextType, text);
                          address.remove(text);

                          setState(() {});
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TargetTextField(
                      value: email,
                      title: S.of(context).email,
                      updateDataValue: (selectedTextType) {
                        if (selectedTextType != RecognizedTextType.email) {
                          if (email != null) {
                            setTextType(selectedTextType, email!);
                            email = null;

                            setState(() {});
                          }
                        }
                      },
                    ),
                    const SizedBox(height: 16),
                    TargetListView(
                      dataList: phones,
                      title: S.of(context).phones,
                      updateDataListValue: (selectedTextType, text) {
                        if (selectedTextType != RecognizedTextType.telf) {
                          setTextType(selectedTextType, text);
                          phones.remove(text);

                          setState(() {});
                        }
                      },
                    ),
                    const Divider(),
                    DottedBorder(
                      padding: const EdgeInsets.all(10),
                      color: Colors.grey,
                      radius: const Radius.circular(5),
                      strokeWidth: 0.5,
                      dashPattern: const [5, 5],
                      child: SizedBox(
                        width: double.infinity,
                        child: unreconizedList.isNotEmpty
                            ? Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: unreconizedList
                                    .map(
                                      (unreconizedText) => GestureDetector(
                                        onTap: () => openSelectedTextTypeDialog(
                                          context,
                                          unreconizedText,
                                          removeTextFromList:
                                              (selectedRecognizedTextType) {
                                            if (selectedRecognizedTextType !=
                                                RecognizedTextType.unknown) {
                                              unreconizedList
                                                  .remove(unreconizedText);
                                              setState(() {});
                                            }
                                          },
                                        ),
                                        child: Chip(
                                          label: Text(unreconizedText),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              )
                            : Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(16.0),
                                  child: Text(
                                    S.of(context).empty,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall
                                        ?.copyWith(color: Colors.grey),
                                  ),
                                ),
                              ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void saveImageFormData(
      SetImageFromDataMutation stateImageFormData, WidgetRef ref) {
    stateImageFormData(name, company, cargo, address, email, phones);
  }

  void _setInitalValues(List<OcrRecognizedText> ocrRecognizedTextList) {
    for (var i = 0; i < ocrRecognizedTextList.length; i++) {
      if (ocrRecognizedTextList[i].type == RecognizedTextType.name) {
        name = ocrRecognizedTextList[i].text;
      }

      if (ocrRecognizedTextList[i].type == RecognizedTextType.company) {
        company = ocrRecognizedTextList[i].text;
      }
      if (ocrRecognizedTextList[i].type == RecognizedTextType.cargo) {
        cargo = ocrRecognizedTextList[i].text;
      }

      if (ocrRecognizedTextList[i].type == RecognizedTextType.address) {
        address.add(ocrRecognizedTextList[i].text);
      }

      if (ocrRecognizedTextList[i].type == RecognizedTextType.email) {
        email = ocrRecognizedTextList[i].text;
      }

      if (ocrRecognizedTextList[i].type == RecognizedTextType.telf) {
        phones.add(ocrRecognizedTextList[i].text);
      }

      // if (ocrRecognizedTextList[i].type == RecognizedTextType.website) {
      //   website = ocrRecognizedTextList[i].text;
      // }

      if (ocrRecognizedTextList[i].type == RecognizedTextType.unknown) {
        unreconizedList.add(ocrRecognizedTextList[i].text);
      }
    }
  }

  Future<void> openSelectedTextTypeDialog(
      BuildContext context, String selectedText,
      {required Function(RecognizedTextType) removeTextFromList}) async {
    final recognizedTexType = await showDialog(
            context: context,
            builder: (context) =>
                SelectTextTypeDialog(selectedText: selectedText))
        as RecognizedTextType?;

    if (recognizedTexType != null) {
      removeTextFromList(recognizedTexType);
      setTextType(recognizedTexType, selectedText);
    }
  }

  void setTextType(RecognizedTextType recognizedTexType, String selectedText) {
    switch (recognizedTexType) {
      case RecognizedTextType.name:
        name = selectedText;
        break;

      case RecognizedTextType.company:
        company = selectedText;
        break;
      case RecognizedTextType.cargo:
        cargo = selectedText;
        break;
      case RecognizedTextType.address:
        address.add(selectedText);
        break;
      case RecognizedTextType.telf:
        phones.add(selectedText);
        break;
      case RecognizedTextType.email:
        email = selectedText;
        break;
      // case RecognizedTextType.website:
      //   website = selectedText;
      //   break;
      case RecognizedTextType.unknown:
        unreconizedList.add(selectedText);
        break;
      default:
    }
  }
}

class TargetTextField extends StatelessWidget {
  const TargetTextField({
    super.key,
    required this.value,
    required this.updateDataValue,
    required this.title,
  });

  final String? value;
  final String title;
  final Function(RecognizedTextType selectedTextType) updateDataValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(title),
        ),
        const SizedBox(width: 8),
        Expanded(
            child: value != null
                ? GestureDetector(
                    onTap: () => openSelectedTextTypeDialog(context, value),
                    child: DottedBorder(
                      padding: const EdgeInsets.all(10),
                      color: Colors.grey,
                      radius: const Radius.circular(5),
                      strokeWidth: 0.5,
                      dashPattern: const [5, 5],
                      child: Chip(
                        label: Text(
                          value!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  )
                : DottedBorder(
                    padding: const EdgeInsets.all(10),
                    color: Colors.grey,
                    radius: const Radius.circular(5),
                    strokeWidth: 0.5,
                    dashPattern: const [5, 5],
                    child: Center(
                      child: Text(
                        S.of(context).empty,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  )),
      ],
    );
  }

  Future<void> openSelectedTextTypeDialog(
      BuildContext context, String? selectedText) async {
    final recognizedTexType = await showDialog(
      context: context,
      builder: (context) => SelectTextTypeDialog(selectedText: selectedText!),
    ) as RecognizedTextType?;

    if (recognizedTexType != null) {
      updateDataValue(recognizedTexType);
    }
  }
}

class TargetListView extends StatelessWidget {
  const TargetListView({
    super.key,
    required this.dataList,
    required this.title,
    required this.updateDataListValue,
  });

  final List<String> dataList;
  final String title;
  final Function(RecognizedTextType recognizedTextType, String text)
      updateDataListValue;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 100,
          child: Text(
            title,
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: DottedBorder(
            padding: const EdgeInsets.all(10),
            color: Colors.grey,
            radius: const Radius.circular(5),
            strokeWidth: 0.5,
            dashPattern: const [5, 5],
            child: SizedBox(
              width: double.infinity,
              child: dataList.isNotEmpty
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: dataList
                          .map((data) => GestureDetector(
                                    onTap: () => openSelectedTextTypeDialog(
                                        context, data),
                                    child: Chip(label: Text(data)),
                                  )

                              // Card(
                              //   child: Padding(
                              //     padding: const EdgeInsets.all(4.0),
                              //     child: ,
                              //   ),
                              // ),
                              )
                          .toList(),
                    )
                  : Center(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          S.of(context).empty,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(color: Colors.grey),
                        ),
                      ),
                    ),
            ),
          ),
        ),
      ],
    );
  }

  Future<void> openSelectedTextTypeDialog(
      BuildContext context, String selectedText) async {
    final recognizedTexType = await showDialog(
      context: context,
      builder: (context) => SelectTextTypeDialog(selectedText: selectedText),
    ) as RecognizedTextType?;

    if (recognizedTexType != null) {
      updateDataListValue(recognizedTexType, selectedText);
    }
  }
}

class ImageFileWidget extends StatelessWidget {
  const ImageFileWidget({super.key, required this.imageFile});

  final File imageFile;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.black,
      child: Image.file(imageFile),
    );
  }
}

class SelectTextTypeDialog extends StatelessWidget {
  SelectTextTypeDialog({super.key, required this.selectedText});

  final String selectedText;

  final List<RecognizedTextType> regognizedTypeList = [
    RecognizedTextType.name,
    RecognizedTextType.company,
    RecognizedTextType.cargo,
    RecognizedTextType.address,
    RecognizedTextType.telf,
    RecognizedTextType.email,
    // RecognizedTextType.website,
    RecognizedTextType.unknown,
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(selectedText),
      scrollable: true,
      content: SizedBox(
        height: 425,
        width: 350,
        child: ListView.separated(
          shrinkWrap: true,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, i) => GestureDetector(
            onTap: () => context.router.maybePop(regognizedTypeList[i]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                _getRecognizedTextName(regognizedTypeList[i]),
              ),
            ),
          ),
          separatorBuilder: (context, i) => const Divider(),
          itemCount: regognizedTypeList.length,
        ),
      ),
    );
  }

  String _getRecognizedTextName(RecognizedTextType recognizedTextType) {
    if (recognizedTextType == RecognizedTextType.name) {
      return S.current.name;
    } else if (recognizedTextType == RecognizedTextType.company) {
      return S.current.company;
    } else if (recognizedTextType == RecognizedTextType.address) {
      return S.current.addresses;
    } else if (recognizedTextType == RecognizedTextType.cargo) {
      return S.current.position;
    } else if (recognizedTextType == RecognizedTextType.email) {
      return S.current.email;
    } else if (recognizedTextType == RecognizedTextType.telf) {
      return S.current.phones;
    } else {
      return S.current.unknown;
    }
  }
}
