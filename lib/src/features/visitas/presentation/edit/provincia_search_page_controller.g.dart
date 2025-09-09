// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$provinciaSearchPageControllerHash() =>
    r'd615327c94a2c8bfd5f5240f75c3b4819acbcf7a';

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

abstract class _$ProvinciaSearchPageController
    extends BuildlessAutoDisposeAsyncNotifier<List<Provincia>> {
  late final String? paisId;

  FutureOr<List<Provincia>> build(String? paisId);
}

/// See also [ProvinciaSearchPageController].
@ProviderFor(ProvinciaSearchPageController)
const provinciaSearchPageControllerProvider =
    ProvinciaSearchPageControllerFamily();

/// See also [ProvinciaSearchPageController].
class ProvinciaSearchPageControllerFamily
    extends Family<AsyncValue<List<Provincia>>> {
  /// See also [ProvinciaSearchPageController].
  const ProvinciaSearchPageControllerFamily();

  /// See also [ProvinciaSearchPageController].
  ProvinciaSearchPageControllerProvider call(String? paisId) {
    return ProvinciaSearchPageControllerProvider(paisId);
  }

  @override
  ProvinciaSearchPageControllerProvider getProviderOverride(
    covariant ProvinciaSearchPageControllerProvider provider,
  ) {
    return call(provider.paisId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'provinciaSearchPageControllerProvider';
}

/// See also [ProvinciaSearchPageController].
class ProvinciaSearchPageControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ProvinciaSearchPageController,
          List<Provincia>
        > {
  /// See also [ProvinciaSearchPageController].
  ProvinciaSearchPageControllerProvider(String? paisId)
    : this._internal(
        () => ProvinciaSearchPageController()..paisId = paisId,
        from: provinciaSearchPageControllerProvider,
        name: r'provinciaSearchPageControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$provinciaSearchPageControllerHash,
        dependencies: ProvinciaSearchPageControllerFamily._dependencies,
        allTransitiveDependencies:
            ProvinciaSearchPageControllerFamily._allTransitiveDependencies,
        paisId: paisId,
      );

  ProvinciaSearchPageControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.paisId,
  }) : super.internal();

  final String? paisId;

  @override
  FutureOr<List<Provincia>> runNotifierBuild(
    covariant ProvinciaSearchPageController notifier,
  ) {
    return notifier.build(paisId);
  }

  @override
  Override overrideWith(ProvinciaSearchPageController Function() create) {
    return ProviderOverride(
      origin: this,
      override: ProvinciaSearchPageControllerProvider._internal(
        () => create()..paisId = paisId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        paisId: paisId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ProvinciaSearchPageController,
    List<Provincia>
  >
  createElement() {
    return _ProvinciaSearchPageControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is ProvinciaSearchPageControllerProvider &&
        other.paisId == paisId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, paisId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ProvinciaSearchPageControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Provincia>> {
  /// The parameter `paisId` of this provider.
  String? get paisId;
}

class _ProvinciaSearchPageControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ProvinciaSearchPageController,
          List<Provincia>
        >
    with ProvinciaSearchPageControllerRef {
  _ProvinciaSearchPageControllerProviderElement(super.provider);

  @override
  String? get paisId =>
      (origin as ProvinciaSearchPageControllerProvider).paisId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
