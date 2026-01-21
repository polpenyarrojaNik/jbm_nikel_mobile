// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_edit_direccion_manual_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(DireccionManualScreenController)
final direccionManualScreenControllerProvider =
    DireccionManualScreenControllerProvider._();

final class DireccionManualScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          DireccionManualScreenController,
          DireccionManualScreenData
        > {
  DireccionManualScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'direccionManualScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$direccionManualScreenControllerHash();

  @$internal
  @override
  DireccionManualScreenController create() => DireccionManualScreenController();
}

String _$direccionManualScreenControllerHash() =>
    r'9317460a69f2b081582caf40c2a946e8a17b976d';

abstract class _$DireccionManualScreenController
    extends $AsyncNotifier<DireccionManualScreenData> {
  FutureOr<DireccionManualScreenData> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<DireccionManualScreenData>,
              DireccionManualScreenData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<DireccionManualScreenData>,
                DireccionManualScreenData
              >,
              AsyncValue<DireccionManualScreenData>,
              Object?,
              Object?
            >;
    element.handleCreate(ref, build);
  }
}
