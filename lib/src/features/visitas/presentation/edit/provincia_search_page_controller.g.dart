// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ProvinciasSearchQueryParamsController)
const provinciasSearchQueryParamsControllerProvider =
    ProvinciasSearchQueryParamsControllerProvider._();

final class ProvinciasSearchQueryParamsControllerProvider
    extends $NotifierProvider<ProvinciasSearchQueryParamsController, String> {
  const ProvinciasSearchQueryParamsControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'provinciasSearchQueryParamsControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() =>
      _$provinciasSearchQueryParamsControllerHash();

  @$internal
  @override
  ProvinciasSearchQueryParamsController create() =>
      ProvinciasSearchQueryParamsController();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(String value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<String>(value),
    );
  }
}

String _$provinciasSearchQueryParamsControllerHash() =>
    r'5f93c997646456237e54365697d421a8b91c5fbb';

abstract class _$ProvinciasSearchQueryParamsController
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

@ProviderFor(ProvinciaSearchPageController)
const provinciaSearchPageControllerProvider =
    ProvinciaSearchPageControllerFamily._();

final class ProvinciaSearchPageControllerProvider
    extends
        $AsyncNotifierProvider<ProvinciaSearchPageController, List<Provincia>> {
  const ProvinciaSearchPageControllerProvider._({
    required ProvinciaSearchPageControllerFamily super.from,
    required String? super.argument,
  }) : super(
         retry: null,
         name: r'provinciaSearchPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$provinciaSearchPageControllerHash();

  @override
  String toString() {
    return r'provinciaSearchPageControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ProvinciaSearchPageController create() => ProvinciaSearchPageController();

  @override
  bool operator ==(Object other) {
    return other is ProvinciaSearchPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$provinciaSearchPageControllerHash() =>
    r'33727bab51dec495ebd91dd6458c09e2a61529ad';

final class ProvinciaSearchPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ProvinciaSearchPageController,
          AsyncValue<List<Provincia>>,
          List<Provincia>,
          FutureOr<List<Provincia>>,
          String?
        > {
  const ProvinciaSearchPageControllerFamily._()
    : super(
        retry: null,
        name: r'provinciaSearchPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ProvinciaSearchPageControllerProvider call(String? paisId) =>
      ProvinciaSearchPageControllerProvider._(argument: paisId, from: this);

  @override
  String toString() => r'provinciaSearchPageControllerProvider';
}

abstract class _$ProvinciaSearchPageController
    extends $AsyncNotifier<List<Provincia>> {
  late final _$args = ref.$arg as String?;
  String? get paisId => _$args;

  FutureOr<List<Provincia>> build(String? paisId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<List<Provincia>>, List<Provincia>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Provincia>>, List<Provincia>>,
              AsyncValue<List<Provincia>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
