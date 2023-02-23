// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_delete_controller.dart';

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

String _$ClienteDireccionDeleteControllerHash() =>
    r'8cd0d1acbd308ed4e263bebf8dde77d99cf0aa00';

/// See also [ClienteDireccionDeleteController].
class ClienteDireccionDeleteControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteDireccionDeleteController, bool> {
  ClienteDireccionDeleteControllerProvider(
    this.clienteImpParam,
  ) : super(
          () => ClienteDireccionDeleteController()
            ..clienteImpParam = clienteImpParam,
          from: clienteDireccionDeleteControllerProvider,
          name: r'clienteDireccionDeleteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteDireccionDeleteControllerHash,
        );

  final ClienteImpParam clienteImpParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionDeleteControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<bool> runNotifierBuild(
    covariant _$ClienteDireccionDeleteController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
    );
  }
}

typedef ClienteDireccionDeleteControllerRef
    = AutoDisposeAsyncNotifierProviderRef<bool>;

/// See also [ClienteDireccionDeleteController].
final clienteDireccionDeleteControllerProvider =
    ClienteDireccionDeleteControllerFamily();

class ClienteDireccionDeleteControllerFamily extends Family<AsyncValue<bool>> {
  ClienteDireccionDeleteControllerFamily();

  ClienteDireccionDeleteControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteDireccionDeleteControllerProvider(
      clienteImpParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteDireccionDeleteController, bool>
      getProviderOverride(
    covariant ClienteDireccionDeleteControllerProvider provider,
  ) {
    return call(
      provider.clienteImpParam,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'clienteDireccionDeleteControllerProvider';
}

abstract class _$ClienteDireccionDeleteController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<bool> build(
    ClienteImpParam clienteImpParam,
  );
}
