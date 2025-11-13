// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_form_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ImageFormPageController)
const imageFormPageControllerProvider = ImageFormPageControllerFamily._();

final class ImageFormPageControllerProvider
    extends
        $AsyncNotifierProvider<
          ImageFormPageController,
          List<OcrRecognizedText>
        > {
  const ImageFormPageControllerProvider._({
    required ImageFormPageControllerFamily super.from,
    required File super.argument,
  }) : super(
         retry: null,
         name: r'imageFormPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$imageFormPageControllerHash();

  @override
  String toString() {
    return r'imageFormPageControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ImageFormPageController create() => ImageFormPageController();

  @override
  bool operator ==(Object other) {
    return other is ImageFormPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$imageFormPageControllerHash() =>
    r'e8d67ea18cf9b0ae44b2d83f208ff799d03c4c00';

final class ImageFormPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ImageFormPageController,
          AsyncValue<List<OcrRecognizedText>>,
          List<OcrRecognizedText>,
          FutureOr<List<OcrRecognizedText>>,
          File
        > {
  const ImageFormPageControllerFamily._()
    : super(
        retry: null,
        name: r'imageFormPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ImageFormPageControllerProvider call(File imageFile) =>
      ImageFormPageControllerProvider._(argument: imageFile, from: this);

  @override
  String toString() => r'imageFormPageControllerProvider';
}

abstract class _$ImageFormPageController
    extends $AsyncNotifier<List<OcrRecognizedText>> {
  late final _$args = ref.$arg as File;
  File get imageFile => _$args;

  FutureOr<List<OcrRecognizedText>> build(File imageFile);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<OcrRecognizedText>>,
              List<OcrRecognizedText>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<OcrRecognizedText>>,
                List<OcrRecognizedText>
              >,
              AsyncValue<List<OcrRecognizedText>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
