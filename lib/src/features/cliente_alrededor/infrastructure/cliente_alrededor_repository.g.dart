// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_alrededor_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(clienteAlrededorRepository)
const clienteAlrededorRepositoryProvider =
    ClienteAlrededorRepositoryProvider._();

final class ClienteAlrededorRepositoryProvider
    extends
        $FunctionalProvider<
          ClienteAlrededorRepository,
          ClienteAlrededorRepository,
          ClienteAlrededorRepository
        >
    with $Provider<ClienteAlrededorRepository> {
  const ClienteAlrededorRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'clienteAlrededorRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$clienteAlrededorRepositoryHash();

  @$internal
  @override
  $ProviderElement<ClienteAlrededorRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ClienteAlrededorRepository create(Ref ref) {
    return clienteAlrededorRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ClienteAlrededorRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ClienteAlrededorRepository>(value),
    );
  }
}

String _$clienteAlrededorRepositoryHash() =>
    r'cbcf68956280116d36e2042f0036528fd9c276b1';

@ProviderFor(UbicacionActual)
const ubicacionActualProvider = UbicacionActualProvider._();

final class UbicacionActualProvider
    extends $AsyncNotifierProvider<UbicacionActual, Position> {
  const UbicacionActualProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'ubicacionActualProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$ubicacionActualHash();

  @$internal
  @override
  UbicacionActual create() => UbicacionActual();
}

String _$ubicacionActualHash() => r'ddd5e06bb88d63dc7150b013ea60f4510674394e';

abstract class _$UbicacionActual extends $AsyncNotifier<Position> {
  FutureOr<Position> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Position>, Position>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Position>, Position>,
              AsyncValue<Position>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(ClientesDireccionesAlrededorListStream)
const clientesDireccionesAlrededorListStreamProvider =
    ClientesDireccionesAlrededorListStreamFamily._();

final class ClientesDireccionesAlrededorListStreamProvider
    extends
        $AsyncNotifierProvider<
          ClientesDireccionesAlrededorListStream,
          List<ClienteAlrededor>
        > {
  const ClientesDireccionesAlrededorListStreamProvider._({
    required ClientesDireccionesAlrededorListStreamFamily super.from,
    required GetClienteAlrededorArg super.argument,
  }) : super(
         retry: null,
         name: r'clientesDireccionesAlrededorListStreamProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clientesDireccionesAlrededorListStreamHash();

  @override
  String toString() {
    return r'clientesDireccionesAlrededorListStreamProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClientesDireccionesAlrededorListStream create() =>
      ClientesDireccionesAlrededorListStream();

  @override
  bool operator ==(Object other) {
    return other is ClientesDireccionesAlrededorListStreamProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clientesDireccionesAlrededorListStreamHash() =>
    r'7bbe8df36a96b0969ef4aa13c6c42bf2777d7224';

final class ClientesDireccionesAlrededorListStreamFamily extends $Family
    with
        $ClassFamilyOverride<
          ClientesDireccionesAlrededorListStream,
          AsyncValue<List<ClienteAlrededor>>,
          List<ClienteAlrededor>,
          FutureOr<List<ClienteAlrededor>>,
          GetClienteAlrededorArg
        > {
  const ClientesDireccionesAlrededorListStreamFamily._()
    : super(
        retry: null,
        name: r'clientesDireccionesAlrededorListStreamProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClientesDireccionesAlrededorListStreamProvider call(
    GetClienteAlrededorArg clienteAlrededorArg,
  ) => ClientesDireccionesAlrededorListStreamProvider._(
    argument: clienteAlrededorArg,
    from: this,
  );

  @override
  String toString() => r'clientesDireccionesAlrededorListStreamProvider';
}

abstract class _$ClientesDireccionesAlrededorListStream
    extends $AsyncNotifier<List<ClienteAlrededor>> {
  late final _$args = ref.$arg as GetClienteAlrededorArg;
  GetClienteAlrededorArg get clienteAlrededorArg => _$args;

  FutureOr<List<ClienteAlrededor>> build(
    GetClienteAlrededorArg clienteAlrededorArg,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteAlrededor>>, List<ClienteAlrededor>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteAlrededor>>,
                List<ClienteAlrededor>
              >,
              AsyncValue<List<ClienteAlrededor>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
