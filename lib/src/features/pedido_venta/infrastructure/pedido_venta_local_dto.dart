import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:money2/money2.dart';

import '../../../core/domain/divisa.dart';
import '../../../core/domain/pais.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../cliente/domain/cliente.dart';
import '../../cliente/domain/cliente_direccion.dart';
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
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'NOMBRE_CLIENTE') required String nombreCliente,
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
    @JsonKey(name: 'OFERTA_SN') required String oferta,
    @JsonKey(name: 'FECHA_ALTA') required DateTime fechaAlta,
    @JsonKey(name: 'IVA') required double iva,
    @JsonKey(name: 'DTO_BONIFICACION') required double dtoBonificacion,
    @JsonKey(name: 'ENVIADA') required String enviada,
    @JsonKey(name: 'TRATADA') required String tratada,
    @JsonKey(name: 'ERROR_SYNC') String? errorSyncMessage,
  }) = _PedidoVentaLocalDTO;

  factory PedidoVentaLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$PedidoVentaLocalDTOFromJson(json);

  factory PedidoVentaLocalDTO.fromDomain(PedidoVenta _) {
    return PedidoVentaLocalDTO(
      usuarioId: _.usuarioId,
      pedidoVentaAppId: _.pedidoVentaAppId!,
      empresaId: _.empresaId,
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
      oferta: (_.oferta ?? false) ? 'S' : 'N',
      divisaId: _.divisa.id,
      iva: _.iva,
      dtoBonificacion: _.dtoBonificacion!,
      enviada: (_.enviada) ? 'S' : 'N',
      tratada: (_.tratada) ? 'S' : 'N',
      errorSyncMessage: _.errorSyncMessage,
    );
  }

  factory PedidoVentaLocalDTO.fromForm(
      String pedidoVentaAppId,
      String usuarioId,
      Cliente cliente,
      ClienteDireccion? clienteDireccion,
      String? pedidoCliente,
      String? observaciones,
      bool oferta) {
    return PedidoVentaLocalDTO(
      usuarioId: usuarioId,
      pedidoVentaAppId: pedidoVentaAppId,
      empresaId: cliente.empresaId,
      fechaAlta: DateTime.now().toUtc(),
      clienteId: cliente.id,
      nombreCliente: cliente.nombreCliente,
      direccionId: clienteDireccion?.direccionId,
      direccion1: clienteDireccion?.direccion1 ?? cliente.direccionFiscal1,
      direccion2: clienteDireccion?.direccion2 ?? cliente.direccionFiscal2,
      codigoPostal:
          clienteDireccion?.codigoPostal ?? cliente.codigoPostalFiscal,
      poblacion: clienteDireccion?.poblacion ?? cliente.poblacionFiscal,
      provincia: clienteDireccion?.provincia ?? cliente.provinciaFiscal,
      paisId: clienteDireccion?.pais!.id ?? cliente.paisFiscal!.id,
      pedidoCliente: pedidoCliente,
      observaciones: observaciones,
      oferta: oferta ? 'S' : 'N',
      divisaId: cliente.divisa!.id,
      iva: cliente.iva,
      dtoBonificacion: 0,
      enviada: 'N',
      tratada: 'N',
      errorSyncMessage: null,
    );
  }

  PedidoVenta toDomain({
    required Pais? pais,
    required Divisa divisa,
    Money? baseImponible,
    Money? importeIva,
    Money? total,
  }) {
    return PedidoVenta(
      empresaId: empresaId,
      usuarioId: usuarioId,
      pedidoVentaId: null,
      pedidoVentaAppId: pedidoVentaAppId,
      pedidoVentaDate: fechaAlta,
      tipoVenta: null,
      clienteId: clienteId,
      nombreCliente: nombreCliente,
      direccionId: direccionId,
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
      baseImponible: baseImponible,
      totalLineas: baseImponible,
      importePortes: Money.parse('0', code: divisa.id),
      importeIva: importeIva,
      total: total,
      pedidoVentaEstado: null,
      oferta: oferta == 'S' ? true : false,
      lastUpdated: DateTime.now().toUtc(),
      deleted: false,
      enviada: (enviada == 'S') ? true : false,
      tratada: (tratada == 'S') ? true : false,
      errorSyncMessage: errorSyncMessage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return PedidoVentaLocalTableCompanion(
      usuarioId: Value(usuarioId),
      pedidoVentaAppId: Value(pedidoVentaAppId),
      empresaId: Value(empresaId),
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
      oferta: Value(oferta),
      divisaId: Value(divisaId),
      iva: Value(iva),
      dtoBonificacion: Value(dtoBonificacion),
      enviada: Value(enviada),
      tratada: Value(tratada),
      errorSyncMessage: Value(errorSyncMessage),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(PedidoVentaLocalDTO)
class PedidoVentaLocalTable extends Table {
  TextColumn get usuarioId => text().nullable().named('USUARIO_ID')();
  TextColumn get pedidoVentaAppId => text().named('PEDIDO_APP_ID')();
  TextColumn get empresaId => text().named('EMPRESA_ID')();

  DateTimeColumn get fechaAlta => dateTime().named('FECHA_ALTA')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get nombreCliente => text().named('NOMBRE_CLIENTE')();
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
  TextColumn get oferta => text().named('OFERTA_SN')();
  RealColumn get iva => real().named('IVA')();
  RealColumn get dtoBonificacion => real().named('DTO_BONIFICACION')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get errorSyncMessage => text().nullable().named('ERROR_SYNC')();

  @override
  Set<Column> get primaryKey => {pedidoVentaAppId};

  @override
  String get tableName => 'PEDIDOS_LOCAL_IMP';
}
