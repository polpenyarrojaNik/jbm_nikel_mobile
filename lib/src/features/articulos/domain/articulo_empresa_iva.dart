import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_empresa_iva.freezed.dart';

@freezed
class ArticuloEmpresaIva with _$ArticuloEmpresaIva {
  const ArticuloEmpresaIva._();
  const factory ArticuloEmpresaIva(
      {required String articuloId,
      required String empresaId,
      required double iva,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloEmpresaIva;
}
