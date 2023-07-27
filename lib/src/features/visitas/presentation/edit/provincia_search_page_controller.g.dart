// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$provinciaSearchPageControllerHash() =>
    r'672504bb03a31aee495a30757234314154b21001';

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

  Future<List<Provincia>> build(
    String? paisId,
  );
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
  ProvinciaSearchPageControllerProvider call(
    String? paisId,
  ) {
    return ProvinciaSearchPageControllerProvider(
      paisId,
    );
  }

  @override
  ProvinciaSearchPageControllerProvider getProviderOverride(
    covariant ProvinciaSearchPageControllerProvider provider,
  ) {
    return call(
      provider.paisId,
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
  String? get name => r'provinciaSearchPageControllerProvider';
}

/// See also [ProvinciaSearchPageController].
class ProvinciaSearchPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<ProvinciaSearchPageController,
        List<Provincia>> {
  /// See also [ProvinciaSearchPageController].
  ProvinciaSearchPageControllerProvider(
    this.paisId,
  ) : super.internal(
          () => ProvinciaSearchPageController()..paisId = paisId,
          from: provinciaSearchPageControllerProvider,
          name: r'provinciaSearchPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$provinciaSearchPageControllerHash,
          dependencies: ProvinciaSearchPageControllerFamily._dependencies,
          allTransitiveDependencies:
              ProvinciaSearchPageControllerFamily._allTransitiveDependencies,
        );

  final String? paisId;

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

  @override
  Future<List<Provincia>> runNotifierBuild(
    covariant ProvinciaSearchPageController notifier,
  ) {
    return notifier.build(
      paisId,
    );
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
