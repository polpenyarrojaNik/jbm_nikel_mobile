// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_delete_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteDireccionDeleteController)
const clienteDireccionDeleteControllerProvider =
    ClienteDireccionDeleteControllerFamily._();

final class ClienteDireccionDeleteControllerProvider
    extends $AsyncNotifierProvider<ClienteDireccionDeleteController, bool> {
  const ClienteDireccionDeleteControllerProvider._({
    required ClienteDireccionDeleteControllerFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteDireccionDeleteControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteDireccionDeleteControllerHash();

  @override
  String toString() {
    return r'clienteDireccionDeleteControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDireccionDeleteController create() =>
      ClienteDireccionDeleteController();

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionDeleteControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDireccionDeleteControllerHash() =>
    r'8cd0d1acbd308ed4e263bebf8dde77d99cf0aa00';

final class ClienteDireccionDeleteControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDireccionDeleteController,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          ClienteImpParam
        > {
  const ClienteDireccionDeleteControllerFamily._()
    : super(
        retry: null,
        name: r'clienteDireccionDeleteControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDireccionDeleteControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteDireccionDeleteControllerProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteDireccionDeleteControllerProvider';
}

abstract class _$ClienteDireccionDeleteController extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as ClienteImpParam;
  ClienteImpParam get clienteImpParam => _$args;

  FutureOr<bool> build(ClienteImpParam clienteImpParam);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref = this.ref as $Ref<AsyncValue<bool>, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<bool>, bool>,
              AsyncValue<bool>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
