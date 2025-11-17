// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_seleccionar_pais_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteDireccionSeleccionarPaisSearchQueryParamsController)
const clienteDireccionSeleccionarPaisSearchQueryParamsControllerProvider =
    ClienteDireccionSeleccionarPaisSearchQueryParamsControllerProvider._();

final class ClienteDireccionSeleccionarPaisSearchQueryParamsControllerProvider
    extends
        $NotifierProvider<
          ClienteDireccionSeleccionarPaisSearchQueryParamsController,
          String
        > {
  const ClienteDireccionSeleccionarPaisSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name:
            r'clienteDireccionSeleccionarPaisSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteDireccionSeleccionarPaisSearchQueryParamsControllerHash();

  @$internal
  @override
  ClienteDireccionSeleccionarPaisSearchQueryParamsController create() =>
      ClienteDireccionSeleccionarPaisSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$clienteDireccionSeleccionarPaisSearchQueryParamsControllerHash() =>
    r'ab1058d040b3d223cd424ce85a55702ba203f02d';

abstract class _$ClienteDireccionSeleccionarPaisSearchQueryParamsController
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

@ProviderFor(ClienteDireccionSeleccionarPaisPageController)
const clienteDireccionSeleccionarPaisPageControllerProvider =
    ClienteDireccionSeleccionarPaisPageControllerProvider._();

final class ClienteDireccionSeleccionarPaisPageControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteDireccionSeleccionarPaisPageController,
          List<Pais>
        > {
  const ClienteDireccionSeleccionarPaisPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteDireccionSeleccionarPaisPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteDireccionSeleccionarPaisPageControllerHash();

  @$internal
  @override
  ClienteDireccionSeleccionarPaisPageController create() =>
      ClienteDireccionSeleccionarPaisPageController();
}

String _$clienteDireccionSeleccionarPaisPageControllerHash() =>
    r'5af439460adfee2b3360a350572c881483f53660';

abstract class _$ClienteDireccionSeleccionarPaisPageController
    extends $AsyncNotifier<List<Pais>> {
  FutureOr<List<Pais>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Pais>>, List<Pais>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Pais>>, List<Pais>>,
              AsyncValue<List<Pais>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
