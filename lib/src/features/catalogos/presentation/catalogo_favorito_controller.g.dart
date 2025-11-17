// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catalogo_favorito_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CatalogoFavoritoController)
const catalogoFavoritoControllerProvider = CatalogoFavoritoControllerFamily._();

final class CatalogoFavoritoControllerProvider
    extends $AsyncNotifierProvider<CatalogoFavoritoController, bool> {
  const CatalogoFavoritoControllerProvider._({
    required CatalogoFavoritoControllerFamily super.from,
    required int super.argument,
  }) : super(
         retry: null,
         name: r'catalogoFavoritoControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$catalogoFavoritoControllerHash();

  @override
  String toString() {
    return r'catalogoFavoritoControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  CatalogoFavoritoController create() => CatalogoFavoritoController();

  @override
  bool operator ==(Object other) {
    return other is CatalogoFavoritoControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$catalogoFavoritoControllerHash() =>
    r'efe21f13cd9c346721fd787fcd60147e70198083';

final class CatalogoFavoritoControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          CatalogoFavoritoController,
          AsyncValue<bool>,
          bool,
          FutureOr<bool>,
          int
        > {
  const CatalogoFavoritoControllerFamily._()
    : super(
        retry: null,
        name: r'catalogoFavoritoControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  CatalogoFavoritoControllerProvider call(int catalogoId) =>
      CatalogoFavoritoControllerProvider._(argument: catalogoId, from: this);

  @override
  String toString() => r'catalogoFavoritoControllerProvider';
}

abstract class _$CatalogoFavoritoController extends $AsyncNotifier<bool> {
  late final _$args = ref.$arg as int;
  int get catalogoId => _$args;

  FutureOr<bool> build(int catalogoId);
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
