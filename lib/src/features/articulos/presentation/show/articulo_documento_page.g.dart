// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articulo_documento_page.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetArticuloDocumentoListaById)
const getArticuloDocumentoListaByIdProvider =
    GetArticuloDocumentoListaByIdFamily._();

final class GetArticuloDocumentoListaByIdProvider
    extends
        $AsyncNotifierProvider<
          GetArticuloDocumentoListaById,
          List<ArticuloDocumento>
        > {
  const GetArticuloDocumentoListaByIdProvider._({
    required GetArticuloDocumentoListaByIdFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticuloDocumentoListaByIdProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticuloDocumentoListaByIdHash();

  @override
  String toString() {
    return r'getArticuloDocumentoListaByIdProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  GetArticuloDocumentoListaById create() => GetArticuloDocumentoListaById();

  @override
  bool operator ==(Object other) {
    return other is GetArticuloDocumentoListaByIdProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticuloDocumentoListaByIdHash() =>
    r'0d64bc08e65560b6615d4928f373620a3e3f0f53';

final class GetArticuloDocumentoListaByIdFamily extends $Family
    with
        $ClassFamilyOverride<
          GetArticuloDocumentoListaById,
          AsyncValue<List<ArticuloDocumento>>,
          List<ArticuloDocumento>,
          FutureOr<List<ArticuloDocumento>>,
          String
        > {
  const GetArticuloDocumentoListaByIdFamily._()
    : super(
        retry: null,
        name: r'getArticuloDocumentoListaByIdProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticuloDocumentoListaByIdProvider call(String articuloId) =>
      GetArticuloDocumentoListaByIdProvider._(argument: articuloId, from: this);

  @override
  String toString() => r'getArticuloDocumentoListaByIdProvider';
}

abstract class _$GetArticuloDocumentoListaById
    extends $AsyncNotifier<List<ArticuloDocumento>> {
  late final _$args = ref.$arg as String;
  String get articuloId => _$args;

  FutureOr<List<ArticuloDocumento>> build(String articuloId);
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build(_$args);
    final ref =
        this.ref
            as $Ref<
              AsyncValue<List<ArticuloDocumento>>,
              List<ArticuloDocumento>
            >;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<
                AsyncValue<List<ArticuloDocumento>>,
                List<ArticuloDocumento>
              >,
              AsyncValue<List<ArticuloDocumento>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}
