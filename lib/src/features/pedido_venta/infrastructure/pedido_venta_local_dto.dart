import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';

import '../../../core/domain/pais.dart';
import '../../../core/domain/divisa.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../cliente/domain/cliente.dart';
import '../domain/pedido_venta.dart';

part 'pedido_venta_local_dto.freezed.dart';
part 'pedido_venta_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class PedidoVentaLocalDTO
    with _$PedidoVentaLocalDTO
    implements Insertable<PedidoVentaLocalDTO> {
  const PedidoVentaLocalDTO._();
  const factory PedidoVentaLocalDTO({
    @JsonKey(name: 'USUARIO_ID') String? usuarioId,
    @JsonKey(name: 'PEDIDO_APP_ID') required String pedidoVentaAppId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'NOMBRE_CLIENTE') String? nombreCliente,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'DIRECCION1') String? direccion1,
    @JsonKey(name: 'DIRECCION2') String? direccion2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'DIVISA_ID') String? divisaId,
    @JsonKey(name: 'PEDIDO_CLIENTE') String? pedidoCliente,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
    @JsonKey(name: 'FECHA_ALTA') required DateTime fechaAlta,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'DTO_BONIFICACION') required double dtoBonificacion,
    @JsonKey(name: 'ENVIADA') required String enviada,
    @JsonKey(name: 'TRATADA') required String tratada,
  }) = _PedidoVentaLocalDTO;

  factory PedidoVentaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaLocalDTOFromJson(json);

  factory PedidoVentaLocalDTO.fromDomain(PedidoVenta _) {
    return PedidoVentaLocalDTO(
      usuarioId: _.usuarioId,
      pedidoVentaAppId: _.pedidoVentaAppId!,
      fechaAlta: _.pedidoVentaDate,
      clienteId: _.clienteId!,
      direccionId: _.direccionId,
      nombreCliente: _.nombreCliente,
      direccion1: _.direccionEntrga1,
      direccion2: _.direccionEntrga2,
      codigoPostal: _.codigoPostal,
      poblacion: _.poblacion,
      provincia: _.provincia,
      paisId: _.pais?.id,
      pedidoCliente: _.pedidoCliente,
      observaciones: _.observaciones,
      divisaId: _.divisa.id,
      iva: _.iva,
      dtoBonificacion: _.dtoBonificacion!,
      enviada: (_.enviada) ? 'S' : 'N',
      tratada: (_.tratada) ? 'S' : 'N',
    );
  }

  factory PedidoVentaLocalDTO.fromForm(
      String usuarioId, Cliente cliente, String? observaciones) {
    return PedidoVentaLocalDTO(
      usuarioId: usuarioId,
      pedidoVentaAppId: _.pedidoVentaAppId!,
      fechaAlta: DateTime.now(),
      clienteId: cliente.id,
      direccionId: cliente.direccionId,
      nombreCliente: cliente.nombreCliente,
      direccion1: cliente.direccionFiscal1,
      direccion2: cliente.direccionFiscal2,
      codigoPostal: cliente.codigoPostalFiscal,
      poblacion: cliente.poblacionFiscal,
      provincia: cliente.provinciaFiscal,
      paisId: cliente.paisFiscal!.id,
      pedidoCliente: _.pedidoCliente,
      observaciones: observaciones,
      divisaId: cliente.divisa!.id,
      iva: _.iva,
      dtoBonificacion: _.dtoBonificacion!,
      enviada: 'N',
      tratada: 'N',
    );
  }

  PedidoVenta toDomain({
    required Pais? pais,
    required Divisa divisa,
    double? baseImponible,
    double? importeIva,
    double? total,
  }) {
    return PedidoVenta(
      empresaId: null,
      usuarioId: usuarioId,
      pedidoVentaId: null,
      pedidoVentaDate: fechaAlta,
      tipoVenta: null,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      direccionEntrga1: direccion1,
      direccionEntrga2: direccion2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      divisa: divisa,
      pedidoCliente: pedidoCliente,
      observaciones: observaciones,
      iva: iva,
      dtoBonificacion: dtoBonificacion,
      baseImponible: baseImponible?.parseMoney(baseImponible, divisaId),
      importeIva: importeIva?.parseMoney(importeIva, divisaId),
      total: total?.parseMoney(total, divisaId),
      pedidoVentaEstado: null,
      oferta: null,
      descuentoProntoPago: null,
      lastUpdated: DateTime.now(),
      deleted: false,
      enviada: (enviada == 'S') ? true : false,
      tratada: (tratada == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaLocalTableCompanion(
      usuarioId: Value(usuarioId),
      pedidoVentaAppId: Value(pedidoVentaAppId),
      fechaAlta: Value(fechaAlta),
      clienteId: Value(clienteId),
      direccionId: Value(direccionId),
      nombreCliente: Value(nombreCliente),
      direccion1: Value(direccion1),
      direccion2: Value(direccion2),
      codigoPostal: Value(codigoPostal),
      poblacion: Value(poblacion),
      provincia: Value(provincia),
      paisId: Value(paisId),
      pedidoCliente: Value(pedidoCliente),
      observaciones: Value(observaciones),
      divisaId: Value(divisaId),
      iva: Value(iva),
      dtoBonificacion: Value(dtoBonificacion),
      enviada: Value(enviada),
      tratada: Value(tratada),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaLocalDTO)
class PedidoVentaLocalTable extends Table {
  TextColumn get usuarioId => text().nullable().named('USUARIO_ID')();
  TextColumn get pedidoVentaAppId => text().named('PEDIDO_APP_ID')();
  DateTimeColumn get fechaAlta => dateTime().named('FECHA_ALTA')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get nombreCliente => text().nullable().named('NOMBRE_CLIENTE')();
  TextColumn get direccionId => text().nullable().named('DIRECCION_ID')();
  TextColumn get direccion1 => text().nullable().named('DIRECCION1')();
  TextColumn get direccion2 => text().nullable().named('DIRECCION2')();
  TextColumn get codigoPostal => text().nullable().named('CODIGO_POSTAL')();
  TextColumn get poblacion => text().nullable().named('POBLACION')();
  TextColumn get provincia => text().nullable().named('PROVINCIA')();
  TextColumn get paisId =>
      text().nullable().references(PaisTable, #id).named('PAIS_ID')();
  TextColumn get divisaId =>
      text().nullable().references(DivisaTable, #id).named('DIVISA_ID')();
  TextColumn get pedidoCliente => text().nullable().named('PEDIDO_CLIENTE')();
  TextColumn get observaciones => text().nullable().named('OBSERVACIONES')();
  RealColumn get iva => real().named('IVA')();
  RealColumn get dtoBonificacion => real().named('DTO_BONIFICACION')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();

  @override
  Set<Column> get primaryKey => {pedidoVentaAppId};

  @override
  String get tableName => 'PEDIDOS_LOCAL_IMP';
}
