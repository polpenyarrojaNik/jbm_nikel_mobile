// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cliente_ventas_articulo_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ClienteVentasArticuloIndexScreenPaginatedController)
const clienteVentasArticuloIndexScreenPaginatedControllerProvider =
    ClienteVentasArticuloIndexScreenPaginatedControllerFamily._();

final class ClienteVentasArticuloIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ClienteVentasArticuloIndexScreenPaginatedController,
          List<ClienteVentasArticulo>
        > {
  const ClienteVentasArticuloIndexScreenPaginatedControllerProvider._({
    required ClienteVentasArticuloIndexScreenPaginatedControllerFamily
    super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'clienteVentasArticuloIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$clienteVentasArticuloIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'clienteVentasArticuloIndexScreenPaginatedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ClienteVentasArticuloIndexScreenPaginatedController create() =>
      ClienteVentasArticuloIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other
            is ClienteVentasArticuloIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$clienteVentasArticuloIndexScreenPaginatedControllerHash() =>
    r'1893290fa7827b98c106fef93e4838df08c82313';

final class ClienteVentasArticuloIndexScreenPaginatedControllerFamily
    extends $Family
    with
        $ClassFamilyOverride<
          ClienteVentasArticuloIndexScreenPaginatedController,
          AsyncValue<List<ClienteVentasArticulo>>,
          List<ClienteVentasArticulo>,
          FutureOr<List<ClienteVentasArticulo>>,
          String
        > {
  const ClienteVentasArticuloIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'clienteVentasArticuloIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ClienteVentasArticuloIndexScreenPaginatedControllerProvider call({
    required String clienteId,
  }) => ClienteVentasArticuloIndexScreenPaginatedControllerProvider._(
    argument: clienteId,
    from: this,
  );

  @override
  String toString() =>
      r'clienteVentasArticuloIndexScreenPaginatedControllerProvider';
}

abstract class _$ClienteVentasArticuloIndexScreenPaginatedController
    extends $AsyncNotifier<List<ClienteVentasArticulo>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ClienteVentasArticulo>> build({required String clienteId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(clienteId: _$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ClienteVentasArticulo>>,
              List<ClienteVentasArticulo>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ClienteVentasArticulo>>,
                List<ClienteVentasArticulo>
              >,
              AsyncValue<List<ClienteVentasArticulo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
