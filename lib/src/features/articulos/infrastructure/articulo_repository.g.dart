// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(articuloRepository)
const articuloRepositoryProvider = ArticuloRepositoryProvider._();

final class ArticuloRepositoryProvider
    extends
        $FunctionalProvider<
          ArticuloRepository,
          ArticuloRepository,
          ArticuloRepository
        >
    with $Provider<ArticuloRepository> {
  const ArticuloRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articuloRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articuloRepositoryHash();

  @$internal
  @override
  $ProviderElement<ArticuloRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ArticuloRepository create(Ref ref) {
    return articuloRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArticuloRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArticuloRepository>(value),
    );
  }
}

String _$articuloRepositoryHash() =>
    r'8c4ff59ea7f3b7ba23eee7de4f85cc82e49d3c7d';

@ProviderFor(ArticuloLastSyncDate)
const articuloLastSyncDateProvider = ArticuloLastSyncDateProvider._();

final class ArticuloLastSyncDateProvider
    extends $AsyncNotifierProvider<ArticuloLastSyncDate, DateTime> {
  const ArticuloLastSyncDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articuloLastSyncDateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articuloLastSyncDateHash();

  @$internal
  @override
  ArticuloLastSyncDate create() => ArticuloLastSyncDate();
}

String _$articuloLastSyncDateHash() =>
    r'8ba68582442d22567093597489ec25bbd96d87f2';

abstract class _$ArticuloLastSyncDate extends $AsyncNotifier<DateTime> {
  FutureOr<DateTime> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<DateTime>, DateTime>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<DateTime>, DateTime>,
              AsyncValue<DateTime>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloById)
const getArticuloByIdProvider = GetArticuloByIdFamily._();

