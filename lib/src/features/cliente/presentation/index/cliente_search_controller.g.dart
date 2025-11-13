// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteIndexControllerSearchTextParameter)
const clienteIndexControllerSearchTextParameterProvider =
    ClienteIndexControllerSearchTextParameterProvider._();

final class ClienteIndexControllerSearchTextParameterProvider
    extends
        $NotifierProvider<ClienteIndexControllerSearchTextParameter, String> {
  const ClienteIndexControllerSearchTextParameterProvider._()
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
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<String, String>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<String, String>,
              String,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteIndexScreenController)
const clienteIndexScreenControllerProvider =
    ClienteIndexScreenControllerProvider._();

final class ClienteIndexScreenControllerProvider
    extends $AsyncNotifierProvider<ClienteIndexScreenController, int> {
  const ClienteIndexScreenControllerProvider._()
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
    r'ac8f46e2e91e6c5ac2233a9276d0bd4cb8396139';

abstract class _$ClienteIndexScreenController extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteIndexScreenPaginatedController)
const clienteIndexScreenPaginatedControllerProvider =
    ClienteIndexScreenPaginatedControllerFamily._();

final class ClienteIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteIndexScreenPaginatedController,
          List<Cliente>
        > {
  const ClienteIndexScreenPaginatedControllerProvider._({
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
    r'fe170ea50ebaa5455b4169b63835facac14d49c8';

final class ClienteIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteIndexScreenPaginatedController,
          AsyncValue<List<Cliente>>,
          List<Cliente>,
          FutureOr<List<Cliente>>,
          int
        > {
  const ClienteIndexScreenPaginatedControllerFamily._()
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
  void runBuild() {
    final created = build(page: _$args);
    final ref = this.ref as $Ref<AsyncValue<List<Cliente>>, List<Cliente>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Cliente>>, List<Cliente>>,
              AsyncValue<List<Cliente>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
