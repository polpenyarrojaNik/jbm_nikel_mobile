import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/recomendacion_producto.dart';

part 'recomendacion_producto_dto.freezed.dart';
part 'recomendacion_producto_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
abstract class RecomendacionProductoDTO with _$RecomendacionProductoDTO {
  const RecomendacionProductoDTO._();
  const factory RecomendacionProductoDTO({
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'PROBABILIDAD') required double probabilidad,
    @JsonKey(name: 'MOTIVO') required String motivo,
  }) = _RecomendacionProductoDTO;

  factory RecomendacionProductoDTO.fromJson(Map<String, dynamic> json) =>
      _$RecomendacionProductoDTOFromJson(json);

  factory RecomendacionProductoDTO.fromDomain(
    RecomendacionProducto recomendacion,
  ) {
    return RecomendacionProductoDTO(
      articuloId: recomendacion.articuloId,
      probabilidad: recomendacion.probabilidad / 100,
      motivo: recomendacion.motivo,
    );
  }

  RecomendacionProducto toDomain(String? articuloDescripcion) {
    return RecomendacionProducto(
      articuloId: articuloId,
      descripcion: articuloDescripcion,
      probabilidad: probabilidad * 100,
      motivo: motivo,
    );
  }
}
