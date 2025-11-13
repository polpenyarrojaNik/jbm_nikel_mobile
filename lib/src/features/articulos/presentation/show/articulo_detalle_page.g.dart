// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_detalle_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticuloDetalleAddArticuloABorradorButtonController)
const articuloDetalleAddArticuloABorradorButtonControllerProvider =
    ArticuloDetalleAddArticuloABorradorButtonControllerProvider._();

final class ArticuloDetalleAddArticuloABorradorButtonControllerProvider
    extends
        $NotifierProvider<
          ArticuloDetalleAddArticuloABorradorButtonController,
          void
        > {
  const ArticuloDetalleAddArticuloABorradorButtonControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articuloDetalleAddArticuloABorradorButtonControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$articuloDetalleAddArticuloABorradorButtonControllerHash();

  @$internal
  @override
  ArticuloDetalleAddArticuloABorradorButtonController create() =>
      ArticuloDetalleAddArticuloABorradorButtonController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$articuloDetalleAddArticuloABorradorButtonControllerHash() =>
    r'359327836b4e87bf5ca5a20d045ad953ec89b46b';

abstract class _$ArticuloDetalleAddArticuloABorradorButtonController
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
