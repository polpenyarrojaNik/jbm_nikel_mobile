import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_grupo_neto.freezed.dart';

@freezed
class ArticuloGrupoNeto with _$ArticuloGrupoNeto {
  const ArticuloGrupoNeto._();
  const factory ArticuloGrupoNeto(
      {required String articuloId,
      required String grupoNetoId,
      String? grupoNetoDescripcion,
      required double cantidadDesDe,
      required double precio,
      double? tipoPrecio,
      required DateTime lastUpdated,
      required bool deleted}) = _ArticuloGrupoNeto;
}
