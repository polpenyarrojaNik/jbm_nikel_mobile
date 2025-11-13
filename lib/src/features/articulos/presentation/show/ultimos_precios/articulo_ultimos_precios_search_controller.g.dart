// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_ultimos_precios_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticuloUltimosPreciosIndexScreenController)
const articuloUltimosPreciosIndexScreenControllerProvider =
    ArticuloUltimosPreciosIndexScreenControllerFamily._();

final class ArticuloUltimosPreciosIndexScreenControllerProvider
    extends
        $AsyncNotifierProvider<
          ArticuloUltimosPreciosIndexScreenController,
          int
        > {
  const ArticuloUltimosPreciosIndexScreenControllerProvider._({
    required ArticuloUltimosPreciosIndexScreenControllerFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'articuloUltimosPreciosIndexScreenControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$articuloUltimosPreciosIndexScreenControllerHash();

  @override
  String toString() {
    return r'articuloUltimosPreciosIndexScreenControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ArticuloUltimosPreciosIndexScreenController create() =>
      ArticuloUltimosPreciosIndexScreenController();

  @override
  bool operator ==(Object other) {
    return other is ArticuloUltimosPreciosIndexScreenControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$articuloUltimosPreciosIndexScreenControllerHash() =>
    r'1dd1821f890011dfa5278fa991bfc60093d5d7cf';

final class ArticuloUltimosPreciosIndexScreenControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ArticuloUltimosPreciosIndexScreenController,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          String
        > {
  const ArticuloUltimosPreciosIndexScreenControllerFamily._()
    : super(
        retry: null,
        name: r'articuloUltimosPreciosIndexScreenControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArticuloUltimosPreciosIndexScreenControllerProvider call({
    required String articuloId,
  }) => ArticuloUltimosPreciosIndexScreenControllerProvider._(
    argument: articuloId,
    from: this,
  );

  @override
  String toString() => r'articuloUltimosPreciosIndexScreenControllerProvider';
}

abstract class _$ArticuloUltimosPreciosIndexScreenController
    extends $AsyncNotifier<int> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<int> build({required String articuloId});
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(articuloId: _$args);
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

@ProviderFor(ArticuloUltimosPreciosIndexScreenPaginatedController)
const articuloUltimosPreciosIndexScreenPaginatedControllerProvider =
    ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily._();

final class ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ArticuloUltimosPreciosIndexScreenPaginatedController,
          List<EstadisticasUltimosPrecios>
        > {
  const ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider._({
    required ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
    super.from,
    required ({int page, String articuloId}) super.argument,
  }) : super(
         retry: null,
         name: r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$articuloUltimosPreciosIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ArticuloUltimosPreciosIndexScreenPaginatedController create() =>
      ArticuloUltimosPreciosIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other
            is ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$articuloUltimosPreciosIndexScreenPaginatedControllerHash() =>
    r'463df4f655692cec411990f3b1d20e68fe28cc71';

final class ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily
    extends $Family
    with
        $ClassFamilyOverride<
          ArticuloUltimosPreciosIndexScreenPaginatedController,
          AsyncValue<List<EstadisticasUltimosPrecios>>,
          List<EstadisticasUltimosPrecios>,
          FutureOr<List<EstadisticasUltimosPrecios>>,
          ({int page, String articuloId})
        > {
  const ArticuloUltimosPreciosIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider call({
    required int page,
    required String articuloId,
  }) => ArticuloUltimosPreciosIndexScreenPaginatedControllerProvider._(
    argument: (page: page, articuloId: articuloId),
    from: this,
  );

  @override
  String toString() =>
      r'articuloUltimosPreciosIndexScreenPaginatedControllerProvider';
}

abstract class _$ArticuloUltimosPreciosIndexScreenPaginatedController
    extends $AsyncNotifier<List<EstadisticasUltimosPrecios>> {
  late final _$args = ref.$arg as ({int page, String articuloId});
  int get page => _$args.page;
  String get articuloId => _$args.articuloId;

  FutureOr<List<EstadisticasUltimosPrecios>> build({
    required int page,
    required String articuloId,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(page: _$args.page, articuloId: _$args.articuloId);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<EstadisticasUltimosPrecios>>,
              List<EstadisticasUltimosPrecios>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<EstadisticasUltimosPrecios>>,
                List<EstadisticasUltimosPrecios>
              >,
              AsyncValue<List<EstadisticasUltimosPrecios>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
