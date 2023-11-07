// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$visitaIndexScreenControllerHash() =>
    r'6aa47f60efab2d24a7ea4a12cb55560850c78eec';

/// See also [VisitaIndexScreenController].
@ProviderFor(VisitaIndexScreenController)
final visitaIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<VisitaIndexScreenController, int>.internal(
  VisitaIndexScreenController.new,
  name: r'visitaIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$visitaIndexScreenControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$VisitaIndexScreenController = AutoDisposeAsyncNotifier<int>;
String _$visitaIndexScreenPaginatedControllerHash() =>
    r'652caea9461bb21cd5cf3b6e0e79c11f2f58da92';

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

abstract class _$VisitaIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Visita>> {
  late final int page;

  FutureOr<List<Visita>> build({
    required int page,
  });
}

/// See also [VisitaIndexScreenPaginatedController].
@ProviderFor(VisitaIndexScreenPaginatedController)
const visitaIndexScreenPaginatedControllerProvider =
    VisitaIndexScreenPaginatedControllerFamily();

/// See also [VisitaIndexScreenPaginatedController].
class VisitaIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Visita>>> {
  /// See also [VisitaIndexScreenPaginatedController].
  const VisitaIndexScreenPaginatedControllerFamily();

  /// See also [VisitaIndexScreenPaginatedController].
  VisitaIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return VisitaIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  VisitaIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant VisitaIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'visitaIndexScreenPaginatedControllerProvider';
}

/// See also [VisitaIndexScreenPaginatedController].
class VisitaIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        VisitaIndexScreenPaginatedController, List<Visita>> {
  /// See also [VisitaIndexScreenPaginatedController].
  VisitaIndexScreenPaginatedControllerProvider({
    required int page,
  }) : this._internal(
          () => VisitaIndexScreenPaginatedController()..page = page,
          from: visitaIndexScreenPaginatedControllerProvider,
          name: r'visitaIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$visitaIndexScreenPaginatedControllerHash,
          dependencies:
              VisitaIndexScreenPaginatedControllerFamily._dependencies,
          allTransitiveDependencies: VisitaIndexScreenPaginatedControllerFamily
              ._allTransitiveDependencies,
          page: page,
        );

  VisitaIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<List<Visita>> runNotifierBuild(
    covariant VisitaIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(
      VisitaIndexScreenPaginatedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: VisitaIndexScreenPaginatedControllerProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<VisitaIndexScreenPaginatedController,
      List<Visita>> createElement() {
    return _VisitaIndexScreenPaginatedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is VisitaIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin VisitaIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Visita>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _VisitaIndexScreenPaginatedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        VisitaIndexScreenPaginatedController,
        List<Visita>> with VisitaIndexScreenPaginatedControllerRef {
  _VisitaIndexScreenPaginatedControllerProviderElement(super.provider);

  @override
  int get page => (origin as VisitaIndexScreenPaginatedControllerProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
