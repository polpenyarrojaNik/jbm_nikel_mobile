// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_form_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageFormPageControllerHash() =>
    r'491d5567f160e0b2090407027d77f9c103ea1281';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$ImageFormPageController
    extends BuildlessAutoDisposeAsyncNotifier<List<OcrRecognizedText>> {
  late final File imageFile;

  FutureOr<List<OcrRecognizedText>> build(File imageFile);
}

/// See also [ImageFormPageController].
@ProviderFor(ImageFormPageController)
const imageFormPageControllerProvider = ImageFormPageControllerFamily();

/// See also [ImageFormPageController].
class ImageFormPageControllerFamily
    extends Family<AsyncValue<List<OcrRecognizedText>>> {
  /// See also [ImageFormPageController].
  const ImageFormPageControllerFamily();

  /// See also [ImageFormPageController].
  ImageFormPageControllerProvider call(File imageFile) {
    return ImageFormPageControllerProvider(imageFile);
  }

  @override
  ImageFormPageControllerProvider getProviderOverride(
    covariant ImageFormPageControllerProvider provider,
  ) {
    return call(provider.imageFile);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'imageFormPageControllerProvider';
}

/// See also [ImageFormPageController].
class ImageFormPageControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ImageFormPageController,
          List<OcrRecognizedText>
        > {
  /// See also [ImageFormPageController].
  ImageFormPageControllerProvider(File imageFile)
    : this._internal(
        () => ImageFormPageController()..imageFile = imageFile,
        from: imageFormPageControllerProvider,
        name: r'imageFormPageControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$imageFormPageControllerHash,
        dependencies: ImageFormPageControllerFamily._dependencies,
        allTransitiveDependencies:
            ImageFormPageControllerFamily._allTransitiveDependencies,
        imageFile: imageFile,
      );

  ImageFormPageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
  }) : super.internal();

  final File imageFile;

  @override
  FutureOr<List<OcrRecognizedText>> runNotifierBuild(
    covariant ImageFormPageController notifier,
  ) {
    return notifier.build(imageFile);
  }

  @override
  Override overrideWith(ImageFormPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ImageFormPageControllerProvider._internal(
        () => create()..imageFile = imageFile,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ImageFormPageController,
    List<OcrRecognizedText>
  >
  createElement() {
    return _ImageFormPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ImageFormPageControllerProvider &&
        other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ImageFormPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<OcrRecognizedText>> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _ImageFormPageControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ImageFormPageController,
          List<OcrRecognizedText>
        >
    with ImageFormPageControllerRef {
  _ImageFormPageControllerProviderElement(super.provider);

  @override
  File get imageFile => (origin as ImageFormPageControllerProvider).imageFile;
}

String _$setImageFromDataHash() => r'cc91120b820efd30a76a7c04f9efce4accb6727a';

abstract class _$SetImageFromData
    extends
        BuildlessAutoDisposeNotifier<
          MutationState<
            Either<AppException, ImageFormData>,
            SetImageFromDataParam
          >
        > {
  late final File imageFile;

  MutationState<Either<AppException, ImageFormData>, SetImageFromDataParam>
  build(File imageFile);
}

/// See also [SetImageFromData].
@ProviderFor(SetImageFromData)
const setImageFromDataProvider = SetImageFromDataFamily();

/// See also [SetImageFromData].
class SetImageFromDataFamily
    extends
        Family<
          MutationState<
            Either<AppException, ImageFormData>,
            SetImageFromDataParam
          >
        > {
  /// See also [SetImageFromData].
  const SetImageFromDataFamily();

  /// See also [SetImageFromData].
  SetImageFromDataProvider call(File imageFile) {
    return SetImageFromDataProvider(imageFile);
  }

  @override
  SetImageFromDataProvider getProviderOverride(
    covariant SetImageFromDataProvider provider,
  ) {
    return call(provider.imageFile);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'setImageFromDataProvider';
}

/// See also [SetImageFromData].
class SetImageFromDataProvider
    extends
        AutoDisposeNotifierProviderImpl<
          SetImageFromData,
          MutationState<
            Either<AppException, ImageFormData>,
            SetImageFromDataParam
          >
        > {
  /// See also [SetImageFromData].
  SetImageFromDataProvider(File imageFile)
    : this._internal(
        () => SetImageFromData()..imageFile = imageFile,
        from: setImageFromDataProvider,
        name: r'setImageFromDataProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$setImageFromDataHash,
        dependencies: SetImageFromDataFamily._dependencies,
        allTransitiveDependencies:
            SetImageFromDataFamily._allTransitiveDependencies,
        imageFile: imageFile,
      );

  SetImageFromDataProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.imageFile,
  }) : super.internal();

  final File imageFile;

  @override
  MutationState<Either<AppException, ImageFormData>, SetImageFromDataParam>
  runNotifierBuild(covariant SetImageFromData notifier) {
    return notifier.build(imageFile);
  }

  @override
  Override overrideWith(SetImageFromData Function() create) {
    return ProviderOverride(
      origin: this,
      override: SetImageFromDataProvider._internal(
        () => create()..imageFile = imageFile,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        imageFile: imageFile,
      ),
    );
  }

  @override
  AutoDisposeNotifierProviderElement<
    SetImageFromData,
    MutationState<Either<AppException, ImageFormData>, SetImageFromDataParam>
  >
  createElement() {
    return _SetImageFromDataProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is SetImageFromDataProvider && other.imageFile == imageFile;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, imageFile.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin SetImageFromDataRef
    on
        AutoDisposeNotifierProviderRef<
          MutationState<
            Either<AppException, ImageFormData>,
            SetImageFromDataParam
          >
        > {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _SetImageFromDataProviderElement
    extends
        AutoDisposeNotifierProviderElement<
          SetImageFromData,
          MutationState<
            Either<AppException, ImageFormData>,
            SetImageFromDataParam
          >
        >
    with SetImageFromDataRef {
  _SetImageFromDataProviderElement(super.provider);

  @override
  File get imageFile => (origin as SetImageFromDataProvider).imageFile;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
