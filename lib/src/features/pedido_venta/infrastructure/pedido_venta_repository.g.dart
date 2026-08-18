// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_venta_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(pedidoVentaRepository)
final pedidoVentaRepositoryProvider = PedidoVentaRepositoryProvider._();

final class PedidoVentaRepositoryProvider
    extends
        $FunctionalProvider<
          PedidoVentaRepository,
          PedidoVentaRepository,
          PedidoVentaRepository
        >
    with $Provider<PedidoVentaRepository> {
  PedidoVentaRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaRepositoryHash();

  @$internal
  @override
  $ProviderElement<PedidoVentaRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  PedidoVentaRepository create(Ref ref) {
    return pedidoVentaRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PedidoVentaRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PedidoVentaRepository>(value),
    );
  }
}

String _$pedidoVentaRepositoryHash() =>
    r'c9b4acd875ec893cf9055f201bd50544138cf60b';

@ProviderFor(PedidoVentaById)
final pedidoVentaByIdProvider = PedidoVentaByIdFamily._();

final class PedidoVentaByIdProvider
    extends $AsyncNotifierProvider<PedidoVentaById, PedidoVenta> {
  PedidoVentaByIdProvider._({
    required PedidoVentaByIdFamily super.from,
    required PedidoLocalParam super.argument,
  }) : super(
         retry: null,
         name: r'pedidoVentaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaByIdHash();

  @override
  String toString() {
    return r'pedidoVentaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PedidoVentaById create() => PedidoVentaById();

  @override
  bool operator ==(Object other) {
    return other is PedidoVentaByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pedidoVentaByIdHash() => r'163fcecadccd44df9d4846f514940e0889725063';

final class PedidoVentaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          PedidoVentaById,
          AsyncValue<PedidoVenta>,
          PedidoVenta,
          FutureOr<PedidoVenta>,
          PedidoLocalParam
        > {
  PedidoVentaByIdFamily._()
    : super(
        retry: null,
        name: r'pedidoVentaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PedidoVentaByIdProvider call(PedidoLocalParam pedidoLocalParam) =>
      PedidoVentaByIdProvider._(argument: pedidoLocalParam, from: this);

  @override
  String toString() => r'pedidoVentaByIdProvider';
}

abstract class _$PedidoVentaById extends $AsyncNotifier<PedidoVenta> {
  late final _$args = ref.$arg as PedidoLocalParam;
  PedidoLocalParam get pedidoLocalParam => _$args;

  FutureOr<PedidoVenta> build(PedidoLocalParam pedidoLocalParam);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<PedidoVenta>, PedidoVenta>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<PedidoVenta>, PedidoVenta>,
              AsyncValue<PedidoVenta>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(PedidoVentaAlbaranById)
final pedidoVentaAlbaranByIdProvider = PedidoVentaAlbaranByIdFamily._();

final class PedidoVentaAlbaranByIdProvider
    extends
        $AsyncNotifierProvider<PedidoVentaAlbaranById, List<PedidoAlbaran>> {
  PedidoVentaAlbaranByIdProvider._({
    required PedidoVentaAlbaranByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pedidoVentaAlbaranByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaAlbaranByIdHash();

  @override
  String toString() {
    return r'pedidoVentaAlbaranByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PedidoVentaAlbaranById create() => PedidoVentaAlbaranById();

  @override
  bool operator ==(Object other) {
    return other is PedidoVentaAlbaranByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pedidoVentaAlbaranByIdHash() =>
    r'd5d29c3fa2415e704e0a45e43232928015988f74';

final class PedidoVentaAlbaranByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          PedidoVentaAlbaranById,
          AsyncValue<List<PedidoAlbaran>>,
          List<PedidoAlbaran>,
          FutureOr<List<PedidoAlbaran>>,
          String
        > {
  PedidoVentaAlbaranByIdFamily._()
    : super(
        retry: null,
        name: r'pedidoVentaAlbaranByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PedidoVentaAlbaranByIdProvider call(String pedidoVentaId) =>
      PedidoVentaAlbaranByIdProvider._(argument: pedidoVentaId, from: this);

  @override
  String toString() => r'pedidoVentaAlbaranByIdProvider';
}

abstract class _$PedidoVentaAlbaranById
    extends $AsyncNotifier<List<PedidoAlbaran>> {
  late final _$args = ref.$arg as String;
  String get pedidoVentaId => _$args;

  FutureOr<List<PedidoAlbaran>> build(String pedidoVentaId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<PedidoAlbaran>>, List<PedidoAlbaran>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PedidoAlbaran>>, List<PedidoAlbaran>>,
              AsyncValue<List<PedidoAlbaran>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(PedidoVentaEstadoList)
final pedidoVentaEstadoListProvider = PedidoVentaEstadoListProvider._();

final class PedidoVentaEstadoListProvider
    extends
        $AsyncNotifierProvider<PedidoVentaEstadoList, List<PedidoVentaEstado>> {
  PedidoVentaEstadoListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaEstadoListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaEstadoListHash();

  @$internal
  @override
  PedidoVentaEstadoList create() => PedidoVentaEstadoList();
}

String _$pedidoVentaEstadoListHash() =>
    r'a061b352e127449279a47924aa1971bc5d500b9e';

abstract class _$PedidoVentaEstadoList
    extends $AsyncNotifier<List<PedidoVentaEstado>> {
  FutureOr<List<PedidoVentaEstado>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<PedidoVentaEstado>>,
              List<PedidoVentaEstado>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PedidoVentaEstado>>,
                List<PedidoVentaEstado>
              >,
              AsyncValue<List<PedidoVentaEstado>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(PedidoVentaLastSyncDate)
final pedidoVentaLastSyncDateProvider = PedidoVentaLastSyncDateProvider._();

final class PedidoVentaLastSyncDateProvider
    extends $AsyncNotifierProvider<PedidoVentaLastSyncDate, DateTime> {
  PedidoVentaLastSyncDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaLastSyncDateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaLastSyncDateHash();

  @$internal
  @override
  PedidoVentaLastSyncDate create() => PedidoVentaLastSyncDate();
}

String _$pedidoVentaLastSyncDateHash() =>
    r'7b373b89d736add3dba98b8b72ae728e314dd229';

abstract class _$PedidoVentaLastSyncDate extends $AsyncNotifier<DateTime> {
  FutureOr<DateTime> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<DateTime>, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DateTime>, DateTime>,
              AsyncValue<DateTime>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(GetPedidoVentaLineaList)
final getPedidoVentaLineaListProvider = GetPedidoVentaLineaListFamily._();

final class GetPedidoVentaLineaListProvider
    extends
        $AsyncNotifierProvider<
          GetPedidoVentaLineaList,
          List<PedidoVentaLinea>
        > {
  GetPedidoVentaLineaListProvider._({
    required GetPedidoVentaLineaListFamily super.from,
    required PedidoLocalParam super.argument,
  }) : super(
         retry: null,
         name: r'getPedidoVentaLineaListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getPedidoVentaLineaListHash();

  @override
  String toString() {
    return r'getPedidoVentaLineaListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetPedidoVentaLineaList create() => GetPedidoVentaLineaList();

  @override
  bool operator ==(Object other) {
    return other is GetPedidoVentaLineaListProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getPedidoVentaLineaListHash() =>
    r'05015c5326c3ff366a37161e5b75981d273d7c2b';

final class GetPedidoVentaLineaListFamily extends $Family
    with
        $ClassFamilyOverride<
          GetPedidoVentaLineaList,
          AsyncValue<List<PedidoVentaLinea>>,
          List<PedidoVentaLinea>,
          FutureOr<List<PedidoVentaLinea>>,
          PedidoLocalParam
        > {
  GetPedidoVentaLineaListFamily._()
    : super(
        retry: null,
        name: r'getPedidoVentaLineaListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetPedidoVentaLineaListProvider call(PedidoLocalParam pedidoLocalParam) =>
      GetPedidoVentaLineaListProvider._(argument: pedidoLocalParam, from: this);

  @override
  String toString() => r'getPedidoVentaLineaListProvider';
}

abstract class _$GetPedidoVentaLineaList
    extends $AsyncNotifier<List<PedidoVentaLinea>> {
  late final _$args = ref.$arg as PedidoLocalParam;
  PedidoLocalParam get pedidoLocalParam => _$args;

  FutureOr<List<PedidoVentaLinea>> build(PedidoLocalParam pedidoLocalParam);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<AsyncValue<List<PedidoVentaLinea>>, List<PedidoVentaLinea>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<PedidoVentaLinea>>,
                List<PedidoVentaLinea>
              >,
              AsyncValue<List<PedidoVentaLinea>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(GetStockDisponible)
final getStockDisponibleProvider = GetStockDisponibleFamily._();

final class GetStockDisponibleProvider
    extends $AsyncNotifierProvider<GetStockDisponible, int> {
  GetStockDisponibleProvider._({
    required GetStockDisponibleFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getStockDisponibleProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getStockDisponibleHash();

  @override
  String toString() {
    return r'getStockDisponibleProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetStockDisponible create() => GetStockDisponible();

  @override
  bool operator ==(Object other) {
    return other is GetStockDisponibleProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getStockDisponibleHash() =>
    r'3adf8b0d3209410641c8a485d2cbfbf6304bcb28';

final class GetStockDisponibleFamily extends $Family
    with
        $ClassFamilyOverride<
          GetStockDisponible,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          String
        > {
  GetStockDisponibleFamily._()
    : super(
        retry: null,
        name: r'getStockDisponibleProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetStockDisponibleProvider call(String articuloId) =>
      GetStockDisponibleProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getStockDisponibleProvider';
}

abstract class _$GetStockDisponible extends $AsyncNotifier<int> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<int> build(String articuloId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(GetPedidoVentaBorradoresList)
final getPedidoVentaBorradoresListProvider =
    GetPedidoVentaBorradoresListProvider._();

final class GetPedidoVentaBorradoresListProvider
    extends
        $AsyncNotifierProvider<
          GetPedidoVentaBorradoresList,
          List<PedidoVenta>
        > {
  GetPedidoVentaBorradoresListProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getPedidoVentaBorradoresListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getPedidoVentaBorradoresListHash();

  @$internal
  @override
  GetPedidoVentaBorradoresList create() => GetPedidoVentaBorradoresList();
}

String _$getPedidoVentaBorradoresListHash() =>
    r'2883b4bea751090f24b1d9caa2737793fd4d78cd';

abstract class _$GetPedidoVentaBorradoresList
    extends $AsyncNotifier<List<PedidoVenta>> {
  FutureOr<List<PedidoVenta>> build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref as $Ref<AsyncValue<List<PedidoVenta>>, List<PedidoVenta>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<PedidoVenta>>, List<PedidoVenta>>,
              AsyncValue<List<PedidoVenta>>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}

@ProviderFor(OfertaHaveAttachment)
final ofertaHaveAttachmentProvider = OfertaHaveAttachmentFamily._();

final class OfertaHaveAttachmentProvider
    extends $AsyncNotifierProvider<OfertaHaveAttachment, bool> {
  OfertaHaveAttachmentProvider._({
    required OfertaHaveAttachmentFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'ofertaHaveAttachmentProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$ofertaHaveAttachmentHash();

  @override
  String toString() {
    return r'ofertaHaveAttachmentProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  OfertaHaveAttachment create() => OfertaHaveAttachment();

  @override
  bool operator ==(Object other) {
    return other is OfertaHaveAttachmentProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$ofertaHaveAttachmentHash() =>
    r'b0d4726bc2b013ed1fd326fe3a787c2732f6e706';

final class OfertaHaveAttachmentFamily extends $Family
    with
        $ClassFamilyOverride<
          OfertaHaveAttachment,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          String
        > {
  OfertaHaveAttachmentFamily._()
    : super(
        retry: null,
        name: r'ofertaHaveAttachmentProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  OfertaHaveAttachmentProvider call(String pedidoVentaId) =>
      OfertaHaveAttachmentProvider._(argument: pedidoVentaId, from: this);

  @override
  String toString() => r'ofertaHaveAttachmentProvider';
}

abstract class _$OfertaHaveAttachment extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as String;
  String get pedidoVentaId => _$args;

  FutureOr<bool> build(String pedidoVentaId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(PedidoHaveProformaAdjunta)
final pedidoHaveProformaAdjuntaProvider = PedidoHaveProformaAdjuntaFamily._();

final class PedidoHaveProformaAdjuntaProvider
    extends $AsyncNotifierProvider<PedidoHaveProformaAdjunta, bool> {
  PedidoHaveProformaAdjuntaProvider._({
    required PedidoHaveProformaAdjuntaFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'pedidoHaveProformaAdjuntaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$pedidoHaveProformaAdjuntaHash();

  @override
  String toString() {
    return r'pedidoHaveProformaAdjuntaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PedidoHaveProformaAdjunta create() => PedidoHaveProformaAdjunta();

  @override
  bool operator ==(Object other) {
    return other is PedidoHaveProformaAdjuntaProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pedidoHaveProformaAdjuntaHash() =>
    r'e390ca07f802a466024609052c58406829ca73de';

final class PedidoHaveProformaAdjuntaFamily extends $Family
    with
        $ClassFamilyOverride<
          PedidoHaveProformaAdjunta,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          String
        > {
  PedidoHaveProformaAdjuntaFamily._()
    : super(
        retry: null,
        name: r'pedidoHaveProformaAdjuntaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PedidoHaveProformaAdjuntaProvider call(String pedidoVentaId) =>
      PedidoHaveProformaAdjuntaProvider._(argument: pedidoVentaId, from: this);

  @override
  String toString() => r'pedidoHaveProformaAdjuntaProvider';
}

abstract class _$PedidoHaveProformaAdjunta extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as String;
  String get pedidoVentaId => _$args;

  FutureOr<bool> build(String pedidoVentaId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}

@ProviderFor(DeletePedidoVenta)
final deletePedidoVentaProvider = DeletePedidoVentaFamily._();

final class DeletePedidoVentaProvider
    extends $AsyncNotifierProvider<DeletePedidoVenta, void> {
  DeletePedidoVentaProvider._({
    required DeletePedidoVentaFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'deletePedidoVentaProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$deletePedidoVentaHash();

  @override
  String toString() {
    return r'deletePedidoVentaProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  DeletePedidoVenta create() => DeletePedidoVenta();

  @override
  bool operator ==(Object other) {
    return other is DeletePedidoVentaProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$deletePedidoVentaHash() => r'e711406a142811f51c38739feb9660b9b3a7ebaa';

final class DeletePedidoVentaFamily extends $Family
    with
        $ClassFamilyOverride<
          DeletePedidoVenta,
          AsyncValue<void>,
          void,
          FutureOr<void>,
          String
        > {
  DeletePedidoVentaFamily._()
    : super(
        retry: null,
        name: r'deletePedidoVentaProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  DeletePedidoVentaProvider call(String pedidoVentaAppId) =>
      DeletePedidoVentaProvider._(argument: pedidoVentaAppId, from: this);

  @override
  String toString() => r'deletePedidoVentaProvider';
}

abstract class _$DeletePedidoVenta extends $AsyncNotifier<void> {
  late final _$args = ref.$arg as String;
  String get pedidoVentaAppId => _$args;

  FutureOr<void> build(String pedidoVentaAppId);
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AsyncValue<void>, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<void>, void>,
              AsyncValue<void>,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, () => build(_$args));
  }
}
