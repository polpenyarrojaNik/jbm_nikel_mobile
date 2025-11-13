// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_edit_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VisitEditPageController)
const visitEditPageControllerProvider = VisitEditPageControllerFamily._();

final class VisitEditPageControllerProvider
    extends
        $AsyncNotifierProvider<VisitEditPageController, VisitEditScreenData> {
  const VisitEditPageControllerProvider._({
    required VisitEditPageControllerFamily super.from,
    required (String, bool, bool) super.argument,
  }) : super(
         retry: null,
         name: r'visitEditPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$visitEditPageControllerHash();

  @override
  String toString() {
    return r'visitEditPageControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  VisitEditPageController create() => VisitEditPageController();

  @override
  bool operator ==(Object other) {
    return other is VisitEditPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$visitEditPageControllerHash() =>
    r'ea44a540ebad8d7acdef6ac8d4945c22bbc3f516';

final class VisitEditPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          VisitEditPageController,
          AsyncValue<VisitEditScreenData>,
          VisitEditScreenData,
          FutureOr<VisitEditScreenData>,
          (String, bool, bool)
        > {
  const VisitEditPageControllerFamily._()
    : super(
        retry: null,
        name: r'visitEditPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VisitEditPageControllerProvider call(
    String visitaId,
    bool isLocal,
    bool isNew,
  ) => VisitEditPageControllerProvider._(
    argument: (visitaId, isLocal, isNew),
    from: this,
  );

  @override
  String toString() => r'visitEditPageControllerProvider';
}

abstract class _$VisitEditPageController
    extends $AsyncNotifier<VisitEditScreenData> {
  late final _$args = ref.$arg as (String, bool, bool);
  String get visitaId => _$args.$1;
  bool get isLocal => _$args.$2;
  bool get isNew => _$args.$3;

  FutureOr<VisitEditScreenData> build(
    String visitaId,
    bool isLocal,
    bool isNew,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2, _$args.$3);
    final ref =
        this.ref as $Ref<AsyncValue<VisitEditScreenData>, VisitEditScreenData>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<VisitEditScreenData>, VisitEditScreenData>,
              AsyncValue<VisitEditScreenData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
