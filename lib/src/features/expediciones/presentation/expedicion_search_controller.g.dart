// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedicion_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExpedicionIndexScreenController)
const expedicionIndexScreenControllerProvider =
    ExpedicionIndexScreenControllerProvider._();

final class ExpedicionIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          ExpedicionIndexScreenController,
          List<Expedicion>
        > {
  const ExpedicionIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expedicionIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$expedicionIndexScreenControllerHash();

  @$internal
  @override
  ExpedicionIndexScreenController create() => ExpedicionIndexScreenController();
}

String _$expedicionIndexScreenControllerHash() =>
    r'4cf1613ac20c93cc1130ea36ff88a5071b57b5ae';

abstract class _$ExpedicionIndexScreenController
    extends $AsyncNotifier<List<Expedicion>> {
  FutureOr<List<Expedicion>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Expedicion>>, List<Expedicion>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Expedicion>>, List<Expedicion>>,
              AsyncValue<List<Expedicion>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
