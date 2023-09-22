import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/articulo_ventas_mes.dart';

part 'articulo_ventas_mes_todos_dto.freezed.dart';
part 'articulo_ventas_mes_todos_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ArticuloVentasMesTodosDTO with _$ArticuloVentasMesTodosDTO {
  const ArticuloVentasMesTodosDTO._();
  const factory ArticuloVentasMesTodosDTO({
    @JsonKey(name: 'MES') required int mes,
    @JsonKey(name: 'UNIDADES_ANYO_TODOS') required int unidadesAnyoTodos,
    @JsonKey(name: 'UNIDADES_ANYO_TODOS_1') required int unidadesAnyoTodos_1,
    @JsonKey(name: 'UNIDADES_ANYO_TODOS_2') required int unidadesAnyoTodos_2,
    @JsonKey(name: 'UNIDADES_ANYO_TODOS_3') required int unidadesAnyoTodos_3,
    @JsonKey(name: 'UNIDADES_ANYO_TODOS_4') required int unidadesAnyoTodos_4,
  }) = _ArticuloVentasMesTodosDTO;

  factory ArticuloVentasMesTodosDTO.fromJson(Map<String, dynamic> json) =>
      _$ArticuloVentasMesTodosDTOFromJson(json);

  ArticuloVentasMes toDomain() {
    return ArticuloVentasMes(
      mes: mes,
      unidadesAnyo: 0,
      unidadesAnyo_1: 0,
      unidadesAnyo_2: 0,
      unidadesAnyo_3: 0,
      unidadesAnyo_4: 0,
      unidadesAnyoTodos: unidadesAnyoTodos,
      unidadesAnyoTodos_1: unidadesAnyoTodos_1,
      unidadesAnyoTodos_2: unidadesAnyoTodos_2,
      unidadesAnyoTodos_3: unidadesAnyoTodos_3,
      unidadesAnyoTodos_4: unidadesAnyoTodos_4,
    );
  }
}