final class GetArticuloByIdProvider
    extends $AsyncNotifierProvider<GetArticuloById, Articulo> {
  const GetArticuloByIdProvider._({
    required GetArticuloByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloByIdHash();

  @override
  String toString() {
    return r'getArticuloByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloById create() => GetArticuloById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloByIdHash() => r'8d48e24fc2c2880e84ffbc6ebe26f43d0c53b0e1';

final class GetArticuloByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloById,
          AsyncValue<Articulo>,
          Articulo,
          FutureOr<Articulo>,
          String
        > {
  const GetArticuloByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloByIdProvider call(String articuloId) =>
      GetArticuloByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloByIdProvider';
}

abstract class _$GetArticuloById extends $AsyncNotifier<Articulo> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<Articulo> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Articulo>, Articulo>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Articulo>, Articulo>,
              AsyncValue<Articulo>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloComponenteListaById)
const getArticuloComponenteListaByIdProvider =
    GetArticuloComponenteListaByIdFamily._();

final class GetArticuloComponenteListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloComponenteListaById,
          List<ArticuloComponente>
        > {
  const GetArticuloComponenteListaByIdProvider._({
    required GetArticuloComponenteListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloComponenteListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloComponenteListaByIdHash();

  @override
  String toString() {
    return r'getArticuloComponenteListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloComponenteListaById create() => GetArticuloComponenteListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloComponenteListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloComponenteListaByIdHash() =>
    r'baff463c45f626aa5a56d5c3c6a967ebed9bfd7e';

final class GetArticuloComponenteListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloComponenteListaById,
          AsyncValue<List<ArticuloComponente>>,
          List<ArticuloComponente>,
          FutureOr<List<ArticuloComponente>>,
          String
        > {
  const GetArticuloComponenteListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloComponenteListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloComponenteListaByIdProvider call(String articuloId) =>
      GetArticuloComponenteListaByIdProvider._(
        argument: articuloId,
        from: this,
      );

  @override
  String toString() => r'getArticuloComponenteListaByIdProvider';
}

abstract class _$GetArticuloComponenteListaById
    extends $AsyncNotifier<List<ArticuloComponente>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloComponente>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloComponente>>,
              List<ArticuloComponente>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloComponente>>,
                List<ArticuloComponente>
              >,
              AsyncValue<List<ArticuloComponente>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloPrecioTarifaListaById)
const getArticuloPrecioTarifaListaByIdProvider =
    GetArticuloPrecioTarifaListaByIdFamily._();

final class GetArticuloPrecioTarifaListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloPrecioTarifaListaById,
          List<ArticuloPrecioTarifa>
        > {
  const GetArticuloPrecioTarifaListaByIdProvider._({
    required GetArticuloPrecioTarifaListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloPrecioTarifaListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloPrecioTarifaListaByIdHash();

  @override
  String toString() {
    return r'getArticuloPrecioTarifaListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloPrecioTarifaListaById create() =>
      GetArticuloPrecioTarifaListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloPrecioTarifaListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloPrecioTarifaListaByIdHash() =>
    r'fdb1e955935386b495e04a59718e8bfb58fd9210';

final class GetArticuloPrecioTarifaListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloPrecioTarifaListaById,
          AsyncValue<List<ArticuloPrecioTarifa>>,
          List<ArticuloPrecioTarifa>,
          FutureOr<List<ArticuloPrecioTarifa>>,
          String
        > {
  const GetArticuloPrecioTarifaListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloPrecioTarifaListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloPrecioTarifaListaByIdProvider call(String articuloId) =>
      GetArticuloPrecioTarifaListaByIdProvider._(
        argument: articuloId,
        from: this,
      );

  @override
  String toString() => r'getArticuloPrecioTarifaListaByIdProvider';
}

abstract class _$GetArticuloPrecioTarifaListaById
    extends $AsyncNotifier<List<ArticuloPrecioTarifa>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloPrecioTarifa>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloPrecioTarifa>>,
              List<ArticuloPrecioTarifa>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloPrecioTarifa>>,
                List<ArticuloPrecioTarifa>
              >,
              AsyncValue<List<ArticuloPrecioTarifa>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloGrupoNetoListaById)
const getArticuloGrupoNetoListaByIdProvider =
    GetArticuloGrupoNetoListaByIdFamily._();

final class GetArticuloGrupoNetoListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloGrupoNetoListaById,
          List<ArticuloGrupoNeto>
        > {
  const GetArticuloGrupoNetoListaByIdProvider._({
    required GetArticuloGrupoNetoListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloGrupoNetoListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloGrupoNetoListaByIdHash();

  @override
  String toString() {
    return r'getArticuloGrupoNetoListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloGrupoNetoListaById create() => GetArticuloGrupoNetoListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloGrupoNetoListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloGrupoNetoListaByIdHash() =>
    r'cc8152a98f4248b29542e6e0802b5c3ba566ae8b';

final class GetArticuloGrupoNetoListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloGrupoNetoListaById,
          AsyncValue<List<ArticuloGrupoNeto>>,
          List<ArticuloGrupoNeto>,
          FutureOr<List<ArticuloGrupoNeto>>,
          String
        > {
  const GetArticuloGrupoNetoListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloGrupoNetoListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloGrupoNetoListaByIdProvider call(String articuloId) =>
      GetArticuloGrupoNetoListaByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloGrupoNetoListaByIdProvider';
}

abstract class _$GetArticuloGrupoNetoListaById
    extends $AsyncNotifier<List<ArticuloGrupoNeto>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloGrupoNeto>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloGrupoNeto>>,
              List<ArticuloGrupoNeto>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloGrupoNeto>>,
                List<ArticuloGrupoNeto>
              >,
              AsyncValue<List<ArticuloGrupoNeto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloSustitutivoListaById)
const getArticuloSustitutivoListaByIdProvider =
    GetArticuloSustitutivoListaByIdFamily._();

final class GetArticuloSustitutivoListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloSustitutivoListaById,
          List<ArticuloSustitutivo>
        > {
  const GetArticuloSustitutivoListaByIdProvider._({
    required GetArticuloSustitutivoListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloSustitutivoListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloSustitutivoListaByIdHash();

  @override
  String toString() {
    return r'getArticuloSustitutivoListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloSustitutivoListaById create() => GetArticuloSustitutivoListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloSustitutivoListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloSustitutivoListaByIdHash() =>
    r'70aab02230f3176e4580ee5570a554aa800003c9';

final class GetArticuloSustitutivoListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloSustitutivoListaById,
          AsyncValue<List<ArticuloSustitutivo>>,
          List<ArticuloSustitutivo>,
          FutureOr<List<ArticuloSustitutivo>>,
          String
        > {
  const GetArticuloSustitutivoListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloSustitutivoListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloSustitutivoListaByIdProvider call(String articuloId) =>
      GetArticuloSustitutivoListaByIdProvider._(
        argument: articuloId,
        from: this,
      );

  @override
  String toString() => r'getArticuloSustitutivoListaByIdProvider';
}

abstract class _$GetArticuloSustitutivoListaById
    extends $AsyncNotifier<List<ArticuloSustitutivo>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloSustitutivo>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloSustitutivo>>,
              List<ArticuloSustitutivo>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloSustitutivo>>,
                List<ArticuloSustitutivo>
              >,
              AsyncValue<List<ArticuloSustitutivo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloRecambioListaById)
const getArticuloRecambioListaByIdProvider =
    GetArticuloRecambioListaByIdFamily._();

final class GetArticuloRecambioListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloRecambioListaById,
          List<ArticuloRecambio>
        > {
  const GetArticuloRecambioListaByIdProvider._({
    required GetArticuloRecambioListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloRecambioListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloRecambioListaByIdHash();

  @override
  String toString() {
    return r'getArticuloRecambioListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloRecambioListaById create() => GetArticuloRecambioListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloRecambioListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloRecambioListaByIdHash() =>
    r'227599cfc9b52372518092dff783b1f32d36fe99';

final class GetArticuloRecambioListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloRecambioListaById,
          AsyncValue<List<ArticuloRecambio>>,
          List<ArticuloRecambio>,
          FutureOr<List<ArticuloRecambio>>,
          String
        > {
  const GetArticuloRecambioListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloRecambioListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloRecambioListaByIdProvider call(String articuloId) =>
      GetArticuloRecambioListaByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloRecambioListaByIdProvider';
}

abstract class _$GetArticuloRecambioListaById
    extends $AsyncNotifier<List<ArticuloRecambio>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloRecambio>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ArticuloRecambio>>, List<ArticuloRecambio>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloRecambio>>,
                List<ArticuloRecambio>
              >,
              AsyncValue<List<ArticuloRecambio>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloImagenListaById)
const getArticuloImagenListaByIdProvider = GetArticuloImagenListaByIdFamily._();

final class GetArticuloImagenListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloImagenListaById,
          List<ArticuloImagen>
        > {
  const GetArticuloImagenListaByIdProvider._({
    required GetArticuloImagenListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloImagenListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloImagenListaByIdHash();

  @override
  String toString() {
    return r'getArticuloImagenListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloImagenListaById create() => GetArticuloImagenListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloImagenListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloImagenListaByIdHash() =>
    r'f85180d447fcb2f04305d5e3cee7fcbc86993faf';

final class GetArticuloImagenListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloImagenListaById,
          AsyncValue<List<ArticuloImagen>>,
          List<ArticuloImagen>,
          FutureOr<List<ArticuloImagen>>,
          String
        > {
  const GetArticuloImagenListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloImagenListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloImagenListaByIdProvider call(String articuloId) =>
      GetArticuloImagenListaByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloImagenListaByIdProvider';
}

abstract class _$GetArticuloImagenListaById
    extends $AsyncNotifier<List<ArticuloImagen>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloImagen>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ArticuloImagen>>, List<ArticuloImagen>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloImagen>>,
                List<ArticuloImagen>
              >,
              AsyncValue<List<ArticuloImagen>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloDocumentoListaById)
const getArticuloDocumentoListaByIdProvider =
    GetArticuloDocumentoListaByIdFamily._();

final class GetArticuloDocumentoListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloDocumentoListaById,
          List<ArticuloDocumento>
        > {
  const GetArticuloDocumentoListaByIdProvider._({
    required GetArticuloDocumentoListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloDocumentoListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloDocumentoListaByIdHash();

  @override
  String toString() {
    return r'getArticuloDocumentoListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloDocumentoListaById create() => GetArticuloDocumentoListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloDocumentoListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloDocumentoListaByIdHash() =>
    r'bf1e809e07f1d2b38bb5d31ce84eccbe38633307';

final class GetArticuloDocumentoListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloDocumentoListaById,
          AsyncValue<List<ArticuloDocumento>>,
          List<ArticuloDocumento>,
          FutureOr<List<ArticuloDocumento>>,
          String
        > {
  const GetArticuloDocumentoListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloDocumentoListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloDocumentoListaByIdProvider call(String articuloId) =>
      GetArticuloDocumentoListaByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloDocumentoListaByIdProvider';
}

abstract class _$GetArticuloDocumentoListaById
    extends $AsyncNotifier<List<ArticuloDocumento>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloDocumento>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloDocumento>>,
              List<ArticuloDocumento>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloDocumento>>,
                List<ArticuloDocumento>
              >,
              AsyncValue<List<ArticuloDocumento>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloImageFile)
const getArticuloImageFileProvider = GetArticuloImageFileFamily._();

final class GetArticuloImageFileProvider
    extends $AsyncNotifierProvider<GetArticuloImageFile, Uint8List?> {
  const GetArticuloImageFileProvider._({
    required GetArticuloImageFileFamily super.from,
    required AdjuntoParam super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloImageFileProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloImageFileHash();

  @override
  String toString() {
    return r'getArticuloImageFileProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloImageFile create() => GetArticuloImageFile();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloImageFileProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloImageFileHash() =>
    r'7829dfe83329dbead7889dac9ce00e22bb7ab5d4';

final class GetArticuloImageFileFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloImageFile,
          AsyncValue<Uint8List?>,
          Uint8List?,
          FutureOr<Uint8List?>,
          AdjuntoParam
        > {
  const GetArticuloImageFileFamily._()
    : super(
        retry: null,
        name: r'getArticuloImageFileProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloImageFileProvider call(AdjuntoParam adjuntoParam) =>
      GetArticuloImageFileProvider._(argument: adjuntoParam, from: this);

  @override
  String toString() => r'getArticuloImageFileProvider';
}

abstract class _$GetArticuloImageFile extends $AsyncNotifier<Uint8List?> {
  late final _$args = ref.$arg as AdjuntoParam;
  AdjuntoParam get adjuntoParam => _$args;

  FutureOr<Uint8List?> build(AdjuntoParam adjuntoParam);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Uint8List?>, Uint8List?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Uint8List?>, Uint8List?>,
              AsyncValue<Uint8List?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloPedidoVentaLineaListById)
const getArticuloPedidoVentaLineaListByIdProvider =
    GetArticuloPedidoVentaLineaListByIdFamily._();

final class GetArticuloPedidoVentaLineaListByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloPedidoVentaLineaListById,
          List<ArticuloPedidoVentaLinea>
        > {
  const GetArticuloPedidoVentaLineaListByIdProvider._({
    required GetArticuloPedidoVentaLineaListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloPedidoVentaLineaListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$getArticuloPedidoVentaLineaListByIdHash();

  @override
  String toString() {
    return r'getArticuloPedidoVentaLineaListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloPedidoVentaLineaListById create() =>
      GetArticuloPedidoVentaLineaListById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloPedidoVentaLineaListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloPedidoVentaLineaListByIdHash() =>
    r'b4d23a77586e909efd6305b7c7fdfb5b8ab066b3';

final class GetArticuloPedidoVentaLineaListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloPedidoVentaLineaListById,
          AsyncValue<List<ArticuloPedidoVentaLinea>>,
          List<ArticuloPedidoVentaLinea>,
          FutureOr<List<ArticuloPedidoVentaLinea>>,
          String
        > {
  const GetArticuloPedidoVentaLineaListByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloPedidoVentaLineaListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloPedidoVentaLineaListByIdProvider call(String articuloId) =>
      GetArticuloPedidoVentaLineaListByIdProvider._(
        argument: articuloId,
        from: this,
      );

  @override
  String toString() => r'getArticuloPedidoVentaLineaListByIdProvider';
}

abstract class _$GetArticuloPedidoVentaLineaListById
    extends $AsyncNotifier<List<ArticuloPedidoVentaLinea>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloPedidoVentaLinea>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloPedidoVentaLinea>>,
              List<ArticuloPedidoVentaLinea>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloPedidoVentaLinea>>,
                List<ArticuloPedidoVentaLinea>
              >,
              AsyncValue<List<ArticuloPedidoVentaLinea>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloVentasMesById)
const getArticuloVentasMesByIdProvider = GetArticuloVentasMesByIdFamily._();

final class GetArticuloVentasMesByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloVentasMesById,
          List<ArticuloVentasMes>
        > {
  const GetArticuloVentasMesByIdProvider._({
    required GetArticuloVentasMesByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloVentasMesByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloVentasMesByIdHash();

  @override
  String toString() {
    return r'getArticuloVentasMesByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloVentasMesById create() => GetArticuloVentasMesById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloVentasMesByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloVentasMesByIdHash() =>
    r'c4d3a564caa2b029b7996f0f6a73ef72b6ce02c0';

final class GetArticuloVentasMesByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloVentasMesById,
          AsyncValue<List<ArticuloVentasMes>>,
          List<ArticuloVentasMes>,
          FutureOr<List<ArticuloVentasMes>>,
          String
        > {
  const GetArticuloVentasMesByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloVentasMesByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloVentasMesByIdProvider call(String articuloId) =>
      GetArticuloVentasMesByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloVentasMesByIdProvider';
}

abstract class _$GetArticuloVentasMesById
    extends $AsyncNotifier<List<ArticuloVentasMes>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloVentasMes>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloVentasMes>>,
              List<ArticuloVentasMes>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloVentasMes>>,
                List<ArticuloVentasMes>
              >,
              AsyncValue<List<ArticuloVentasMes>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloVentasClienteById)
const getArticuloVentasClienteByIdProvider =
    GetArticuloVentasClienteByIdFamily._();

final class GetArticuloVentasClienteByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloVentasClienteById,
          List<ArticuloVentasCliente>
        > {
  const GetArticuloVentasClienteByIdProvider._({
    required GetArticuloVentasClienteByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloVentasClienteByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloVentasClienteByIdHash();

  @override
  String toString() {
    return r'getArticuloVentasClienteByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloVentasClienteById create() => GetArticuloVentasClienteById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloVentasClienteByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloVentasClienteByIdHash() =>
    r'286d57c5fc5de23a274d78a0dcb9740bad40e294';

final class GetArticuloVentasClienteByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloVentasClienteById,
          AsyncValue<List<ArticuloVentasCliente>>,
          List<ArticuloVentasCliente>,
          FutureOr<List<ArticuloVentasCliente>>,
          String
        > {
  const GetArticuloVentasClienteByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloVentasClienteByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloVentasClienteByIdProvider call(String articuloId) =>
      GetArticuloVentasClienteByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloVentasClienteByIdProvider';
}

abstract class _$GetArticuloVentasClienteById
    extends $AsyncNotifier<List<ArticuloVentasCliente>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloVentasCliente>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloVentasCliente>>,
              List<ArticuloVentasCliente>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloVentasCliente>>,
                List<ArticuloVentasCliente>
              >,
              AsyncValue<List<ArticuloVentasCliente>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(GetArticuloUltimosPreciosById)
const getArticuloUltimosPreciosByIdProvider =
    GetArticuloUltimosPreciosByIdFamily._();

final class GetArticuloUltimosPreciosByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloUltimosPreciosById,
          EstadisticasUltimosPrecios?
        > {
  const GetArticuloUltimosPreciosByIdProvider._({
    required GetArticuloUltimosPreciosByIdFamily super.from,
    required UltimosPreciosParam super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloUltimosPreciosByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloUltimosPreciosByIdHash();

  @override
  String toString() {
    return r'getArticuloUltimosPreciosByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloUltimosPreciosById create() => GetArticuloUltimosPreciosById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloUltimosPreciosByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloUltimosPreciosByIdHash() =>
    r'0681efa7b6d823e9803958acd273f25d47a1205a';

final class GetArticuloUltimosPreciosByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloUltimosPreciosById,
          AsyncValue<EstadisticasUltimosPrecios?>,
          EstadisticasUltimosPrecios?,
          FutureOr<EstadisticasUltimosPrecios?>,
          UltimosPreciosParam
        > {
  const GetArticuloUltimosPreciosByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloUltimosPreciosByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloUltimosPreciosByIdProvider call(
    UltimosPreciosParam ultimosPreciosParam,
  ) => GetArticuloUltimosPreciosByIdProvider._(
    argument: ultimosPreciosParam,
    from: this,
  );

  @override
  String toString() => r'getArticuloUltimosPreciosByIdProvider';
}

abstract class _$GetArticuloUltimosPreciosById
    extends $AsyncNotifier<EstadisticasUltimosPrecios?> {
  late final _$args = ref.$arg as UltimosPreciosParam;
  UltimosPreciosParam get ultimosPreciosParam => _$args;

  FutureOr<EstadisticasUltimosPrecios?> build(
    UltimosPreciosParam ultimosPreciosParam,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<EstadisticasUltimosPrecios?>,
              EstadisticasUltimosPrecios?
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<EstadisticasUltimosPrecios?>,
                EstadisticasUltimosPrecios?
              >,
              AsyncValue<EstadisticasUltimosPrecios?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
