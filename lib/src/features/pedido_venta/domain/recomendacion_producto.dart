import 'package:freezed_annotation/freezed_annotation.dart';

part 'recomendacion_producto.freezed.dart';

@freezed
abstract class RecomendacionProducto with _$RecomendacionProducto {
  const RecomendacionProducto._();
  const factory RecomendacionProducto({
    required String articuloId,
    required String? descripcion,
    required double probabilidad,
    required String motivo,
  }) = _RecomendacionProducto;
}
