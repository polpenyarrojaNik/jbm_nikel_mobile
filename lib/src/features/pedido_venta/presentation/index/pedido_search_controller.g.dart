// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PedidosSearchQueryParamController)
const pedidosSearchQueryParamControllerProvider =
    PedidosSearchQueryParamControllerProvider._();

final class PedidosSearchQueryParamControllerProvider
    extends $NotifierProvider<PedidosSearchQueryParamController, String> {
  const PedidosSearchQueryParamControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidosSearchQueryParamControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$pedidosSearchQueryParamControllerHash();

  @$internal
  @override
  PedidosSearchQueryParamController create() =>
      PedidosSearchQueryParamController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$pedidosSearchQueryParamControllerHash() =>
    r'073a17048af2037e325993ce334614041a410278';

abstract class _$PedidosSearchQueryParamController extends $Notifier<String> {
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

@ProviderFor(PedidoVentaEstadoQueryParamController)
const pedidoVentaEstadoQueryParamControllerProvider =
    PedidoVentaEstadoQueryParamControllerProvider._();

final class PedidoVentaEstadoQueryParamControllerProvider
    extends
        $NotifierProvider<
          PedidoVentaEstadoQueryParamController,
          PedidoVentaEstado?
        > {
  const PedidoVentaEstadoQueryParamControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaEstadoQueryParamControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$pedidoVentaEstadoQueryParamControllerHash();

  @$internal
  @override
  PedidoVentaEstadoQueryParamController create() =>
      PedidoVentaEstadoQueryParamController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PedidoVentaEstado? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PedidoVentaEstado?>(value),
    );
  }
}

String _$pedidoVentaEstadoQueryParamControllerHash() =>
    r'3478ebb50211c6569768eb9bf5acf366482cc61e';

abstract class _$PedidoVentaEstadoQueryParamController
    extends $Notifier<PedidoVentaEstado?> {
  PedidoVentaEstado? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<PedidoVentaEstado?, PedidoVentaEstado?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<PedidoVentaEstado?, PedidoVentaEstado?>,
              PedidoVentaEstado?,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PedidoVentaIndexScreenController)
const pedidoVentaIndexScreenControllerProvider =
    PedidoVentaIndexScreenControllerProvider._();

final class PedidoVentaIndexScreenControllerProvider
    extends $AsyncNotifierProvider<PedidoVentaIndexScreenController, int> {
  const PedidoVentaIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaIndexScreenControllerHash();

  @$internal
  @override
  PedidoVentaIndexScreenController create() =>
      PedidoVentaIndexScreenController();
}

String _$pedidoVentaIndexScreenControllerHash() =>
    r'b5ab3f3e49d51be709ffb5058ac61c332db59241';

abstract class _$PedidoVentaIndexScreenController extends $AsyncNotifier<int> {
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

@ProviderFor(PedidoVentaIndexScreenPaginatedController)
const pedidoVentaIndexScreenPaginatedControllerProvider =
    PedidoVentaIndexScreenPaginatedControllerFamily._();

final class PedidoVentaIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          PedidoVentaIndexScreenPaginatedController,
          List<PedidoVenta>
        > {
  const PedidoVentaIndexScreenPaginatedControllerProvider._({
    required PedidoVentaIndexScreenPaginatedControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$pedidoVentaIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'pedidoVentaIndexScreenPaginatedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PedidoVentaIndexScreenPaginatedController create() =>
      PedidoVentaIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other is PedidoVentaIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pedidoVentaIndexScreenPaginatedControllerHash() =>
    r'989559e0333fad6330cf669e9394ab3742c7b9d0';

final class PedidoVentaIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PedidoVentaIndexScreenPaginatedController,
          AsyncValue<List<PedidoVenta>>,
          List<PedidoVenta>,
          FutureOr<List<PedidoVenta>>,
          int
        > {
  const PedidoVentaIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PedidoVentaIndexScreenPaginatedControllerProvider call({required int page}) =>
      PedidoVentaIndexScreenPaginatedControllerProvider._(
        argument: page,
        from: this,
      );

  @override
  String toString() => r'pedidoVentaIndexScreenPaginatedControllerProvider';
}

abstract class _$PedidoVentaIndexScreenPaginatedController
    extends $AsyncNotifier<List<PedidoVenta>> {
  late final _$args = ref.$arg as int;
  int get page => _$args;

  FutureOr<List<PedidoVenta>> build({required int page});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<PedidoVenta>>, List<PedidoVenta>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PedidoVenta>>, List<PedidoVenta>>,
              AsyncValue<List<PedidoVenta>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
