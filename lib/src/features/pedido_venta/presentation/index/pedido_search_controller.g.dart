// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$pedidoVentaIndexScreenControllerHash() =>
    r'bcb2dc10f3c39b5c53798e4f8f1e7c6b8665347b';

/// See also [PedidoVentaIndexScreenController].
@ProviderFor(PedidoVentaIndexScreenController)
final pedidoVentaIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<PedidoVentaIndexScreenController,
        int>.internal(
  PedidoVentaIndexScreenController.new,
  name: r'pedidoVentaIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pedidoVentaIndexScreenControllerHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$PedidoVentaIndexScreenController = AutoDisposeAsyncNotifier<int>;
String _$pedidoVentaIndexScreenPaginatedControllerHash() =>
    r'98ec005bc9b56d783b01ce8ae8e34de3b1c13043';

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

abstract class _$PedidoVentaIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<PedidoVenta>> {
  late final int page;

  FutureOr<List<PedidoVenta>> build({
    required int page,
  });
}

/// See also [PedidoVentaIndexScreenPaginatedController].
@ProviderFor(PedidoVentaIndexScreenPaginatedController)
const pedidoVentaIndexScreenPaginatedControllerProvider =
    PedidoVentaIndexScreenPaginatedControllerFamily();

/// See also [PedidoVentaIndexScreenPaginatedController].
class PedidoVentaIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<PedidoVenta>>> {
  /// See also [PedidoVentaIndexScreenPaginatedController].
  const PedidoVentaIndexScreenPaginatedControllerFamily();

  /// See also [PedidoVentaIndexScreenPaginatedController].
  PedidoVentaIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return PedidoVentaIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  PedidoVentaIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant PedidoVentaIndexScreenPaginatedControllerProvider provider,
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
  String? get name => r'pedidoVentaIndexScreenPaginatedControllerProvider';
}

/// See also [PedidoVentaIndexScreenPaginatedController].
class PedidoVentaIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PedidoVentaIndexScreenPaginatedController, List<PedidoVenta>> {
  /// See also [PedidoVentaIndexScreenPaginatedController].
  PedidoVentaIndexScreenPaginatedControllerProvider({
    required int page,
  }) : this._internal(
          () => PedidoVentaIndexScreenPaginatedController()..page = page,
          from: pedidoVentaIndexScreenPaginatedControllerProvider,
          name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$pedidoVentaIndexScreenPaginatedControllerHash,
          dependencies:
              PedidoVentaIndexScreenPaginatedControllerFamily._dependencies,
          allTransitiveDependencies:
              PedidoVentaIndexScreenPaginatedControllerFamily
                  ._allTransitiveDependencies,
          page: page,
        );

  PedidoVentaIndexScreenPaginatedControllerProvider._internal(
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
  FutureOr<List<PedidoVenta>> runNotifierBuild(
    covariant PedidoVentaIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }

  @override
  Override overrideWith(
      PedidoVentaIndexScreenPaginatedController Function() create) {
    return ProviderOverride(
      origin: this,
      override: PedidoVentaIndexScreenPaginatedControllerProvider._internal(
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
  AutoDisposeAsyncNotifierProviderElement<
      PedidoVentaIndexScreenPaginatedController,
      List<PedidoVenta>> createElement() {
    return _PedidoVentaIndexScreenPaginatedControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PedidoVentaIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin PedidoVentaIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<PedidoVenta>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PedidoVentaIndexScreenPaginatedControllerProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PedidoVentaIndexScreenPaginatedController,
        List<PedidoVenta>> with PedidoVentaIndexScreenPaginatedControllerRef {
  _PedidoVentaIndexScreenPaginatedControllerProviderElement(super.provider);

  @override
  int get page =>
      (origin as PedidoVentaIndexScreenPaginatedControllerProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
