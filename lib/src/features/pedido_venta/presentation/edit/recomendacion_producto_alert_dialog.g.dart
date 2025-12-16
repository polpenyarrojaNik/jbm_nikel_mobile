// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recomendacion_producto_alert_dialog.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(RecomendacionProductoAlertDialogController)
const recomendacionProductoAlertDialogControllerProvider =
    RecomendacionProductoAlertDialogControllerFamily._();

final class RecomendacionProductoAlertDialogControllerProvider
    extends
        $AsyncNotifierProvider<
          RecomendacionProductoAlertDialogController,
          List<RecomendacionProducto>
        > {
  const RecomendacionProductoAlertDialogControllerProvider._({
    required RecomendacionProductoAlertDialogControllerFamily super.from,
    required (PedidoLocalParam, String, List<PedidoVentaLinea>) super.argument,
  }) : super(
         retry: null,
         name: r'recomendacionProductoAlertDialogControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$recomendacionProductoAlertDialogControllerHash();

  @override
  String toString() {
    return r'recomendacionProductoAlertDialogControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  RecomendacionProductoAlertDialogController create() =>
      RecomendacionProductoAlertDialogController();

  @override
  bool operator ==(Object other) {
    return other is RecomendacionProductoAlertDialogControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$recomendacionProductoAlertDialogControllerHash() =>
    r'c7999aef8477fdecde9e7ac87a167d91880bf0aa';

final class RecomendacionProductoAlertDialogControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          RecomendacionProductoAlertDialogController,
          AsyncValue<List<RecomendacionProducto>>,
          List<RecomendacionProducto>,
          FutureOr<List<RecomendacionProducto>>,
          (PedidoLocalParam, String, List<PedidoVentaLinea>)
        > {
  const RecomendacionProductoAlertDialogControllerFamily._()
    : super(
        retry: null,
        name: r'recomendacionProductoAlertDialogControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  RecomendacionProductoAlertDialogControllerProvider call(
    PedidoLocalParam pedidoLocalParam,
    String clienteId,
    List<PedidoVentaLinea> pedidoVentaLineaList,
  ) => RecomendacionProductoAlertDialogControllerProvider._(
    argument: (pedidoLocalParam, clienteId, pedidoVentaLineaList),
    from: this,
  );

  @override
  String toString() => r'recomendacionProductoAlertDialogControllerProvider';
}

abstract class _$RecomendacionProductoAlertDialogController
    extends $AsyncNotifier<List<RecomendacionProducto>> {
  late final _$args =
      ref.$arg as (PedidoLocalParam, String, List<PedidoVentaLinea>);
  PedidoLocalParam get pedidoLocalParam => _$args.$1;
  String get clienteId => _$args.$2;
  List<PedidoVentaLinea> get pedidoVentaLineaList => _$args.$3;

  FutureOr<List<RecomendacionProducto>> build(
    PedidoLocalParam pedidoLocalParam,
    String clienteId,
    List<PedidoVentaLinea> pedidoVentaLineaList,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2, _$args.$3);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<RecomendacionProducto>>,
              List<RecomendacionProducto>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<RecomendacionProducto>>,
                List<RecomendacionProducto>
              >,
              AsyncValue<List<RecomendacionProducto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
