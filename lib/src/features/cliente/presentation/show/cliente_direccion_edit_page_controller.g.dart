// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_edit_page_controller.dart';

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

String _$ClienteDireccionEditPageControllerHash() =>
    r'ec72a3b814b60158fa39ce58935eb7cb99f6893d';

/// See also [ClienteDireccionEditPageController].
class ClienteDireccionEditPageControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteDireccionEditPageController, ClienteDireccionEditPageData> {
  ClienteDireccionEditPageControllerProvider(
    this.clienteDireccionEditParam,
  ) : super(
          () => ClienteDireccionEditPageController()
            ..clienteDireccionEditParam = clienteDireccionEditParam,
          from: clienteDireccionEditPageControllerProvider,
          name: r'clienteDireccionEditPageControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$ClienteDireccionEditPageControllerHash,
        );

  final ClienteDireccionEditParam clienteDireccionEditParam;

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionEditPageControllerProvider &&
        other.clienteDireccionEditParam == clienteDireccionEditParam;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, clienteDireccionEditParam.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<ClienteDireccionEditPageData> runNotifierBuild(
    covariant _$ClienteDireccionEditPageController notifier,
  ) {
    return notifier.build(
      clienteDireccionEditParam,
    );
  }
}

typedef ClienteDireccionEditPageControllerRef
    = AutoDisposeAsyncNotifierProviderRef<ClienteDireccionEditPageData>;

/// See also [ClienteDireccionEditPageController].
final clienteDireccionEditPageControllerProvider =
    ClienteDireccionEditPageControllerFamily();

class ClienteDireccionEditPageControllerFamily
    extends Family<AsyncValue<ClienteDireccionEditPageData>> {
  ClienteDireccionEditPageControllerFamily();

  ClienteDireccionEditPageControllerProvider call(
    ClienteDireccionEditParam clienteDireccionEditParam,
  ) {
    return ClienteDireccionEditPageControllerProvider(
      clienteDireccionEditParam,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteDireccionEditPageController,
      ClienteDireccionEditPageData> getProviderOverride(
    covariant ClienteDireccionEditPageControllerProvider provider,
  ) {
    return call(
      provider.clienteDireccionEditParam,
    );
  }

  @override
  List<ProviderOrFamily>? get allTransitiveDependencies => null;

  @override
  List<ProviderOrFamily>? get dependencies => null;

  @override
  String? get name => r'clienteDireccionEditPageControllerProvider';
}

abstract class _$ClienteDireccionEditPageController
    extends BuildlessAutoDisposeAsyncNotifier<ClienteDireccionEditPageData> {
  late final ClienteDireccionEditParam clienteDireccionEditParam;

  FutureOr<ClienteDireccionEditPageData> build(
    ClienteDireccionEditParam clienteDireccionEditParam,
  );
}
