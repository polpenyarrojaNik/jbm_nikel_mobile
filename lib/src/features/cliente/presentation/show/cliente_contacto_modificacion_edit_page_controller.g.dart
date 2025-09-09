// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_modificacion_edit_page_controller.dart';

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

String _$ClienteContactoModificacionEditPageControllerHash() =>
    r'36378410bcd1e92a28c7b540f481fcefc340116c';

/// See also [ClienteContactoModificacionEditPageController].
class ClienteContactoModificacionEditPageControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteContactoModificacionEditPageController,
          ContactoModificacionEditPageData
        > {
  ClienteContactoModificacionEditPageControllerProvider(
    this.clienteModificacionParam,
  ) : super(
        () =>
            ClienteContactoModificacionEditPageController()
              ..clienteModificacionParam = clienteModificacionParam,
        from: clienteContactoModificacionEditPageControllerProvider,
        name: r'clienteContactoModificacionEditPageControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$ClienteContactoModificacionEditPageControllerHash,
      );

  final ClienteModificacionParam clienteModificacionParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoModificacionEditPageControllerProvider &&
        other.clienteModificacionParam == clienteModificacionParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteModificacionParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<ContactoModificacionEditPageData> runNotifierBuild(
    covariant _$ClienteContactoModificacionEditPageController notifier,
  ) {
    return notifier.build(clienteModificacionParam);
  }
}

typedef ClienteContactoModificacionEditPageControllerRef =
    AutoDisposeAsyncNotifierProviderRef<ContactoModificacionEditPageData>;

/// See also [ClienteContactoModificacionEditPageController].
final clienteContactoModificacionEditPageControllerProvider =
    ClienteContactoModificacionEditPageControllerFamily();

class ClienteContactoModificacionEditPageControllerFamily
    extends Family<AsyncValue<ContactoModificacionEditPageData>> {
  ClienteContactoModificacionEditPageControllerFamily();

  ClienteContactoModificacionEditPageControllerProvider call(
    ClienteModificacionParam clienteModificacionParam,
  ) {
    return ClienteContactoModificacionEditPageControllerProvider(
      clienteModificacionParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<
    ClienteContactoModificacionEditPageController,
    ContactoModificacionEditPageData
  >
  getProviderOverride(
    covariant ClienteContactoModificacionEditPageControllerProvider provider,
  ) {
    return call(provider.clienteModificacionParam);
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'clienteContactoModificacionEditPageControllerProvider';
}

abstract class _$ClienteContactoModificacionEditPageController
    extends
        BuildlessAutoDisposeAsyncNotifier<ContactoModificacionEditPageData> {
  late final ClienteModificacionParam clienteModificacionParam;

  FutureOr<ContactoModificacionEditPageData> build(
    ClienteModificacionParam clienteModificacionParam,
  );
}
