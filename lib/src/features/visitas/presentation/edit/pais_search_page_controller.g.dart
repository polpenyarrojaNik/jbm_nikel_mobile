// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pais_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PaisesSearchQueryParamsController)
const paisesSearchQueryParamsControllerProvider =
    PaisesSearchQueryParamsControllerProvider._();

final class PaisesSearchQueryParamsControllerProvider
    extends $NotifierProvider<PaisesSearchQueryParamsController, String> {
  const PaisesSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paisesSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$paisesSearchQueryParamsControllerHash();

  @$internal
  @override
  PaisesSearchQueryParamsController create() =>
      PaisesSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$paisesSearchQueryParamsControllerHash() =>
    r'b93bdab159e1219aff482bf20f1a5f7f2062ee21';

abstract class _$PaisesSearchQueryParamsController extends $Notifier<String> {
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

@ProviderFor(PaisSearchPageController)
const paisSearchPageControllerProvider = PaisSearchPageControllerProvider._();

final class PaisSearchPageControllerProvider
    extends $AsyncNotifierProvider<PaisSearchPageController, List<Pais>> {
  const PaisSearchPageControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'paisSearchPageControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$paisSearchPageControllerHash();

  @$internal
  @override
  PaisSearchPageController create() => PaisSearchPageController();
}

String _$paisSearchPageControllerHash() =>
    r'94423959f5a6756a19fe8b98df12bf3b3afd163a';

abstract class _$PaisSearchPageController extends $AsyncNotifier<List<Pais>> {
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
