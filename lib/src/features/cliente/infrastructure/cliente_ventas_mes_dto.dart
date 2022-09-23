import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../domain/cliente_ventas_mes.dart';

part 'cliente_ventas_mes_dto.freezed.dart';
part 'cliente_ventas_mes_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteVentasMesDTO with _$ClienteVentasMesDTO {
  const ClienteVentasMesDTO._();
  const factory ClienteVentasMesDTO({
    @JsonKey(name: 'MES') required int mes,
    @JsonKey(name: 'IMPORTE_ANYO') required double importeAnyo,
    @JsonKey(name: 'IMPORTE_ANYO_1') required double importeAnyo_1,
    @JsonKey(name: 'IMPORTE_ANYO_2') required double importeAnyo_2,
    @JsonKey(name: 'IMPORTE_ANYO_3') required double importeAnyo_3,
    @JsonKey(name: 'IMPORTE_ANYO_4') required double importeAnyo_4,
  }) = _ClienteVentasMesDTO;

  factory ClienteVentasMesDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteVentasMesDTOFromJson(json);

  ClienteVentasMes toDomain() {
    return ClienteVentasMes(
      mes: mes,
      importeAnyo: importeAnyo.parseMoney(importeAnyo, 'EU'),
      importeAnyo_1: importeAnyo_1.parseMoney(importeAnyo_1, 'EU'),
      importeAnyo_2: importeAnyo_2.parseMoney(importeAnyo_2, 'EU'),
      importeAnyo_3: importeAnyo_3.parseMoney(importeAnyo_3, 'EU'),
      importeAnyo_4: importeAnyo_4.parseMoney(importeAnyo_4, 'EU'),
    );
  }
}
