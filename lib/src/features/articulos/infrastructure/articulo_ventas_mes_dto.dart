import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/articulo_ventas_mes.dart';

part 'articulo_ventas_mes_dto.freezed.dart';
part 'articulo_ventas_mes_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloVentasMesDTO with _$ArticuloVentasMesDTO {
  const ArticuloVentasMesDTO._();
  const factory ArticuloVentasMesDTO({
    @JsonKey(name: 'MES') required int mes,
    @JsonKey(name: 'UNIDADES_ANYO') required int unidadesAnyo,
    @JsonKey(name: 'UNIDADES_ANYO_1') required int unidadesAnyo_1,
    @JsonKey(name: 'UNIDADES_ANYO_2') required int unidadesAnyo_2,
    @JsonKey(name: 'UNIDADES_ANYO_3') required int unidadesAnyo_3,
    @JsonKey(name: 'UNIDADES_ANYO_4') required int unidadesAnyo_4,
  }) = _ArticuloVentasMesDTO;

  factory ArticuloVentasMesDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloVentasMesDTOFromJson(json);

  ArticuloVentasMes toDomain({ArticuloVentasMes? articulosVentasMesTodos}) {
    return ArticuloVentasMes(
      mes: mes,
      unidadesAnyo: unidadesAnyo,
      unidadesAnyo_1: unidadesAnyo_1,
      unidadesAnyo_2: unidadesAnyo_2,
      unidadesAnyo_3: unidadesAnyo_3,
      unidadesAnyo_4: unidadesAnyo_4,
      unidadesAnyoTodos: articulosVentasMesTodos?.unidadesAnyoTodos,
      unidadesAnyoTodos_1: articulosVentasMesTodos?.unidadesAnyoTodos_1,
      unidadesAnyoTodos_2: articulosVentasMesTodos?.unidadesAnyoTodos_2,
      unidadesAnyoTodos_3: articulosVentasMesTodos?.unidadesAnyoTodos_3,
      unidadesAnyoTodos_4: articulosVentasMesTodos?.unidadesAnyoTodos_4,
    );
  }
}
