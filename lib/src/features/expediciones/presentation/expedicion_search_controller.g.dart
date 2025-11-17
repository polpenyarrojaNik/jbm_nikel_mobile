// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'expedicion_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ExpedicionSearchQueryParamsController)
const expedicionSearchQueryParamsControllerProvider =
    ExpedicionSearchQueryParamsControllerProvider._();

final class ExpedicionSearchQueryParamsControllerProvider
    extends $NotifierProvider<ExpedicionSearchQueryParamsController, String> {
  const ExpedicionSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'expedicionSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$expedicionSearchQueryParamsControllerHash();

  @$internal
  @override
  ExpedicionSearchQueryParamsController create() =>
      ExpedicionSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$expedicionSearchQueryParamsControllerHash() =>
    r'69af89ac4f4ab40bfd0833b29abb83ac81945d00';

abstract class _$ExpedicionSearchQueryParamsController
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
    r'1313107f643ce0c5d05889576104da92e1657bff';

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
