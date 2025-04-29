// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_detalle_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articuloDetalleAddArticuloABorradorButtonControllerHash() =>
    r'6b7fa3c72e8dfd25fc5e388cca7d6d4bd54493d9';

/// See also [ArticuloDetalleAddArticuloABorradorButtonController].
@ProviderFor(ArticuloDetalleAddArticuloABorradorButtonController)
final articuloDetalleAddArticuloABorradorButtonControllerProvider =
    AutoDisposeNotifierProvider<
      ArticuloDetalleAddArticuloABorradorButtonController,
      void
    >.internal(
      ArticuloDetalleAddArticuloABorradorButtonController.new,
      name: r'articuloDetalleAddArticuloABorradorButtonControllerProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$articuloDetalleAddArticuloABorradorButtonControllerHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$ArticuloDetalleAddArticuloABorradorButtonController =
    AutoDisposeNotifier<void>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

// **************************************************************************
// RiverpodMutationsGenerator
// **************************************************************************

extension ArticuloDetalleAddArticuloABorradorButtonControllerMutationExtension
    on
        AutoDisposeNotifierProvider<
          ArticuloDetalleAddArticuloABorradorButtonController,
          void
        > {
  Refreshable<GetPedidoVentaLineaMutation> get getPedidoVentaLinea =>
      _getPedidoVentaLineaProvider;
}

final _getPedidoVentaLineaProvider = Provider.autoDispose((ref) {
  final notifier = ref.watch(
    articuloDetalleAddArticuloABorradorButtonControllerProvider.notifier,
  );
  return GetPedidoVentaLineaMutation(
    (newState) => ref.state = newState,
    notifier.getPedidoVentaLinea,
  );
}, dependencies: [articuloDetalleAddArticuloABorradorButtonControllerProvider]);

typedef GetPedidoVentaLineaSignature =
    Future<int> Function(PedidoLocalParam pedidoLocalParam);
typedef GetPedidoVentaLineaStateSetter =
    void Function(GetPedidoVentaLineaMutation newState);

sealed class GetPedidoVentaLineaMutation
    with AsyncMutation, MutationResult<int> {
  factory GetPedidoVentaLineaMutation(
    GetPedidoVentaLineaStateSetter updateState,
    GetPedidoVentaLineaSignature fn,
  ) = GetPedidoVentaLineaMutationIdle._;

  GetPedidoVentaLineaMutation._(this._updateState, this._fn);

  final GetPedidoVentaLineaStateSetter _updateState;
  final GetPedidoVentaLineaSignature _fn;

  Object? get error;
  StackTrace? get stackTrace;

  Future<void> call(PedidoLocalParam pedidoLocalParam) async {
    try {
      _updateState(GetPedidoVentaLineaMutationLoading.from(this));
      final res = await _fn(pedidoLocalParam);
      _updateState(GetPedidoVentaLineaMutationSuccess.from(this, res));
    } catch (e, s) {
      _updateState(
        GetPedidoVentaLineaMutationFailure.from(this, error: e, stackTrace: s),
      );
    }
  }
}

final class GetPedidoVentaLineaMutationIdle extends GetPedidoVentaLineaMutation
    with MutationIdle {
  GetPedidoVentaLineaMutationIdle._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory GetPedidoVentaLineaMutationIdle.from(
    GetPedidoVentaLineaMutation other,
  ) => GetPedidoVentaLineaMutationIdle._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class GetPedidoVentaLineaMutationLoading
    extends GetPedidoVentaLineaMutation
    with MutationLoading {
  GetPedidoVentaLineaMutationLoading._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    this.result,
  }) : super._();

  factory GetPedidoVentaLineaMutationLoading.from(
    GetPedidoVentaLineaMutation other,
  ) => GetPedidoVentaLineaMutationLoading._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: other.result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}

final class GetPedidoVentaLineaMutationSuccess
    extends GetPedidoVentaLineaMutation
    with MutationSuccessResult<int> {
  GetPedidoVentaLineaMutationSuccess._(
    super._updateState,
    super._fn, {
    this.error,
    this.stackTrace,
    required this.result,
  }) : super._();

  factory GetPedidoVentaLineaMutationSuccess.from(
    GetPedidoVentaLineaMutation other,
    int result,
  ) => GetPedidoVentaLineaMutationSuccess._(
    other._updateState,
    other._fn,
    error: other.error,
    stackTrace: other.stackTrace,
    result: result,
  );

  @override
  final Object? error;

  @override
  final StackTrace? stackTrace;

  @override
  final int result;
}

final class GetPedidoVentaLineaMutationFailure
    extends GetPedidoVentaLineaMutation
    with MutationFailure {
  GetPedidoVentaLineaMutationFailure._(
    super._updateState,
    super._fn, {
    required this.error,
    required this.stackTrace,
    this.result,
  }) : super._();

  factory GetPedidoVentaLineaMutationFailure.from(
    GetPedidoVentaLineaMutation other, {
    required Object error,
    required StackTrace stackTrace,
  }) => GetPedidoVentaLineaMutationFailure._(
    other._updateState,
    other._fn,
    error: error,
    stackTrace: stackTrace,
    result: other.result,
  );

  @override
  final Object error;

  @override
  final StackTrace stackTrace;

  @override
  // ignore: inference_failure_on_uninitialized_variable
  final result;
}
