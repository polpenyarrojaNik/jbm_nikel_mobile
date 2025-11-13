// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_seleccionar_pais_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
    r'5566c490aa292470bb3f5b255e42b7981b0823df';

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
