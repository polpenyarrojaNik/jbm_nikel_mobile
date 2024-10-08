// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image_form_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$imageFormPageControllerHash() =>
    r'df159db8689b247f669174ef3c1a523ac0fa4084';

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

  FutureOr<List<OcrRecognizedText>> build(
    File imageFile,
  );
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
  ImageFormPageControllerProvider call(
    File imageFile,
  ) {
    return ImageFormPageControllerProvider(
      imageFile,
    );
  }

  @override
  ImageFormPageControllerProvider getProviderOverride(
    covariant ImageFormPageControllerProvider provider,
  ) {
    return call(
      provider.imageFile,
    );
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
    extends AutoDisposeAsyncNotifierProviderImpl<ImageFormPageController,
        List<OcrRecognizedText>> {
  /// See also [ImageFormPageController].
  ImageFormPageControllerProvider(
    File imageFile,
  ) : this._internal(
          () => ImageFormPageController()..imageFile = imageFile,
          from: imageFormPageControllerProvider,
          name: r'imageFormPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
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
    return notifier.build(
      imageFile,
    );
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
  AutoDisposeAsyncNotifierProviderElement<ImageFormPageController,
      List<OcrRecognizedText>> createElement() {
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

mixin ImageFormPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<OcrRecognizedText>> {
  /// The parameter `imageFile` of this provider.
  File get imageFile;
}

class _ImageFormPageControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<ImageFormPageController,
        List<OcrRecognizedText>> with ImageFormPageControllerRef {
  _ImageFormPageControllerProviderElement(super.provider);

  @override
  File get imageFile => (origin as ImageFormPageControllerProvider).imageFile;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

typedef ImageFormPageControllerFamilyParams = (File imageFile,);

extension ImageFormPageControllerMutationExtension
    on ImageFormPageControllerProvider {
  ImageFormPageControllerFamilyParams get _params => (this.imageFile,);

  Refreshable<SetImageFromDataMutation> get setImageFromData =>
      _setImageFromDataProvider(_params);
}

// Could have extras in the future when @mutationKey gets added. for now identical to the class one.
typedef _SetImageFromDataFamilyParameters = (File imageFile,);

final _setImageFromDataProvider = Provider.autoDispose.family(
    (ref, _SetImageFromDataFamilyParameters _params) {
  final notifier = ref.watch(imageFormPageControllerProvider(
    _params.$1,
  ).notifier);
  return SetImageFromDataMutation(
    (newState) => ref.state = newState,
    notifier.setImageFromData,
  );
}, dependencies: [imageFormPageControllerProvider]);

typedef SetImageFromDataSignature = Future<ImageFormData> Function(
    String? name,
    String? company,
    String? cargo,
    List<String> address,
    String? email,
    List<String> phoneList);
typedef SetImageFromDataStateSetter = void Function(
    SetImageFromDataMutation newState);

sealed class SetImageFromDataMutation
    with AsyncMutation, MutationResult<ImageFormData> {
  factory SetImageFromDataMutation(
    SetImageFromDataStateSetter updateState,
    SetImageFromDataSignature fn,
  ) = SetImageFromDataMutationIdle._;

  SetImageFromDataMutation._(this._updateState, this._fn);

  final SetImageFromDataStateSetter _updateState;
  final SetImageFromDataSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(String? name, String? company, String? cargo,
      List<String> address, String? email, List<String> phoneList) async {
    try {
      _updateState(SetImageFromDataMutationLoading.from(this));
      final res = await _fn(name, company, cargo, address, email, phoneList);
      _updateState(SetImageFromDataMutationSuccess.from(this, res));
    } catch (e, s) {
      _updateState(
          SetImageFromDataMutationFailure.from(this, error: e, stackTrace: s));
    }
  }
}

final class SetImageFromDataMutationIdle extends SetImageFromDataMutation
    with MutationIdle {
  SetImageFromDataMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory SetImageFromDataMutationIdle.from(SetImageFromDataMutation other) =>
      SetImageFromDataMutationIdle._(
        other._updateState,
        other._fn,
        error: other.error,
        stackTrace: other.stackTrace,
        result: other.result,
      );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class SetImageFromDataMutationLoading extends SetImageFromDataMutation
    with MutationLoading {
  SetImageFromDataMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory SetImageFromDataMutationLoading.from(
          SetImageFromDataMutation other) =>
      SetImageFromDataMutationLoading._(
        other._updateState,
        other._fn,
        error: other.error,
        stackTrace: other.stackTrace,
        result: other.result,
      );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class SetImageFromDataMutationSuccess extends SetImageFromDataMutation
    with MutationSuccessResult<ImageFormData> {
  SetImageFromDataMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    required this.result,
  }) : super._();

  factory SetImageFromDataMutationSuccess.from(
          SetImageFromDataMutation other, ImageFormData result) =>
      SetImageFromDataMutationSuccess._(
        other._updateState,
        other._fn,
        error: other.error,
        stackTrace: other.stackTrace,
        result: result,
      );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  final ImageFormData result;
}

final class SetImageFromDataMutationFailure extends SetImageFromDataMutation
    with MutationFailure {
  SetImageFromDataMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
    this.result,
  }) : super._();

  factory SetImageFromDataMutationFailure.from(
    SetImageFromDataMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) =>
      SetImageFromDataMutationFailure._(
        other._updateState,
        other._fn,
        error: error,
        stackTrace: stackTrace,
        result: other.result,
      );

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}
