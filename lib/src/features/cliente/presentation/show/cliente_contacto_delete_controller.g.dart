// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_delete_controller.dart';

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

String _$ClienteContactoDeleteControllerHash() =>
    r'c2a873502ac873097d7d475db1a67e84075da45e';

/// See also [ClienteContactoDeleteController].
class ClienteContactoDeleteControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoDeleteController, bool> {
  ClienteContactoDeleteControllerProvider(
    this.clienteModificacionParam,
  ) : super(
          () => ClienteContactoDeleteController()
            ..clienteModificacionParam = clienteModificacionParam,
          from: clienteContactoDeleteControllerProvider,
          name: r'clienteContactoDeleteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteContactoDeleteControllerHash,
        );

  final ClienteModificacionParam clienteModificacionParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoDeleteControllerProvider &&
        other.clienteModificacionParam == clienteModificacionParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteModificacionParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<bool> runNotifierBuild(
    covariant _$ClienteContactoDeleteController notifier,
  ) {
    return notifier.build(
      clienteModificacionParam,
    );
  }
}

typedef ClienteContactoDeleteControllerRef
    = AutoDisposeAsyncNotifierProviderRef<bool>;

/// See also [ClienteContactoDeleteController].
final clienteContactoDeleteControllerProvider =
    ClienteContactoDeleteControllerFamily();

class ClienteContactoDeleteControllerFamily extends Family<AsyncValue<bool>> {
  ClienteContactoDeleteControllerFamily();

  ClienteContactoDeleteControllerProvider call(
    ClienteModificacionParam clienteModificacionParam,
  ) {
    return ClienteContactoDeleteControllerProvider(
      clienteModificacionParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteContactoDeleteController, bool>
      getProviderOverride(
    covariant ClienteContactoDeleteControllerProvider provider,
  ) {
    return call(
      provider.clienteModificacionParam,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'clienteContactoDeleteControllerProvider';
}

abstract class _$ClienteContactoDeleteController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final ClienteModificacionParam clienteModificacionParam;

  FutureOr<bool> build(
    ClienteModificacionParam clienteModificacionParam,
  );
}
