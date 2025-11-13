// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_contacto_edit_page_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteContactoEditPageController)
const clienteContactoEditPageControllerProvider =
    ClienteContactoEditPageControllerFamily._();

final class ClienteContactoEditPageControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteContactoEditPageController,
          ClienteContactoImpEditPageData
        > {
  const ClienteContactoEditPageControllerProvider._({
    required ClienteContactoEditPageControllerFamily super.from,
    required ClienteImpParam super.argument,
  }) : super(
         retry: null,
         name: r'clienteContactoEditPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteContactoEditPageControllerHash();

  @override
  String toString() {
    return r'clienteContactoEditPageControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteContactoEditPageController create() =>
      ClienteContactoEditPageController();

  @override
  bool operator ==(Object other) {
    return other is ClienteContactoEditPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteContactoEditPageControllerHash() =>
    r'4506a1811e2986106c2a4bc14f650392e9dc2163';

final class ClienteContactoEditPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ClienteContactoEditPageController,
          AsyncValue<ClienteContactoImpEditPageData>,
          ClienteContactoImpEditPageData,
          FutureOr<ClienteContactoImpEditPageData>,
          ClienteImpParam
        > {
  const ClienteContactoEditPageControllerFamily._()
    : super(
        retry: null,
        name: r'clienteContactoEditPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteContactoEditPageControllerProvider call(
    ClienteImpParam clienteImpParam,
  ) => ClienteContactoEditPageControllerProvider._(
    argument: clienteImpParam,
    from: this,
  );

  @override
  String toString() => r'clienteContactoEditPageControllerProvider';
}

abstract class _$ClienteContactoEditPageController
    extends $AsyncNotifier<ClienteContactoImpEditPageData> {
  late final _$args = ref.$arg as ClienteImpParam;
  ClienteImpParam get clienteImpParam => _$args;

  FutureOr<ClienteContactoImpEditPageData> build(
    ClienteImpParam clienteImpParam,
  );
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<ClienteContactoImpEditPageData>,
              ClienteContactoImpEditPageData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<ClienteContactoImpEditPageData>,
                ClienteContactoImpEditPageData
              >,
              AsyncValue<ClienteContactoImpEditPageData>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
