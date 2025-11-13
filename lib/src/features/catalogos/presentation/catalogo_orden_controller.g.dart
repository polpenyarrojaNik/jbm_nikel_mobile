// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_orden_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CatalogoOrdenController)
const catalogoOrdenControllerProvider = CatalogoOrdenControllerProvider._();

final class CatalogoOrdenControllerProvider
    extends $NotifierProvider<CatalogoOrdenController, void> {
  const CatalogoOrdenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'catalogoOrdenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$catalogoOrdenControllerHash();

  @$internal
  @override
  CatalogoOrdenController create() => CatalogoOrdenController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$catalogoOrdenControllerHash() =>
    r'f4ebfb8ccf2fbe263b8d37879a707dfd72b468df';

abstract class _$CatalogoOrdenController extends $Notifier<void> {
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
