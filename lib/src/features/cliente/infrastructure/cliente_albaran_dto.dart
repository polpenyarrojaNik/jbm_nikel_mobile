import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/pais.dart';
import '../domain/cliente_albaran.dart';

part 'cliente_albaran_dto.freezed.dart';
part 'cliente_albaran_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteAlbaranDTO with _$ClienteAlbaranDTO {
  const ClienteAlbaranDTO._();
  const factory ClienteAlbaranDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'ALBARAN_ID') required String albaranId,
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'FECHA_EMISION') required DateTime fechaAlbaran,
    @JsonKey(name: 'CODIGO_POSTAL') required String? zipCode,
    @JsonKey(name: 'POBLACION') required String? poblacion,
    @JsonKey(name: 'PAIS_ID') required String? paisId,
    @JsonKey(name: 'PROVINCIA') required String? provincia,
    @JsonKey(name: 'BASE_IMPONIBLE') required double baseImponible,
    @JsonKey(name: 'DOCUMENTO_PDF') required String documentoPdf,
    @JsonKey(name: 'ARCHIVO_EXISTE_SN') required String archivoExiste,
  }) = _ClienteAlbaranDTO;

  factory ClienteAlbaranDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteAlbaranDTOFromJson(json);

  ClienteAlbaran toDomain(Pais? pais, String? divisaId) {
    return ClienteAlbaran(
      clienteId: clienteId,
      empresaId: empresaId,
      albaranId: albaranId,
      fechaAlbaran: fechaAlbaran.toUtc(),
      baseImponible: Money.fromNum(baseImponible, isoCode: divisaId ?? 'EU'),
      zipCode: zipCode,
      poblacion: poblacion,
      pais: pais,
      provincia: provincia,
      documentoPdf: documentoPdf,
      archivoExiste: archivoExiste == 'S',
    );
  }
}
