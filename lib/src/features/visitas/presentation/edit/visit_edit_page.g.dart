// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visit_edit_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VisitEditPageController)
final visitEditPageControllerProvider = VisitEditPageControllerFamily._();

final class VisitEditPageControllerProvider
    extends
        $AsyncNotifierProvider<VisitEditPageController, VisitEditScreenData> {
  VisitEditPageControllerProvider._({
    required VisitEditPageControllerFamily super.from,
    required (String, bool, bool, String?) super.argument,
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
    r'c09c14cc003a6a864585d6241cc3ba1a5cd35a37';

final class VisitEditPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          VisitEditPageController,
          AsyncValue<VisitEditScreenData>,
          VisitEditScreenData,
          FutureOr<VisitEditScreenData>,
          (String, bool, bool, String?)
        > {
  VisitEditPageControllerFamily._()
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
    String? createVisitaFromClienteId,
  ) => VisitEditPageControllerProvider._(
    argument: (visitaId, isLocal, isNew, createVisitaFromClienteId),
    from: this,
  );

  @override
  String toString() => r'visitEditPageControllerProvider';
}

abstract class _$VisitEditPageController
    extends $AsyncNotifier<VisitEditScreenData> {
  late final _$args = ref.$arg as (String, bool, bool, String?);
  String get visitaId => _$args.$1;
  bool get isLocal => _$args.$2;
  bool get isNew => _$args.$3;
  String? get createVisitaFromClienteId => _$args.$4;

  FutureOr<VisitEditScreenData> build(
    String visitaId,
    bool isLocal,
    bool isNew,
    String? createVisitaFromClienteId,
  );
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
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
    return element.handleCreate(
      ref,
      () => build(_$args.$1, _$args.$2, _$args.$3, _$args.$4),
    );
  }
}
