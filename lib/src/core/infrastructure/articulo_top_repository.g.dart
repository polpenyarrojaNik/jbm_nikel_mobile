// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_top_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(articuloTopRepository)
const articuloTopRepositoryProvider = ArticuloTopRepositoryProvider._();

final class ArticuloTopRepositoryProvider
    extends
        $FunctionalProvider<
          ArticuloTopRepository,
          ArticuloTopRepository,
          ArticuloTopRepository
        >
    with $Provider<ArticuloTopRepository> {
  const ArticuloTopRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articuloTopRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articuloTopRepositoryHash();

  @$internal
  @override
  $ProviderElement<ArticuloTopRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ArticuloTopRepository create(Ref ref) {
    return articuloTopRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ArticuloTopRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ArticuloTopRepository>(value),
    );
  }
}

String _$articuloTopRepositoryHash() =>
    r'585152a87c3889c7ebd101d862ba731caf5bfca9';

@ProviderFor(ArticuloTopList)
const articuloTopListProvider = ArticuloTopListFamily._();

final class ArticuloTopListProvider
    extends $AsyncNotifierProvider<ArticuloTopList, List<ArticuloTop>> {
  const ArticuloTopListProvider._({
    required ArticuloTopListFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'articuloTopListProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$articuloTopListHash();

  @override
  String toString() {
    return r'articuloTopListProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  ArticuloTopList create() => ArticuloTopList();

  @override
  bool operator ==(Object other) {
    return other is ArticuloTopListProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$articuloTopListHash() => r'6b58792637caf5b3c9264baa99e34b239534fa5b';

final class ArticuloTopListFamily extends $Family
    with
        $ClassFamilyOverride<
          ArticuloTopList,
          AsyncValue<List<ArticuloTop>>,
          List<ArticuloTop>,
          FutureOr<List<ArticuloTop>>,
          String
        > {
  const ArticuloTopListFamily._()
    : super(
        retry: null,
        name: r'articuloTopListProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  ArticuloTopListProvider call(String clienteId) =>
      ArticuloTopListProvider._(argument: clienteId, from: this);

  @override
  String toString() => r'articuloTopListProvider';
}

abstract class _$ArticuloTopList extends $AsyncNotifier<List<ArticuloTop>> {
  late final _$args = ref.$arg as String;
  String get clienteId => _$args;

  FutureOr<List<ArticuloTop>> build(String clienteId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref as $Ref<AsyncValue<List<ArticuloTop>>, List<ArticuloTop>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<ArticuloTop>>, List<ArticuloTop>>,
              AsyncValue<List<ArticuloTop>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
