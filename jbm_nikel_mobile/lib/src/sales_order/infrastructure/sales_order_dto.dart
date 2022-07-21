import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/extension.dart';

import '../domain/sales_order.dart';

part 'sales_order_dto.freezed.dart';
part 'sales_order_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class SalesOrderDTO with _$SalesOrderDTO {
  const SalesOrderDTO._();
  const factory SalesOrderDTO({
    @JsonKey(name: 'EMPRESA_ID') required String companyId,
    @JsonKey(name: 'PEDIDO_ID') required String salesOrderId,
    @JsonKey(name: 'FECHA_PEDIDO') required DateTime salesOrderDate,
    @JsonKey(name: 'TIPO_VENTA') required String salesType,
    @JsonKey(name: 'CLIENTE_ID') required String customerId,
    @JsonKey(name: 'NOMBRE_CLIENTE') required String? customerName,
    @JsonKey(name: 'DIRECCION_ENVIO1') required String? shippingAddress1,
    @JsonKey(name: 'DIRECCION_ENVIO2') required String? shippingAddress2,
    @JsonKey(name: 'CODIGO_POSTAL') required String? zipCode,
    @JsonKey(name: 'POBLACION') required String? city,
    @JsonKey(name: 'PROVINCIA') required String? state,
    @JsonKey(name: 'PAIS_ID') required String? countryId,
    @JsonKey(name: 'DIVISA_ID') required String divisaId,
    @JsonKey(name: 'BASE_IMPONIBLE', defaultValue: '0') required String taxBase,
    @JsonKey(name: 'IMPORTE_IVA', defaultValue: '0') required String ivaAmount,
    @JsonKey(name: 'TOTAL', defaultValue: '0') required String total,
    @JsonKey(name: 'LAST_UPDATED', defaultValue: null)
        required DateTime? lastUpdated,
    @JsonKey(name: 'DELETED', fromJson: SalesOrderDTO._boolFromString, toJson: SalesOrderDTO._boolToString)
        required bool deleted,
  }) = _SalesOrderDTO;

  factory SalesOrderDTO.fromJson(Map<String, dynamic> json) =>
      _$SalesOrderDTOFromJson(json);

  factory SalesOrderDTO.fromDomain(SalesOrder _) {
    return SalesOrderDTO(
      companyId: _.companyId,
      salesOrderId: _.salesOrderId,
      salesOrderDate: _.salesOrderDate,
      salesType: _.salesType,
      customerName: _.customerName,
      customerId: _.customerId,
      shippingAddress1: _.shippingAddress1,
      shippingAddress2: _.shippingAddress2,
      zipCode: _.zipCode,
      city: _.city,
      state: _.state,
      countryId: _.countryId,
      divisaId: _.divisaId,
      taxBase: _.taxBase.toString(),
      ivaAmount: _.ivaAmount.toString(),
      total: _.total.toString(),
      lastUpdated: _.lastUpdated,
      deleted: _.deleted,
    );
  }

  SalesOrder toDomain() {
    return SalesOrder(
        companyId: companyId,
        salesOrderId: salesOrderId,
        salesOrderDate: salesOrderDate,
        salesType: salesType,
        customerId: customerId,
        customerName: customerName,
        shippingAddress1: shippingAddress1,
        shippingAddress2: shippingAddress2,
        zipCode: zipCode,
        city: city,
        state: state,
        countryId: countryId,
        divisaId: divisaId,
        taxBase: taxBase.parseMoney(divisaId),
        ivaAmount: ivaAmount.parseMoney(divisaId),
        total: total.parseMoney(divisaId),
        lastUpdated: lastUpdated,
        deleted: deleted);
  }

  Map<String, dynamic> toSembast() {
    final json = toJson();
    json.remove('NUM_PED_CLI');
    return json;
  }

  static bool _boolFromString(String value) => value == 'S';

  static String _boolToString(bool value) => (value) ? 'S' : 'N';
}
