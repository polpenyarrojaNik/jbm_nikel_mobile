// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_adjunto_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteAdjuntoListById)
const clienteAdjuntoListByIdProvider = ClienteAdjuntoListByIdFamily._();

final class ClienteAdjuntoListByIdProvider
    extends
        $AsyncNotifierProvider<ClienteAdjuntoListById, List<ClienteAdjunto>> {
  const ClienteAdjuntoListByIdProvider._({
    required ClienteAdjuntoListByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteAdjuntoListByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteAdjuntoListByIdHash();

  @override
  String toString() {
    return r'clienteAdjuntoListByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteAdjuntoListById create() => ClienteAdjuntoListById();

  @override
  bool operator ==(Object other) {
    return other is ClienteAdjuntoListByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteAdjuntoListByIdHash() =>
    r'08d0215579e904115ed39256f773ed905d041cb3';

final class ClienteAdjuntoListByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteAdjuntoListById,
          AsyncValue<List<ClienteAdjunto>>,
          List<ClienteAdjunto>,
          FutureOr<List<ClienteAdjunto>>,
          String
        > {
  const ClienteAdjuntoListByIdFamily._()
    : super(
        retry: null,
        name: r'clienteAdjuntoListByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteAdjuntoListByIdProvider call(String clienteId) =>
      ClienteAdjuntoListByIdProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'clienteAdjuntoListByIdProvider';
}

abstract class _$ClienteAdjuntoListById
    extends $AsyncNotifier<List<ClienteAdjunto>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteAdjunto>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<AsyncValue<List<ClienteAdjunto>>, List<ClienteAdjunto>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteAdjunto>>,
                List<ClienteAdjunto>
              >,
              AsyncValue<List<ClienteAdjunto>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
