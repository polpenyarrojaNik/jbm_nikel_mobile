import 'package:freezed_annotation/freezed_annotation.dart';

part 'articulo_ventas_mes.freezed.dart';

@freezed
class ArticuloVentasMes with _$ArticuloVentasMes {
  const ArticuloVentasMes._();
  const factory ArticuloVentasMes({
    required int mes,
    required int unidadesAnyo,
    required int unidadesAnyo_1,
    required int unidadesAnyo_2,
    required int unidadesAnyo_3,
    required int unidadesAnyo_4,
  }) = _ArticuloVentasMes;
}
