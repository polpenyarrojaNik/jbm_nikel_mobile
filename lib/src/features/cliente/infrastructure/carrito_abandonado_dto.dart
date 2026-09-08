import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/carrito_abandonado.dart';

part 'carrito_abandonado_dto.freezed.dart';
part 'carrito_abandonado_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class CarritoAbandonadoDTO with _$CarritoAbandonadoDTO {
  const CarritoAbandonadoDTO._();
  const factory CarritoAbandonadoDTO({
    @JsonKey(name: 'CARRITO_ID') required int carritoId,
    @JsonKey(name: 'ESTADO') required String status,
    @JsonKey(name: 'COD_CLI') required String customerId,
    @JsonKey(name: 'COD_CONTACTO') required String contactoId,
    @JsonKey(name: 'LINEAS') required List<CarritoAbandonadoLineaDTO> lineas,
  }) = _CarritoAbandonadoDTO;

  factory CarritoAbandonadoDTO.fromJson(Map<String, dynamic> json) =>
      _$CarritoAbandonadoDTOFromJson(json);

  CarritoAbandonado toDomain({
    required String customerName,
    required String contactName,
  }) {
    return CarritoAbandonado(
      carritoId: carritoId,
      status: CarritoAbandonadoStatus.values.firstWhere(
        (e) => e.name == status.toLowerCase(),
        orElse: () => CarritoAbandonadoStatus.pending,
      ),
      customerId: customerId,
      customerName: customerName,
      contactId: contactoId,
      contactName: contactName,
      lineas: lineas.map((e) => e.toDomain()).toList(),
    );
  }
}

@freezed
abstract class CarritoAbandonadoLineaDTO with _$CarritoAbandonadoLineaDTO {
  const CarritoAbandonadoLineaDTO._();
  const factory CarritoAbandonadoLineaDTO({
    @JsonKey(name: 'CARRITO_LIN_ID') required String carritoLineaId,
    @JsonKey(name: 'COD_CLI') required String customerId,
    @JsonKey(name: 'COD_CONTACTO') required String contactoId,
    @JsonKey(name: 'COD_ART') required String articleId,
    @JsonKey(name: 'CANTIDAD') required int quantity,
  }) = _CarritoAbandonadoLineaDTO;

  factory CarritoAbandonadoLineaDTO.fromJson(Map<String, dynamic> json) =>
      _$CarritoAbandonadoLineaDTOFromJson(json);

  CarritoAbandonadoLinea toDomain() {
    return CarritoAbandonadoLinea(
      carritoLineaId: carritoLineaId,
      customerId: customerId,
      contactId: contactoId,
      articleId: articleId,
      quantity: quantity,
    );
  }
}
