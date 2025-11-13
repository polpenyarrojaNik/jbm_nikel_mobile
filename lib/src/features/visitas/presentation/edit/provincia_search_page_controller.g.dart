// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'provincia_search_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

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
    r'd615327c94a2c8bfd5f5240f75c3b4819acbcf7a';

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
