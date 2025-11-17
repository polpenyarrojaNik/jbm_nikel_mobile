// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clienteRepository)
const clienteRepositoryProvider = ClienteRepositoryProvider._();

final class ClienteRepositoryProvider
    extends
        $FunctionalProvider<
          ClienteRepository,
          ClienteRepository,
          ClienteRepository
        >
    with $Provider<ClienteRepository> {
  const ClienteRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteRepositoryHash();

  @$internal
  @override
  $ProviderElement<ClienteRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClienteRepository create(Ref ref) {
    return clienteRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteRepository>(value),
    );
  }
}

String _$clienteRepositoryHash() => r'6712e21637b1f1887bacaba0de0b62493f244770';

@ProviderFor(ClienteById)
const clienteByIdProvider = ClienteByIdFamily._();

final class ClienteByIdProvider
    extends $AsyncNotifierProvider<ClienteById, Cliente> {
  const ClienteByIdProvider._({
    required ClienteByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteByIdHash();

  @override
  String toString() {
    return r'clienteByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteById create() => ClienteById();

  @override
  bool operator ==(Object other) {
    return other is ClienteByIdProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteByIdHash() => r'c5d04dadca748014870e87ec32481ed21909f79d';

final class ClienteByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteById,
          AsyncValue<Cliente>,
          Cliente,
          FutureOr<Cliente>,
          String
        > {
  const ClienteByIdFamily._()
    : super(
        retry: null,
        name: r'clienteByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteByIdProvider call(String clienteId) =>
      ClienteByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteByIdProvider';
}

abstract class _$ClienteById extends $AsyncNotifier<Cliente> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<Cliente> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Cliente>, Cliente>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Cliente>, Cliente>,
              AsyncValue<Cliente>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteLastSyncDate)
const clienteLastSyncDateProvider = ClienteLastSyncDateProvider._();

final class ClienteLastSyncDateProvider
    extends $AsyncNotifierProvider<ClienteLastSyncDate, DateTime> {
  const ClienteLastSyncDateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteLastSyncDateProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteLastSyncDateHash();

  @$internal
  @override
  ClienteLastSyncDate create() => ClienteLastSyncDate();
}

String _$clienteLastSyncDateHash() =>
    r'c06d7045a27c859c21944fa9cbb8ae8855608b6c';

abstract class _$ClienteLastSyncDate extends $AsyncNotifier<DateTime> {
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

@ProviderFor(ClienteDireccionListById)
const clienteDireccionListByIdProvider = ClienteDireccionListByIdFamily._();

final class ClienteDireccionListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteDireccionListById,
          List<ClienteDireccion>
        > {
  const ClienteDireccionListByIdProvider._({
    required ClienteDireccionListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteDireccionListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDireccionListByIdHash();

  @override
  String toString() {
    return r'clienteDireccionListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDireccionListById create() => ClienteDireccionListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDireccionListByIdHash() =>
    r'35da978d8b8e74f37393f025688155b69673f244';

final class ClienteDireccionListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDireccionListById,
          AsyncValue<List<ClienteDireccion>>,
          List<ClienteDireccion>,
          FutureOr<List<ClienteDireccion>>,
          String
        > {
  const ClienteDireccionListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteDireccionListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDireccionListByIdProvider call(String clienteId) =>
      ClienteDireccionListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteDireccionListByIdProvider';
}

abstract class _$ClienteDireccionListById
    extends $AsyncNotifier<List<ClienteDireccion>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteDireccion>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteDireccion>>, List<ClienteDireccion>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteDireccion>>,
                List<ClienteDireccion>
              >,
              AsyncValue<List<ClienteDireccion>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteContactosListById)
const clienteContactosListByIdProvider = ClienteContactosListByIdFamily._();

final class ClienteContactosListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteContactosListById,
          List<ClienteContacto>
        > {
  const ClienteContactosListByIdProvider._({
    required ClienteContactosListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteContactosListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteContactosListByIdHash();

  @override
  String toString() {
    return r'clienteContactosListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteContactosListById create() => ClienteContactosListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteContactosListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteContactosListByIdHash() =>
    r'a137a887484a5266db19aaa275b3800e1e7f49dc';

final class ClienteContactosListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteContactosListById,
          AsyncValue<List<ClienteContacto>>,
          List<ClienteContacto>,
          FutureOr<List<ClienteContacto>>,
          String
        > {
  const ClienteContactosListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteContactosListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteContactosListByIdProvider call(String clienteId) =>
      ClienteContactosListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteContactosListByIdProvider';
}

abstract class _$ClienteContactosListById
    extends $AsyncNotifier<List<ClienteContacto>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteContacto>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteContacto>>, List<ClienteContacto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteContacto>>,
                List<ClienteContacto>
              >,
              AsyncValue<List<ClienteContacto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteDescuentosListById)
const clienteDescuentosListByIdProvider = ClienteDescuentosListByIdFamily._();

final class ClienteDescuentosListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteDescuentosListById,
          List<ClienteDescuento>
        > {
  const ClienteDescuentosListByIdProvider._({
    required ClienteDescuentosListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteDescuentosListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDescuentosListByIdHash();

  @override
  String toString() {
    return r'clienteDescuentosListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDescuentosListById create() => ClienteDescuentosListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteDescuentosListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDescuentosListByIdHash() =>
    r'95b45aa72f17bfb52cc09763aa71be2891a30cd7';

final class ClienteDescuentosListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDescuentosListById,
          AsyncValue<List<ClienteDescuento>>,
          List<ClienteDescuento>,
          FutureOr<List<ClienteDescuento>>,
          String
        > {
  const ClienteDescuentosListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteDescuentosListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDescuentosListByIdProvider call(String clienteId) =>
      ClienteDescuentosListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteDescuentosListByIdProvider';
}

abstract class _$ClienteDescuentosListById
    extends $AsyncNotifier<List<ClienteDescuento>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteDescuento>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteDescuento>>, List<ClienteDescuento>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteDescuento>>,
                List<ClienteDescuento>
              >,
              AsyncValue<List<ClienteDescuento>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteGrupoNetoListById)
const clienteGrupoNetoListByIdProvider = ClienteGrupoNetoListByIdFamily._();

final class ClienteGrupoNetoListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteGrupoNetoListById,
          List<ClienteGrupoNeto>
        > {
  const ClienteGrupoNetoListByIdProvider._({
    required ClienteGrupoNetoListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteGrupoNetoListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteGrupoNetoListByIdHash();

  @override
  String toString() {
    return r'clienteGrupoNetoListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteGrupoNetoListById create() => ClienteGrupoNetoListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteGrupoNetoListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteGrupoNetoListByIdHash() =>
    r'5519c390891e9bf67d43f25dc8e684d2e5af4b18';

final class ClienteGrupoNetoListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteGrupoNetoListById,
          AsyncValue<List<ClienteGrupoNeto>>,
          List<ClienteGrupoNeto>,
          FutureOr<List<ClienteGrupoNeto>>,
          String
        > {
  const ClienteGrupoNetoListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteGrupoNetoListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteGrupoNetoListByIdProvider call(String clienteId) =>
      ClienteGrupoNetoListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteGrupoNetoListByIdProvider';
}

abstract class _$ClienteGrupoNetoListById
    extends $AsyncNotifier<List<ClienteGrupoNeto>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteGrupoNeto>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteGrupoNeto>>, List<ClienteGrupoNeto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteGrupoNeto>>,
                List<ClienteGrupoNeto>
              >,
              AsyncValue<List<ClienteGrupoNeto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClientePrecioNetoListById)
const clientePrecioNetoListByIdProvider = ClientePrecioNetoListByIdFamily._();

final class ClientePrecioNetoListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClientePrecioNetoListById,
          List<ClientePrecioNeto>
        > {
  const ClientePrecioNetoListByIdProvider._({
    required ClientePrecioNetoListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clientePrecioNetoListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientePrecioNetoListByIdHash();

  @override
  String toString() {
    return r'clientePrecioNetoListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClientePrecioNetoListById create() => ClientePrecioNetoListById();

  @override
  bool operator ==(Object other) {
    return other is ClientePrecioNetoListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientePrecioNetoListByIdHash() =>
    r'44ba4db8573474be0ce1b31b2338facac81b5ab6';

final class ClientePrecioNetoListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClientePrecioNetoListById,
          AsyncValue<List<ClientePrecioNeto>>,
          List<ClientePrecioNeto>,
          FutureOr<List<ClientePrecioNeto>>,
          String
        > {
  const ClientePrecioNetoListByIdFamily._()
    : super(
        retry: null,
        name: r'clientePrecioNetoListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientePrecioNetoListByIdProvider call(String clienteId) =>
      ClientePrecioNetoListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clientePrecioNetoListByIdProvider';
}

abstract class _$ClientePrecioNetoListById
    extends $AsyncNotifier<List<ClientePrecioNeto>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClientePrecioNeto>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ClientePrecioNeto>>,
              List<ClientePrecioNeto>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClientePrecioNeto>>,
                List<ClientePrecioNeto>
              >,
              AsyncValue<List<ClientePrecioNeto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClientePendientePagoListById)
const clientePendientePagoListByIdProvider =
    ClientePendientePagoListByIdFamily._();

final class ClientePendientePagoListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClientePendientePagoListById,
          List<ClientePagoPendiente>
        > {
  const ClientePendientePagoListByIdProvider._({
    required ClientePendientePagoListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clientePendientePagoListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientePendientePagoListByIdHash();

  @override
  String toString() {
    return r'clientePendientePagoListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClientePendientePagoListById create() => ClientePendientePagoListById();

  @override
  bool operator ==(Object other) {
    return other is ClientePendientePagoListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientePendientePagoListByIdHash() =>
    r'8fb927ebadc9f1a3d06fa47a19cd8e9b16210918';

final class ClientePendientePagoListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClientePendientePagoListById,
          AsyncValue<List<ClientePagoPendiente>>,
          List<ClientePagoPendiente>,
          FutureOr<List<ClientePagoPendiente>>,
          String
        > {
  const ClientePendientePagoListByIdFamily._()
    : super(
        retry: null,
        name: r'clientePendientePagoListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientePendientePagoListByIdProvider call(String clienteId) =>
      ClientePendientePagoListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clientePendientePagoListByIdProvider';
}

abstract class _$ClientePendientePagoListById
    extends $AsyncNotifier<List<ClientePagoPendiente>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClientePagoPendiente>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ClientePagoPendiente>>,
              List<ClientePagoPendiente>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClientePagoPendiente>>,
                List<ClientePagoPendiente>
              >,
              AsyncValue<List<ClientePagoPendiente>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteVentasMesListById)
const clienteVentasMesListByIdProvider = ClienteVentasMesListByIdFamily._();

final class ClienteVentasMesListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteVentasMesListById,
          List<ClienteVentasMes>
        > {
  const ClienteVentasMesListByIdProvider._({
    required ClienteVentasMesListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteVentasMesListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteVentasMesListByIdHash();

  @override
  String toString() {
    return r'clienteVentasMesListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteVentasMesListById create() => ClienteVentasMesListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteVentasMesListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteVentasMesListByIdHash() =>
    r'4b306cfe687f8b74c6eb30a5daab1e8945b576c0';

final class ClienteVentasMesListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteVentasMesListById,
          AsyncValue<List<ClienteVentasMes>>,
          List<ClienteVentasMes>,
          FutureOr<List<ClienteVentasMes>>,
          String
        > {
  const ClienteVentasMesListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteVentasMesListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteVentasMesListByIdProvider call(String clienteId) =>
      ClienteVentasMesListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteVentasMesListByIdProvider';
}

abstract class _$ClienteVentasMesListById
    extends $AsyncNotifier<List<ClienteVentasMes>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteVentasMes>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteVentasMes>>, List<ClienteVentasMes>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteVentasMes>>,
                List<ClienteVentasMes>
              >,
              AsyncValue<List<ClienteVentasMes>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteVisitasListById)
const clienteVisitasListByIdProvider = ClienteVisitasListByIdFamily._();

final class ClienteVisitasListByIdProvider
    extends $AsyncNotifierProvider<ClienteVisitasListById, List<Visita>> {
  const ClienteVisitasListByIdProvider._({
    required ClienteVisitasListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteVisitasListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteVisitasListByIdHash();

  @override
  String toString() {
    return r'clienteVisitasListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteVisitasListById create() => ClienteVisitasListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteVisitasListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteVisitasListByIdHash() =>
    r'610d502809604224c916e49ff509241fd96f47f6';

final class ClienteVisitasListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteVisitasListById,
          AsyncValue<List<Visita>>,
          List<Visita>,
          FutureOr<List<Visita>>,
          String
        > {
  const ClienteVisitasListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteVisitasListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteVisitasListByIdProvider call(String clienteId) =>
      ClienteVisitasListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteVisitasListByIdProvider';
}

abstract class _$ClienteVisitasListById extends $AsyncNotifier<List<Visita>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<Visita>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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

@ProviderFor(ClientePedidosListById)
const clientePedidosListByIdProvider = ClientePedidosListByIdFamily._();

final class ClientePedidosListByIdProvider
    extends $AsyncNotifierProvider<ClientePedidosListById, List<PedidoVenta>> {
  const ClientePedidosListByIdProvider._({
    required ClientePedidosListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clientePedidosListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientePedidosListByIdHash();

  @override
  String toString() {
    return r'clientePedidosListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClientePedidosListById create() => ClientePedidosListById();

  @override
  bool operator ==(Object other) {
    return other is ClientePedidosListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientePedidosListByIdHash() =>
    r'ecb6a2240546ae24413a9970106de61d21056e35';

final class ClientePedidosListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClientePedidosListById,
          AsyncValue<List<PedidoVenta>>,
          List<PedidoVenta>,
          FutureOr<List<PedidoVenta>>,
          String
        > {
  const ClientePedidosListByIdFamily._()
    : super(
        retry: null,
        name: r'clientePedidosListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientePedidosListByIdProvider call(String clienteId) =>
      ClientePedidosListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clientePedidosListByIdProvider';
}

abstract class _$ClientePedidosListById
    extends $AsyncNotifier<List<PedidoVenta>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<PedidoVenta>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteDevolucionesListById)
const clienteDevolucionesListByIdProvider =
    ClienteDevolucionesListByIdFamily._();

final class ClienteDevolucionesListByIdProvider
    extends
        $AsyncNotifierProvider<ClienteDevolucionesListById, List<Devolucion>> {
  const ClienteDevolucionesListByIdProvider._({
    required ClienteDevolucionesListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteDevolucionesListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDevolucionesListByIdHash();

  @override
  String toString() {
    return r'clienteDevolucionesListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDevolucionesListById create() => ClienteDevolucionesListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteDevolucionesListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDevolucionesListByIdHash() =>
    r'f55eb0d4a4658752b470d56932caaa2c75002b63';

final class ClienteDevolucionesListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDevolucionesListById,
          AsyncValue<List<Devolucion>>,
          List<Devolucion>,
          FutureOr<List<Devolucion>>,
          String
        > {
  const ClienteDevolucionesListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteDevolucionesListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDevolucionesListByIdProvider call(String clienteId) =>
      ClienteDevolucionesListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteDevolucionesListByIdProvider';
}

abstract class _$ClienteDevolucionesListById
    extends $AsyncNotifier<List<Devolucion>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<Devolucion>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<Devolucion>>, List<Devolucion>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Devolucion>>, List<Devolucion>>,
              AsyncValue<List<Devolucion>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteDevolucionesLineaListById)
const clienteDevolucionesLineaListByIdProvider =
    ClienteDevolucionesLineaListByIdFamily._();

final class ClienteDevolucionesLineaListByIdProvider
    extends
        $AsyncNotifierProvider<
          ClienteDevolucionesLineaListById,
          List<DevolucionLinea>
        > {
  const ClienteDevolucionesLineaListByIdProvider._({
    required ClienteDevolucionesLineaListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteDevolucionesLineaListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDevolucionesLineaListByIdHash();

  @override
  String toString() {
    return r'clienteDevolucionesLineaListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDevolucionesLineaListById create() =>
      ClienteDevolucionesLineaListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteDevolucionesLineaListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDevolucionesLineaListByIdHash() =>
    r'1da1a878fce98c525adda4b2584a38936a3d86db';

final class ClienteDevolucionesLineaListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDevolucionesLineaListById,
          AsyncValue<List<DevolucionLinea>>,
          List<DevolucionLinea>,
          FutureOr<List<DevolucionLinea>>,
          String
        > {
  const ClienteDevolucionesLineaListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteDevolucionesLineaListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDevolucionesLineaListByIdProvider call(String devolucionId) =>
      ClienteDevolucionesLineaListByIdProvider._(
        argument: devolucionId,
        from: this,
      );

  @override
  String toString() => r'clienteDevolucionesLineaListByIdProvider';
}

abstract class _$ClienteDevolucionesLineaListById
    extends $AsyncNotifier<List<DevolucionLinea>> {
  late final _$args = ref.$arg as String;
  String get devolucionId => _$args;

  FutureOr<List<DevolucionLinea>> build(String devolucionId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<DevolucionLinea>>, List<DevolucionLinea>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<DevolucionLinea>>,
                List<DevolucionLinea>
              >,
              AsyncValue<List<DevolucionLinea>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClientePais)
const clientePaisProvider = ClientePaisFamily._();

final class ClientePaisProvider
    extends $AsyncNotifierProvider<ClientePais, Pais?> {
  const ClientePaisProvider._({
    required ClientePaisFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clientePaisProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clientePaisHash();

  @override
  String toString() {
    return r'clientePaisProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClientePais create() => ClientePais();

  @override
  bool operator ==(Object other) {
    return other is ClientePaisProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientePaisHash() => r'25c87ba2cf46f2ab211a2131c10aa84fef4bed78';

final class ClientePaisFamily extends $Family
    with
        $ClassFamilyOverride<
          ClientePais,
          AsyncValue<Pais?>,
          Pais?,
          FutureOr<Pais?>,
          String
        > {
  const ClientePaisFamily._()
    : super(
        retry: null,
        name: r'clientePaisProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientePaisProvider call(String clienteId) =>
      ClientePaisProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clientePaisProvider';
}

abstract class _$ClientePais extends $AsyncNotifier<Pais?> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<Pais?> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<Pais?>, Pais?>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Pais?>, Pais?>,
              AsyncValue<Pais?>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteContactoImpListInSyncByCliente)
const clienteContactoImpListInSyncByClienteProvider =
    ClienteContactoImpListInSyncByClienteFamily._();

final class ClienteContactoImpListInSyncByClienteProvider
    extends
        $AsyncNotifierProvider<
          ClienteContactoImpListInSyncByCliente,
          List<ClienteContactoImp>
        > {
  const ClienteContactoImpListInSyncByClienteProvider._({
    required ClienteContactoImpListInSyncByClienteFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteContactoImpListInSyncByClienteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteContactoImpListInSyncByClienteHash();

  @override
  String toString() {
    return r'clienteContactoImpListInSyncByClienteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteContactoImpListInSyncByCliente create() =>
      ClienteContactoImpListInSyncByCliente();

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoImpListInSyncByClienteProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteContactoImpListInSyncByClienteHash() =>
    r'd0e8a91a995b8c6c1a548a376f7268144be2ce80';

final class ClienteContactoImpListInSyncByClienteFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteContactoImpListInSyncByCliente,
          AsyncValue<List<ClienteContactoImp>>,
          List<ClienteContactoImp>,
          FutureOr<List<ClienteContactoImp>>,
          ClienteImpParam
        > {
  const ClienteContactoImpListInSyncByClienteFamily._()
    : super(
        retry: null,
        name: r'clienteContactoImpListInSyncByClienteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteContactoImpListInSyncByClienteProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteContactoImpListInSyncByClienteProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteContactoImpListInSyncByClienteProvider';
}

abstract class _$ClienteContactoImpListInSyncByCliente
    extends $AsyncNotifier<List<ClienteContactoImp>> {
  late final _$args = ref.$arg as ClienteImpParam;
  ClienteImpParam get clienteImpParam => _$args;

  FutureOr<List<ClienteContactoImp>> build(ClienteImpParam clienteImpParam);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ClienteContactoImp>>,
              List<ClienteContactoImp>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteContactoImp>>,
                List<ClienteContactoImp>
              >,
              AsyncValue<List<ClienteContactoImp>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClienteDireccionImpListInSyncByCliente)
const clienteDireccionImpListInSyncByClienteProvider =
    ClienteDireccionImpListInSyncByClienteFamily._();

final class ClienteDireccionImpListInSyncByClienteProvider
    extends
        $AsyncNotifierProvider<
          ClienteDireccionImpListInSyncByCliente,
          List<ClienteDireccionImp>
        > {
  const ClienteDireccionImpListInSyncByClienteProvider._({
    required ClienteDireccionImpListInSyncByClienteFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteDireccionImpListInSyncByClienteProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteDireccionImpListInSyncByClienteHash();

  @override
  String toString() {
    return r'clienteDireccionImpListInSyncByClienteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDireccionImpListInSyncByCliente create() =>
      ClienteDireccionImpListInSyncByCliente();

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionImpListInSyncByClienteProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDireccionImpListInSyncByClienteHash() =>
    r'2647ece3545e20e6f98d3d1dcae366085f02a4db';

final class ClienteDireccionImpListInSyncByClienteFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDireccionImpListInSyncByCliente,
          AsyncValue<List<ClienteDireccionImp>>,
          List<ClienteDireccionImp>,
          FutureOr<List<ClienteDireccionImp>>,
          ClienteImpParam
        > {
  const ClienteDireccionImpListInSyncByClienteFamily._()
    : super(
        retry: null,
        name: r'clienteDireccionImpListInSyncByClienteProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDireccionImpListInSyncByClienteProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteDireccionImpListInSyncByClienteProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteDireccionImpListInSyncByClienteProvider';
}

abstract class _$ClienteDireccionImpListInSyncByCliente
    extends $AsyncNotifier<List<ClienteDireccionImp>> {
  late final _$args = ref.$arg as ClienteImpParam;
  ClienteImpParam get clienteImpParam => _$args;

  FutureOr<List<ClienteDireccionImp>> build(ClienteImpParam clienteImpParam);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ClienteDireccionImp>>,
              List<ClienteDireccionImp>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteDireccionImp>>,
                List<ClienteDireccionImp>
              >,
              AsyncValue<List<ClienteDireccionImp>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
