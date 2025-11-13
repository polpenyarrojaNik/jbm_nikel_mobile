// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_direccion_edit_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteDireccionEditPageController)
const clienteDireccionEditPageControllerProvider =
    ClienteDireccionEditPageControllerFamily._();

final class ClienteDireccionEditPageControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteDireccionEditPageController,
          ClienteDireccionEditPageData
        > {
  const ClienteDireccionEditPageControllerProvider._({
    required ClienteDireccionEditPageControllerFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteDireccionEditPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteDireccionEditPageControllerHash();

  @override
  String toString() {
    return r'clienteDireccionEditPageControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteDireccionEditPageController create() =>
      ClienteDireccionEditPageController();

  @override
  bool operator ==(Object other) {
    return other is ClienteDireccionEditPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteDireccionEditPageControllerHash() =>
    r'039ada5b66b4e4172203d1572041b1ea1c797755';

final class ClienteDireccionEditPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteDireccionEditPageController,
          AsyncValue<ClienteDireccionEditPageData>,
          ClienteDireccionEditPageData,
          FutureOr<ClienteDireccionEditPageData>,
          ClienteImpParam
        > {
  const ClienteDireccionEditPageControllerFamily._()
    : super(
        retry: null,
        name: r'clienteDireccionEditPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteDireccionEditPageControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteDireccionEditPageControllerProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteDireccionEditPageControllerProvider';
}

abstract class _$ClienteDireccionEditPageController
    extends $AsyncNotifier<ClienteDireccionEditPageData> {
  late final _$args = ref.$arg as ClienteImpParam;
  ClienteImpParam get clienteImpParam => _$args;

  FutureOr<ClienteDireccionEditPageData> build(ClienteImpParam clienteImpParam);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<ClienteDireccionEditPageData>,
              ClienteDireccionEditPageData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ClienteDireccionEditPageData>,
                ClienteDireccionEditPageData
              >,
              AsyncValue<ClienteDireccionEditPageData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
