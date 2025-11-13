// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VisitaIndexScreenController)
const visitaIndexScreenControllerProvider =
    VisitaIndexScreenControllerProvider._();

final class VisitaIndexScreenControllerProvider
    extends $AsyncNotifierProvider<VisitaIndexScreenController, int> {
  const VisitaIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'visitaIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$visitaIndexScreenControllerHash();

  @$internal
  @override
  VisitaIndexScreenController create() => VisitaIndexScreenController();
}

String _$visitaIndexScreenControllerHash() =>
    r'6aa47f60efab2d24a7ea4a12cb55560850c78eec';

abstract class _$VisitaIndexScreenController extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(VisitaIndexScreenPaginatedController)
const visitaIndexScreenPaginatedControllerProvider =
    VisitaIndexScreenPaginatedControllerFamily._();

final class VisitaIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          VisitaIndexScreenPaginatedController,
          List<Visita>
        > {
  const VisitaIndexScreenPaginatedControllerProvider._({
    required VisitaIndexScreenPaginatedControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'visitaIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$visitaIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'visitaIndexScreenPaginatedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  VisitaIndexScreenPaginatedController create() =>
      VisitaIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other is VisitaIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$visitaIndexScreenPaginatedControllerHash() =>
    r'652caea9461bb21cd5cf3b6e0e79c11f2f58da92';

final class VisitaIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          VisitaIndexScreenPaginatedController,
          AsyncValue<List<Visita>>,
          List<Visita>,
          FutureOr<List<Visita>>,
          int
        > {
  const VisitaIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'visitaIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VisitaIndexScreenPaginatedControllerProvider call({required int page}) =>
      VisitaIndexScreenPaginatedControllerProvider._(
        argument: page,
        from: this,
      );

  @override
  String toString() => r'visitaIndexScreenPaginatedControllerProvider';
}

abstract class _$VisitaIndexScreenPaginatedController
    extends $AsyncNotifier<List<Visita>> {
  late final _$args = ref.$arg as int;
  int get page => _$args;

  FutureOr<List<Visita>> build({required int page});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args);
    final ref = this.ref as $Ref<AsyncValue<List<Visita>>, List<Visita>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Visita>>, List<Visita>>,
              AsyncValue<List<Visita>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
