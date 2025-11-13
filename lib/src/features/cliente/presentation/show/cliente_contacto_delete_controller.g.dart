// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_delete_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteContactoDeleteController)
const clienteContactoDeleteControllerProvider =
    ClienteContactoDeleteControllerFamily._();

final class ClienteContactoDeleteControllerProvider
    extends $AsyncNotifierProvider<ClienteContactoDeleteController, bool> {
  const ClienteContactoDeleteControllerProvider._({
    required ClienteContactoDeleteControllerFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteContactoDeleteControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$clienteContactoDeleteControllerHash();

  @override
  String toString() {
    return r'clienteContactoDeleteControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteContactoDeleteController create() => ClienteContactoDeleteController();

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoDeleteControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteContactoDeleteControllerHash() =>
    r'2b2c16262cc1247b16c0410464ae961fc0e54433';

final class ClienteContactoDeleteControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteContactoDeleteController,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          ClienteImpParam
        > {
  const ClienteContactoDeleteControllerFamily._()
    : super(
        retry: null,
        name: r'clienteContactoDeleteControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteContactoDeleteControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteContactoDeleteControllerProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteContactoDeleteControllerProvider';
}

abstract class _$ClienteContactoDeleteController extends $AsyncNotifier<bool> {
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
