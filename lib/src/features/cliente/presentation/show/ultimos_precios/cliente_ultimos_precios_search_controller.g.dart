// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ultimos_precios_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteUltimosPreciosSearchQueryParamsController)
const clienteUltimosPreciosSearchQueryParamsControllerProvider =
    ClienteUltimosPreciosSearchQueryParamsControllerProvider._();

final class ClienteUltimosPreciosSearchQueryParamsControllerProvider
    extends
        $NotifierProvider<
          ClienteUltimosPreciosSearchQueryParamsController,
          String
        > {
  const ClienteUltimosPreciosSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteUltimosPreciosSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteUltimosPreciosSearchQueryParamsControllerHash();

  @$internal
  @override
  ClienteUltimosPreciosSearchQueryParamsController create() =>
      ClienteUltimosPreciosSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$clienteUltimosPreciosSearchQueryParamsControllerHash() =>
    r'4faea4e4ffaef8198b89f5605c048e8a08487ceb';

abstract class _$ClienteUltimosPreciosSearchQueryParamsController
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

@ProviderFor(ClienteUltimosPreciosIndexScreenController)
const clienteUltimosPreciosIndexScreenControllerProvider =
    ClienteUltimosPreciosIndexScreenControllerFamily._();

final class ClienteUltimosPreciosIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteUltimosPreciosIndexScreenController,
          int
        > {
  const ClienteUltimosPreciosIndexScreenControllerProvider._({
    required ClienteUltimosPreciosIndexScreenControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteUltimosPreciosIndexScreenControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteUltimosPreciosIndexScreenControllerHash();

  @override
  String toString() {
    return r'clienteUltimosPreciosIndexScreenControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteUltimosPreciosIndexScreenController create() =>
      ClienteUltimosPreciosIndexScreenController();

  @override
  bool operator ==(Object other) {
    return other is ClienteUltimosPreciosIndexScreenControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteUltimosPreciosIndexScreenControllerHash() =>
    r'a4322b1069958cb0f3971e7841a405b492461a4f';

final class ClienteUltimosPreciosIndexScreenControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteUltimosPreciosIndexScreenController,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          String
        > {
  const ClienteUltimosPreciosIndexScreenControllerFamily._()
    : super(
        retry: null,
        name: r'clienteUltimosPreciosIndexScreenControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteUltimosPreciosIndexScreenControllerProvider call({
    required String clienteId,
  }) => ClienteUltimosPreciosIndexScreenControllerProvider._(
    argument: clienteId,
    from: this,
  );

  @override
  String toString() => r'clienteUltimosPreciosIndexScreenControllerProvider';
}

abstract class _$ClienteUltimosPreciosIndexScreenController
    extends $AsyncNotifier<int> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<int> build({required String clienteId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(clienteId: _$args);
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

@ProviderFor(ClienteUltimosPreciosIndexScreenPaginatedController)
const clienteUltimosPreciosIndexScreenPaginatedControllerProvider =
    ClienteUltimosPreciosIndexScreenPaginatedControllerFamily._();

final class ClienteUltimosPreciosIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        > {
  const ClienteUltimosPreciosIndexScreenPaginatedControllerProvider._({
    required ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
    super.from,
    required ({int page, String clienteId}) super.argument,
  }) : super(
         retry: null,
         name: r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteUltimosPreciosIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ClienteUltimosPreciosIndexScreenPaginatedController create() =>
      ClienteUltimosPreciosIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other
            is ClienteUltimosPreciosIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'8672b52b3bce1970a48a891774234498ec10b355';

final class ClienteUltimosPreciosIndexScreenPaginatedControllerFamily
    extends $Family
    with
        $ClassFamilyOverride<
          ClienteUltimosPreciosIndexScreenPaginatedController,
          AsyncValue<List<EstadisticasUltimosPrecios>>,
          List<EstadisticasUltimosPrecios>,
          FutureOr<List<EstadisticasUltimosPrecios>>,
          ({int page, String clienteId})
        > {
  const ClienteUltimosPreciosIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteUltimosPreciosIndexScreenPaginatedControllerProvider call({
    required int page,
    required String clienteId,
  }) => ClienteUltimosPreciosIndexScreenPaginatedControllerProvider._(
    argument: (page: page, clienteId: clienteId),
    from: this,
  );

  @override
  String toString() =>
      r'clienteUltimosPreciosIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteUltimosPreciosIndexScreenPaginatedController
    extends $AsyncNotifier<List<EstadisticasUltimosPrecios>> {
  late final _$args = ref.$arg as ({int page, String clienteId});
  int get page => _$args.page;
  String get clienteId => _$args.clienteId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String clienteId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args.page, clienteId: _$args.clienteId);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<EstadisticasUltimosPrecios>>,
              List<EstadisticasUltimosPrecios>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<EstadisticasUltimosPrecios>>,
                List<EstadisticasUltimosPrecios>
              >,
              AsyncValue<List<EstadisticasUltimosPrecios>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
