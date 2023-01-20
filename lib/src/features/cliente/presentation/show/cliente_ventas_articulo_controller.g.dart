// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ventas_articulo_controller.dart';

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

String _$ClienteVentasArticuloIndexScreenPaginatedControllerHash() =>
    r'1893290fa7827b98c106fef93e4838df08c82313';

/// See also [ClienteVentasArticuloIndexScreenPaginatedController].
class ClienteVentasArticuloIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteVentasArticuloIndexScreenPaginatedController,
        List<ClienteVentasArticulo>> {
  ClienteVentasArticuloIndexScreenPaginatedControllerProvider({
    required this.clienteId,
  }) : super(
          () => ClienteVentasArticuloIndexScreenPaginatedController()
            ..clienteId = clienteId,
          from: clienteVentasArticuloIndexScreenPaginatedControllerProvider,
          name: r'clienteVentasArticuloIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteVentasArticuloIndexScreenPaginatedControllerHash,
        );

  final String clienteId;

  @override
  bool operator ==(Object other) {
    return other
            is ClienteVentasArticuloIndexScreenPaginatedControllerProvider &&
        other.clienteId == clienteId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteId.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<ClienteVentasArticulo>> runNotifierBuild(
    covariant _$ClienteVentasArticuloIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      clienteId: clienteId,
    );
  }
}

typedef ClienteVentasArticuloIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<ClienteVentasArticulo>>;

/// See also [ClienteVentasArticuloIndexScreenPaginatedController].
final clienteVentasArticuloIndexScreenPaginatedControllerProvider =
    ClienteVentasArticuloIndexScreenPaginatedControllerFamily();

class ClienteVentasArticuloIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<ClienteVentasArticulo>>> {
  ClienteVentasArticuloIndexScreenPaginatedControllerFamily();

  ClienteVentasArticuloIndexScreenPaginatedControllerProvider call({
    required String clienteId,
  }) {
    return ClienteVentasArticuloIndexScreenPaginatedControllerProvider(
      clienteId: clienteId,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<
      ClienteVentasArticuloIndexScreenPaginatedController,
      List<ClienteVentasArticulo>> getProviderOverride(
    covariant ClienteVentasArticuloIndexScreenPaginatedControllerProvider
        provider,
  ) {
    return call(
      clienteId: provider.clienteId,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name =>
      r'clienteVentasArticuloIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteVentasArticuloIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<ClienteVentasArticulo>> {
  late final String clienteId;

  FutureOr<List<ClienteVentasArticulo>> build({
    required String clienteId,
  });
}
