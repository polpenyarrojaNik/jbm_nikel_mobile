// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'visita_detalle_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(VisitaDetalleController)
const visitaDetalleControllerProvider = VisitaDetalleControllerFamily._();

final class VisitaDetalleControllerProvider
    extends $AsyncNotifierProvider<VisitaDetalleController, Visita> {
  const VisitaDetalleControllerProvider._({
    required VisitaDetalleControllerFamily super.from,
    required (String, bool, String?) super.argument,
  }) : super(
         retry: null,
         name: r'visitaDetalleControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$visitaDetalleControllerHash();

  @override
  String toString() {
    return r'visitaDetalleControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  VisitaDetalleController create() => VisitaDetalleController();

  @override
  bool operator ==(Object other) {
    return other is VisitaDetalleControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$visitaDetalleControllerHash() =>
    r'1265ee52bba3d1070d15621ace58636a55b80f46';

final class VisitaDetalleControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          VisitaDetalleController,
          AsyncValue<Visita>,
          Visita,
          FutureOr<Visita>,
          (String, bool, String?)
        > {
  const VisitaDetalleControllerFamily._()
    : super(
        retry: null,
        name: r'visitaDetalleControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  VisitaDetalleControllerProvider call(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  ) => VisitaDetalleControllerProvider._(
    argument: (id, isLocal, createVisitaFromClienteId),
    from: this,
  );

  @override
  String toString() => r'visitaDetalleControllerProvider';
}

abstract class _$VisitaDetalleController extends $AsyncNotifier<Visita> {
  late final _$args = ref.$arg as (String, bool, String?);
  String get id => _$args.$1;
  bool get isLocal => _$args.$2;
  String? get createVisitaFromClienteId => _$args.$3;

  FutureOr<Visita> build(
    String id,
    bool isLocal,
    String? createVisitaFromClienteId,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args.$1, _$args.$2, _$args.$3);
    final ref = this.ref as $Ref<AsyncValue<Visita>, Visita>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Visita>, Visita>,
              AsyncValue<Visita>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
