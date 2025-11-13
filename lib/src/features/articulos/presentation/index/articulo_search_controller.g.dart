// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_search_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticuloIndexScreenController)
const articuloIndexScreenControllerProvider =
    ArticuloIndexScreenControllerFamily._();

final class ArticuloIndexScreenControllerProvider
    extends $AsyncNotifierProvider<ArticuloIndexScreenController, int> {
  const ArticuloIndexScreenControllerProvider._({
    required ArticuloIndexScreenControllerFamily super.from,
    required bool super.argument,
  }) : super(
         retry: null,
         name: r'articuloIndexScreenControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$articuloIndexScreenControllerHash();

  @override
  String toString() {
    return r'articuloIndexScreenControllerProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ArticuloIndexScreenController create() => ArticuloIndexScreenController();

  @override
  bool operator ==(Object other) {
    return other is ArticuloIndexScreenControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$articuloIndexScreenControllerHash() =>
    r'd55801f35878035b84da5eee57e63b27db6f70b8';

final class ArticuloIndexScreenControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ArticuloIndexScreenController,
          AsyncValue<int>,
          int,
          FutureOr<int>,
          bool
        > {
  const ArticuloIndexScreenControllerFamily._()
    : super(
        retry: null,
        name: r'articuloIndexScreenControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArticuloIndexScreenControllerProvider call(bool isSearchArticuloForForm) =>
      ArticuloIndexScreenControllerProvider._(
        argument: isSearchArticuloForForm,
        from: this,
      );

  @override
  String toString() => r'articuloIndexScreenControllerProvider';
}

abstract class _$ArticuloIndexScreenController extends $AsyncNotifier<int> {
  late final _$args = ref.$arg as bool;
  bool get isSearchArticuloForForm => _$args;

  FutureOr<int> build(bool isSearchArticuloForForm);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
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

@ProviderFor(ArticuloIndexScreenPaginatedController)
const articuloIndexScreenPaginatedControllerProvider =
    ArticuloIndexScreenPaginatedControllerFamily._();

final class ArticuloIndexScreenPaginatedControllerProvider
    extends
        $AsyncNotifierProvider<
          ArticuloIndexScreenPaginatedController,
          List<Articulo>
        > {
  const ArticuloIndexScreenPaginatedControllerProvider._({
    required ArticuloIndexScreenPaginatedControllerFamily super.from,
    required ({int page, bool isSearchArticuloForForm}) super.argument,
  }) : super(
         retry: null,
         name: r'articuloIndexScreenPaginatedControllerProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() =>
      _$articuloIndexScreenPaginatedControllerHash();

  @override
  String toString() {
    return r'articuloIndexScreenPaginatedControllerProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  ArticuloIndexScreenPaginatedController create() =>
      ArticuloIndexScreenPaginatedController();

  @override
  bool operator ==(Object other) {
    return other is ArticuloIndexScreenPaginatedControllerProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$articuloIndexScreenPaginatedControllerHash() =>
    r'4d897b7c419ab41acd639151a649f5f917183836';

final class ArticuloIndexScreenPaginatedControllerFamily extends $Family
    with
        $ClassFamilyOverride<
          ArticuloIndexScreenPaginatedController,
          AsyncValue<List<Articulo>>,
          List<Articulo>,
          FutureOr<List<Articulo>>,
          ({int page, bool isSearchArticuloForForm})
        > {
  const ArticuloIndexScreenPaginatedControllerFamily._()
    : super(
        retry: null,
        name: r'articuloIndexScreenPaginatedControllerProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArticuloIndexScreenPaginatedControllerProvider call({
    required int page,
    required bool isSearchArticuloForForm,
  }) => ArticuloIndexScreenPaginatedControllerProvider._(
    argument: (page: page, isSearchArticuloForForm: isSearchArticuloForForm),
    from: this,
  );

  @override
  String toString() => r'articuloIndexScreenPaginatedControllerProvider';
}

abstract class _$ArticuloIndexScreenPaginatedController
    extends $AsyncNotifier<List<Articulo>> {
  late final _$args = ref.$arg as ({int page, bool isSearchArticuloForForm});
  int get page => _$args.page;
  bool get isSearchArticuloForForm => _$args.isSearchArticuloForForm;

  FutureOr<List<Articulo>> build({
    required int page,
    required bool isSearchArticuloForForm,
  });
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(
      page: _$args.page,
      isSearchArticuloForForm: _$args.isSearchArticuloForForm,
    );
    final ref = this.ref as $Ref<AsyncValue<List<Articulo>>, List<Articulo>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Articulo>>, List<Articulo>>,
              AsyncValue<List<Articulo>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
