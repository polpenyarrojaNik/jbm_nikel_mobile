import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

part 'articulo_grupo_neto.freezed.dart';

@freezed
class ArticuloGrupoNeto with _$ArticuloGrupoNeto {
  const ArticuloGrupoNeto._();
  const factory ArticuloGrupoNeto({
    required String articuloId,
    required String grupoNetoId,
    required String grupoNetoDescripcion,
    required int cantidadDesde,
    required Money precio,
    required String divisaId,
    required int tipoPrecio,
    required DateTime lastUpdated,
    required bool deleted,
  }) = _ArticuloGrupoNeto;
}
