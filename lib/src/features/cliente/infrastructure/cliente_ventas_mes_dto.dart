import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/helpers/extension.dart';
import '../domain/cliente_ventas_mes.dart';

part 'cliente_ventas_mes_dto.freezed.dart';
part 'cliente_ventas_mes_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteVentasMesDTO with _$ClienteVentasMesDTO {
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
      importeAnyo: importeAnyo.toMoney(),
      importeAnyo_1: importeAnyo_1.toMoney(),
      importeAnyo_2: importeAnyo_2.toMoney(),
      importeAnyo_3: importeAnyo_3.toMoney(),
      importeAnyo_4: importeAnyo_4.toMoney(),
    );
  }
}
