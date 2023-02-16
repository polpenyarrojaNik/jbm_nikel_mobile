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
    r'2b2c16262cc1247b16c0410464ae961fc0e54433';

/// See also [ClienteContactoDeleteController].
class ClienteContactoDeleteControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoDeleteController, bool> {
  ClienteContactoDeleteControllerProvider(
    this.clienteImpParam,
  ) : super(
          () => ClienteContactoDeleteController()
            ..clienteImpParam = clienteImpParam,
          from: clienteContactoDeleteControllerProvider,
          name: r'clienteContactoDeleteControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteContactoDeleteControllerHash,
        );

  final ClienteImpParam clienteImpParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoDeleteControllerProvider &&
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
    covariant _$ClienteContactoDeleteController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
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
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteContactoDeleteControllerProvider(
      clienteImpParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteContactoDeleteController, bool>
      getProviderOverride(
    covariant ClienteContactoDeleteControllerProvider provider,
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
  String? get name => r'clienteContactoDeleteControllerProvider';
}

abstract class _$ClienteContactoDeleteController
    extends BuildlessAutoDisposeAsyncNotifier<bool> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<bool> build(
    ClienteImpParam clienteImpParam,
  );
}
