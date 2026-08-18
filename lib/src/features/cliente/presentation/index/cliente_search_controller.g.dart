// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteIndexControllerSearchTextParameter)
final clienteIndexControllerSearchTextParameterProvider =
    ClienteIndexControllerSearchTextParameterProvider._();

final class ClienteIndexControllerSearchTextParameterProvider
    extends
        $NotifierProvider<ClienteIndexControllerSearchTextParameter, String> {
  ClienteIndexControllerSearchTextParameterProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteIndexControllerSearchTextParameterProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteIndexControllerSearchTextParameterHash();

  @$internal
  @override
  ClienteIndexControllerSearchTextParameter create() =>
      ClienteIndexControllerSearchTextParameter();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$clienteIndexControllerSearchTextParameterHash() =>
    r'32ff9340ee059291b84608d81f052dc3a3fae6ae';

abstract class _$ClienteIndexControllerSearchTextParameter
    extends $Notifier<String> {
  String build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(ClientesEstadoFilterController)
final clientesEstadoFilterControllerProvider =
    ClientesEstadoFilterControllerProvider._();

final class ClientesEstadoFilterControllerProvider
    extends $NotifierProvider<ClientesEstadoFilterController, ClienteEstado> {
  ClientesEstadoFilterControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clientesEstadoFilterControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clientesEstadoFilterControllerHash();

  @$internal
  @override
  ClientesEstadoFilterController create() => ClientesEstadoFilterController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteEstado value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteEstado>(value),
    );
  }
}

String _$clientesEstadoFilterControllerHash() =>
    r'b1a3bd1588c40384b31cb878f9565e4a7e5c3cb9';

abstract class _$ClientesEstadoFilterController
    extends $Notifier<ClienteEstado> {
  ClienteEstado build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ClienteEstado, ClienteEstado>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ClienteEstado, ClienteEstado>,
              ClienteEstado,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(ClienteIndexScreenController)
final clienteIndexScreenControllerProvider =
    ClienteIndexScreenControllerProvider._();

final class ClienteIndexScreenControllerProvider
    extends $AsyncNotifierProvider<ClienteIndexScreenController, int> {
  ClienteIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteIndexScreenControllerHash();

  @$internal
  @override
  ClienteIndexScreenController create() => ClienteIndexScreenController();
}

String _$clienteIndexScreenControllerHash() =>
    r'dd5c6c7d4aff2262e7c74927e003bd8874972f90';

abstract class _$ClienteIndexScreenController extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(ClienteIndexScreenPaginatedController)
final clienteIndexScreenPaginatedControllerProvider =
    ClienteIndexScreenPaginatedControllerFamily._();

final class ClienteIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteIndexScreenPaginatedController,
          List<Cliente>
        > {
  ClienteIndexScreenPaginatedControllerProvider._({
    required ClienteIndexScreenPaginatedControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'clienteIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'clienteIndexScreenPaginatedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteIndexScreenPaginatedController create() =>
      ClienteIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other is ClienteIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteIndexScreenPaginatedControllerHash() =>
    r'428d4d1a605e9cb8ebc765d2eb338140470dcf83';

final class ClienteIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteIndexScreenPaginatedController,
          AsyncValue<List<Cliente>>,
          List<Cliente>,
          FutureOr<List<Cliente>>,
          int
        > {
  ClienteIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'clienteIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteIndexScreenPaginatedControllerProvider call({required int page}) =>
      ClienteIndexScreenPaginatedControllerProvider._(
        argument: page,
        from: this,
      );

  @override
  String toString() => r'clienteIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteIndexScreenPaginatedController
    extends $AsyncNotifier<List<Cliente>> {
  late final _$args = ref.$arg as int;
  int get page => _$args;

  FutureOr<List<Cliente>> build({required int page});
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<List<Cliente>>, List<Cliente>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Cliente>>, List<Cliente>>,
              AsyncValue<List<Cliente>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(page: _$args));
  }
}
