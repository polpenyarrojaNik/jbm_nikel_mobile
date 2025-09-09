// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$clienteIndexControllerSearchTextParameterHash() =>
    r'32ff9340ee059291b84608d81f052dc3a3fae6ae';

/// See also [ClienteIndexControllerSearchTextParameter].
@ProviderFor(ClienteIndexControllerSearchTextParameter)
final clienteIndexControllerSearchTextParameterProvider =
    AutoDisposeNotifierProvider<
      ClienteIndexControllerSearchTextParameter,
      String
    >.internal(
      ClienteIndexControllerSearchTextParameter.new,
      name: r'clienteIndexControllerSearchTextParameterProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clienteIndexControllerSearchTextParameterHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ClienteIndexControllerSearchTextParameter =
    AutoDisposeNotifier<String>;
String _$clienteIndexScreenControllerHash() =>
    r'ac8f46e2e91e6c5ac2233a9276d0bd4cb8396139';

/// See also [ClienteIndexScreenController].
@ProviderFor(ClienteIndexScreenController)
final clienteIndexScreenControllerProvider =
    AutoDisposeAsyncNotifierProvider<
      ClienteIndexScreenController,
      int
    >.internal(
      ClienteIndexScreenController.new,
      name: r'clienteIndexScreenControllerProvider',
      debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$clienteIndexScreenControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ClienteIndexScreenController = AutoDisposeAsyncNotifier<int>;
String _$clienteIndexScreenPaginatedControllerHash() =>
    r'fe170ea50ebaa5455b4169b63835facac14d49c8';

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

abstract class _$ClienteIndexScreenPaginatedController
    extends BuildlessAutoDisposeAsyncNotifier<List<Cliente>> {
  late final int page;

  FutureOr<List<Cliente>> build({required int page});
}

/// See also [ClienteIndexScreenPaginatedController].
@ProviderFor(ClienteIndexScreenPaginatedController)
const clienteIndexScreenPaginatedControllerProvider =
    ClienteIndexScreenPaginatedControllerFamily();

/// See also [ClienteIndexScreenPaginatedController].
class ClienteIndexScreenPaginatedControllerFamily
    extends Family<AsyncValue<List<Cliente>>> {
  /// See also [ClienteIndexScreenPaginatedController].
  const ClienteIndexScreenPaginatedControllerFamily();

  /// See also [ClienteIndexScreenPaginatedController].
  ClienteIndexScreenPaginatedControllerProvider call({required int page}) {
    return ClienteIndexScreenPaginatedControllerProvider(page: page);
  }

  @override
  ClienteIndexScreenPaginatedControllerProvider getProviderOverride(
    covariant ClienteIndexScreenPaginatedControllerProvider provider,
  ) {
    return call(page: provider.page);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'clienteIndexScreenPaginatedControllerProvider';
}

/// See also [ClienteIndexScreenPaginatedController].
class ClienteIndexScreenPaginatedControllerProvider
    extends
        AutoDisposeAsyncNotifierProviderImpl<
          ClienteIndexScreenPaginatedController,
          List<Cliente>
        > {
  /// See also [ClienteIndexScreenPaginatedController].
  ClienteIndexScreenPaginatedControllerProvider({required int page})
    : this._internal(
        () => ClienteIndexScreenPaginatedController()..page = page,
        from: clienteIndexScreenPaginatedControllerProvider,
        name: r'clienteIndexScreenPaginatedControllerProvider',
        debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
            ? null
            : _$clienteIndexScreenPaginatedControllerHash,
        dependencies: ClienteIndexScreenPaginatedControllerFamily._dependencies,
        allTransitiveDependencies: ClienteIndexScreenPaginatedControllerFamily
            ._allTransitiveDependencies,
        page: page,
      );

  ClienteIndexScreenPaginatedControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  FutureOr<List<Cliente>> runNotifierBuild(
    covariant ClienteIndexScreenPaginatedController notifier,
  ) {
    return notifier.build(page: page);
  }

  @override
  Override overrideWith(
    ClienteIndexScreenPaginatedController Function() create,
  ) {
    return ProviderOverride(
      origin: this,
      override: ClienteIndexScreenPaginatedControllerProvider._internal(
        () => create()..page = page,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<
    ClienteIndexScreenPaginatedController,
    List<Cliente>
  >
  createElement() {
    return _ClienteIndexScreenPaginatedControllerProviderElement(this);
  }

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
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin ClienteIndexScreenPaginatedControllerRef
    on AutoDisposeAsyncNotifierProviderRef<List<Cliente>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _ClienteIndexScreenPaginatedControllerProviderElement
    extends
        AutoDisposeAsyncNotifierProviderElement<
          ClienteIndexScreenPaginatedController,
          List<Cliente>
        >
    with ClienteIndexScreenPaginatedControllerRef {
  _ClienteIndexScreenPaginatedControllerProviderElement(super.provider);

  @override
  int get page =>
      (origin as ClienteIndexScreenPaginatedControllerProvider).page;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
