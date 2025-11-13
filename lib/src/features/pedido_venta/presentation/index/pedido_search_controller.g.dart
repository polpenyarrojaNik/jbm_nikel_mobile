// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pedido_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PedidoVentaIndexScreenController)
const pedidoVentaIndexScreenControllerProvider =
    PedidoVentaIndexScreenControllerProvider._();

final class PedidoVentaIndexScreenControllerProvider
    extends $AsyncNotifierProvider<PedidoVentaIndexScreenController, int> {
  const PedidoVentaIndexScreenControllerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'pedidoVentaIndexScreenControllerProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$pedidoVentaIndexScreenControllerHash();

  @$internal
  @override
  PedidoVentaIndexScreenController create() =>
      PedidoVentaIndexScreenController();
}

String _$pedidoVentaIndexScreenControllerHash() =>
    r'bcb2dc10f3c39b5c53798e4f8f1e7c6b8665347b';

abstract class _$PedidoVentaIndexScreenController extends $AsyncNotifier<int> {
  FutureOr<int> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<int>, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<int>, int>,
              AsyncValue<int>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(PedidoVentaIndexScreenPaginatedController)
const pedidoVentaIndexScreenPaginatedControllerProvider =
    PedidoVentaIndexScreenPaginatedControllerFamily._();

final class PedidoVentaIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          PedidoVentaIndexScreenPaginatedController,
          List<PedidoVenta>
        > {
  const PedidoVentaIndexScreenPaginatedControllerProvider._({
    required PedidoVentaIndexScreenPaginatedControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$pedidoVentaIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'pedidoVentaIndexScreenPaginatedControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  PedidoVentaIndexScreenPaginatedController create() =>
      PedidoVentaIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other is PedidoVentaIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pedidoVentaIndexScreenPaginatedControllerHash() =>
    r'98ec005bc9b56d783b01ce8ae8e34de3b1c13043';

final class PedidoVentaIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          PedidoVentaIndexScreenPaginatedController,
          AsyncValue<List<PedidoVenta>>,
          List<PedidoVenta>,
          FutureOr<List<PedidoVenta>>,
          int
        > {
  const PedidoVentaIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'pedidoVentaIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  PedidoVentaIndexScreenPaginatedControllerProvider call({required int page}) =>
      PedidoVentaIndexScreenPaginatedControllerProvider._(
        argument: page,
        from: this,
      );

  @override
  String toString() => r'pedidoVentaIndexScreenPaginatedControllerProvider';
}

abstract class _$PedidoVentaIndexScreenPaginatedController
    extends $AsyncNotifier<List<PedidoVenta>> {
  late final _$args = ref.$arg as int;
  int get page => _$args;

  FutureOr<List<PedidoVenta>> build({required int page});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args);
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
