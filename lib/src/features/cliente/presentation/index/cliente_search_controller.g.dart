// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_search_controller.dart';

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

String $ClienteIndexScreenControllerHash() =>
    r'9f7924fc492bbbcf99b44cb898e9579d000da373';

/// See also [ClienteIndexScreenController].
final clienteIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<ClienteIndexScreenController, int>(
  ClienteIndexScreenController.new,
  name: r'clienteIndexScreenControllerProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : $ClienteIndexScreenControllerHash,
);
typedef ClienteIndexScreenControllerRef
    = AutoDisposeAsyncNotifierProviderRef<int>;

abstract class _$ClienteIndexScreenController
    extends AutoDisposeAsyncNotifier<int> {
  @override
  FutureOr<int> build();
}

String $ClienteIndexScreenPaginatedControllerHash() =>
    r'7bd995c24a5638026dec0e2a9663e0c07f68a07e';

/// See also [ClienteIndexScreenPaginatedController].
class ClienteIndexScreenPaginatedControllerProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        ClienteIndexScreenPaginatedController, List<Cliente>> {
  ClienteIndexScreenPaginatedControllerProvider({
    required this.page,
  }) : super(
          () => ClienteIndexScreenPaginatedController()..page = page,
          from: clienteIndexScreenPaginatedControllerProvider,
          name: r'clienteIndexScreenPaginatedControllerProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : $ClienteIndexScreenPaginatedControllerHash,
        );

  final int page;

  @override
  bool operator ==(Object other) {
    return other is ClienteIndexScreenPaginatedControllerProvider &&
        other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  FutureOr<List<Cliente>> runNotifierBuild(
    covariant _$ClienteIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(
      page: page,
    );
  }
}

typedef ClienteIndexScreenPaginatedControllerRef
    = AutoDisposeAsyncNotifierProviderRef<List<Cliente>>;

/// See also [ClienteIndexScreenPaginatedController].
final clienteIndexScreenPaginatedControllerProvider =
    ClienteIndexScreenPaginatedControllerFamily();

class ClienteIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Cliente>>> {
  ClienteIndexScreenPaginatedControllerFamily();

  ClienteIndexScreenPaginatedControllerProvider call({
    required int page,
  }) {
    return ClienteIndexScreenPaginatedControllerProvider(
      page: page,
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderImpl<ClienteIndexScreenPaginatedController,
      List<Cliente>> getProviderOverride(
    covariant ClienteIndexScreenPaginatedControllerProvider provider,
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
  String? get name => r'clienteIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Cliente>> {
  late final int page;

  FutureOr<List<Cliente>> build({
    required int page,
  });
}
