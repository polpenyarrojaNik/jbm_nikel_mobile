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
    r'def709b5fb3b18af715ea3f3e8af292977db85ae';

/// See also [ClienteContactoEditPageController].
class ClienteContactoEditPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteContactoEditPageController, ClienteContactoEditPageData> {
  ClienteContactoEditPageControllerProvider(
    this.clienteContactoEditParam,
  ) : super(
          () => ClienteContactoEditPageController()
            ..clienteContactoEditParam = clienteContactoEditParam,
          from: clienteContactoEditPageControllerProvider,
          name: r'clienteContactoEditPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteContactoEditPageControllerHash,
        );

  final ClienteContactoEditParam clienteContactoEditParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoEditPageControllerProvider &&
        other.clienteContactoEditParam == clienteContactoEditParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteContactoEditParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<ClienteContactoEditPageData> runNotifierBuild(
    covariant _$ClienteContactoEditPageController notifier,
  ) {
    return notifier.build(
      clienteContactoEditParam,
    );
  }
}

typedef ClienteContactoEditPageControllerRef
    = AutoDisposeAsyncNotifierProviderRef<ClienteContactoEditPageData>;

/// See also [ClienteContactoEditPageController].
final clienteContactoEditPageControllerProvider =
    ClienteContactoEditPageControllerFamily();

class ClienteContactoEditPageControllerFamily
    extends Family<AsyncValue<ClienteContactoEditPageData>> {
  ClienteContactoEditPageControllerFamily();

  ClienteContactoEditPageControllerProvider call(
    ClienteContactoEditParam clienteContactoEditParam,
  ) {
    return ClienteContactoEditPageControllerProvider(
      clienteContactoEditParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteContactoEditPageController,
      ClienteContactoEditPageData> getProviderOverride(
    covariant ClienteContactoEditPageControllerProvider provider,
  ) {
    return call(
      provider.clienteContactoEditParam,
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
    extends BuildlessAutoDisposeAsyncNotifier<ClienteContactoEditPageData> {
  late final ClienteContactoEditParam clienteContactoEditParam;

  FutureOr<ClienteContactoEditPageData> build(
    ClienteContactoEditParam clienteContactoEditParam,
  );
}
