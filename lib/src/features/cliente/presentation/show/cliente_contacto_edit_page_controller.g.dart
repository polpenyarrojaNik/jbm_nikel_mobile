// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_edit_page_controller.dart';

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

String _$ClienteContactoEditPageControllerHash() =>
    r'4506a1811e2986106c2a4bc14f650392e9dc2163';

/// See also [ClienteContactoEditPageController].
class ClienteContactoEditPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoEditPageController, ClienteContactoImpEditPageData> {
  ClienteContactoEditPageControllerProvider(
    this.clienteImpParam,
  ) : super(
          () => ClienteContactoEditPageController()
            ..clienteImpParam = clienteImpParam,
          from: clienteContactoEditPageControllerProvider,
          name: r'clienteContactoEditPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteContactoEditPageControllerHash,
        );

  final ClienteImpParam clienteImpParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoEditPageControllerProvider &&
        other.clienteImpParam == clienteImpParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteImpParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<ClienteContactoImpEditPageData> runNotifierBuild(
    covariant _$ClienteContactoEditPageController notifier,
  ) {
    return notifier.build(
      clienteImpParam,
    );
  }
}

typedef ClienteContactoEditPageControllerRef
    = AutoDisposeAsyncNotifierProviderRef<ClienteContactoImpEditPageData>;

/// See also [ClienteContactoEditPageController].
final clienteContactoEditPageControllerProvider =
    ClienteContactoEditPageControllerFamily();

class ClienteContactoEditPageControllerFamily
    extends Family<AsyncValue<ClienteContactoImpEditPageData>> {
  ClienteContactoEditPageControllerFamily();

  ClienteContactoEditPageControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) {
    return ClienteContactoEditPageControllerProvider(
      clienteImpParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteContactoEditPageController,
      ClienteContactoImpEditPageData> getProviderOverride(
    covariant ClienteContactoEditPageControllerProvider provider,
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
  String? get name => r'clienteContactoEditPageControllerProvider';
}

abstract class _$ClienteContactoEditPageController
    extends BuildlessAutoDisposeAsyncNotifier<ClienteContactoImpEditPageData> {
  late final ClienteImpParam clienteImpParam;

  FutureOr<ClienteContactoImpEditPageData> build(
    ClienteImpParam clienteImpParam,
  );
}
