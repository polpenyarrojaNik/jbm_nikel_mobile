// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// ignore_for_file: avoid_private_typedef_functions, non_constant_identifier_names, subtype_of_sealed_class, invalid_use_of_internal_member, unused_element, constant_identifier_names, unnecessary_raw_strings, library_private_types_in_public_api

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

String $PedidoVentaIndexScreenControllerHash() =>
    r'bcb2dc10f3c39b5c53798e4f8f1e7c6b8665347b';

/// See also [PedidoVentaIndexScreenController].
final pedidoVentaIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<PedidoVentaIndexScreenController, int>(
  PedidoVentaIndexScreenController.new,
  name: r'pedidoVentaIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $PedidoVentaIndexScreenControllerHash,
);
typedef PedidoVentaIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

abstract class _$PedidoVentaIndexScreenController
    extends AutoDisposeAsyncNotifier<int> {
  @override
  FutureOr<int> build();
}

String $PedidoVentaIndexScreenPaginatedControllerHash() =>
    r'8b4ebe2efa4398c9cb2c5bd2560c10ed1ce0d485';

/// See also [PedidoVentaIndexScreenPaginatedController].
class PedidoVentaIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PedidoVentaIndexScreenPaginatedController, List<PedidoVenta>> {
  PedidoVentaIndexScreenPaginatedControllerProvider({
    required this.page,
  }) : super(
          () => PedidoVentaIndexScreenPaginatedController()..page = page,
          from: pedidoVentaIndexScreenPaginatedControllerProvider,
          name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $PedidoVentaIndexScreenPaginatedControllerHash,
        );

  final int page;

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

  @override
  FutureOr<List<PedidoVenta>> runNotifierBuild(
    covariant _$PedidoVentaIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}

typedef PedidoVentaIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<PedidoVenta>>;

/// See also [PedidoVentaIndexScreenPaginatedController].
final pedidoVentaIndexScreenPaginatedControllerProvider =
    PedidoVentaIndexScreenPaginatedControllerFamily();

class PedidoVentaIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<PedidoVenta>>> {
  PedidoVentaIndexScreenPaginatedControllerFamily();

  PedidoVentaIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return PedidoVentaIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<
      PedidoVentaIndexScreenPaginatedController,
      List<PedidoVenta>> getProviderOverride(
    covariant PedidoVentaIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(
      page: provider.page,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'pedidoVentaIndexScreenPaginatedControllerProvider';
}

abstract class _$PedidoVentaIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<PedidoVenta>> {
  late final int page;

  FutureOr<List<PedidoVenta>> build({
    required int page,
  });
}
