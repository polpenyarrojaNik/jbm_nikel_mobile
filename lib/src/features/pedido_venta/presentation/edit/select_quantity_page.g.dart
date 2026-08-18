// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_quantity_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(SelectQuantityPageController)
final selectQuantityPageControllerProvider =
    SelectQuantityPageControllerFamily._();

final class SelectQuantityPageControllerProvider
    extends
        $AsyncNotifierProvider<
          SelectQuantityPageController,
          SelectQuantityInitialData
        > {
  SelectQuantityPageControllerProvider._({
    required SelectQuantityPageControllerFamily super.from,
    required ({String clienteId, String articuloId}) super.argument,
  }) : super(
         retry: null,
         name: r'selectQuantityPageControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$selectQuantityPageControllerHash();

  @override
  String toString() {
    return r'selectQuantityPageControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  SelectQuantityPageController create() => SelectQuantityPageController();

  @override
  bool operator ==(Object other) {
    return other is SelectQuantityPageControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$selectQuantityPageControllerHash() =>
    r'48d80014293ec5d6cae397a00396ffc6a73b5359';

final class SelectQuantityPageControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          SelectQuantityPageController,
          AsyncValue<SelectQuantityInitialData>,
          SelectQuantityInitialData,
          FutureOr<SelectQuantityInitialData>,
          ({String clienteId, String articuloId})
        > {
  SelectQuantityPageControllerFamily._()
    : super(
        retry: null,
        name: r'selectQuantityPageControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  SelectQuantityPageControllerProvider call({
    required String clienteId,
    required String articuloId,
  }) => SelectQuantityPageControllerProvider._(
    argument: (clienteId: clienteId, articuloId: articuloId),
    from: this,
  );

  @override
  String toString() => r'selectQuantityPageControllerProvider';
}

abstract class _$SelectQuantityPageController
    extends $AsyncNotifier<SelectQuantityInitialData> {
  late final _$args = ref.$arg as ({String clienteId, String articuloId});
  String get clienteId => _$args.clienteId;
  String get articuloId => _$args.articuloId;

  FutureOr<SelectQuantityInitialData> build({
    required String clienteId,
    required String articuloId,
  });
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref =
        this.ref
            as $Ref<
              AsyncValue<SelectQuantityInitialData>,
              SelectQuantityInitialData
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<SelectQuantityInitialData>,
                SelectQuantityInitialData
              >,
              AsyncValue<SelectQuantityInitialData>,
              Object?,
              Object?
            >;
    return element.handleCreate(
      ref,
      () => build(clienteId: _$args.clienteId, articuloId: _$args.articuloId),
    );
  }
}
