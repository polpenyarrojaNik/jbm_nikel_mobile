// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_edit_import_excel_screen.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PedidoVentaEditImportExcelScreenController)
const pedidoVentaEditImportExcelScreenControllerProvider =
    PedidoVentaEditImportExcelScreenControllerProvider._();

final class PedidoVentaEditImportExcelScreenControllerProvider
    extends
        $NotifierProvider<PedidoVentaEditImportExcelScreenController, void> {
  const PedidoVentaEditImportExcelScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaEditImportExcelScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$pedidoVentaEditImportExcelScreenControllerHash();

  @$internal
  @override
  PedidoVentaEditImportExcelScreenController create() =>
      PedidoVentaEditImportExcelScreenController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$pedidoVentaEditImportExcelScreenControllerHash() =>
    r'8a957bbdbd063e73b2b25fea327e448a3c51dc7d';

abstract class _$PedidoVentaEditImportExcelScreenController
    extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}
