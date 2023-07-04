import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_pago_pendiente.dart';

import '../domain/metodo_cobro.dart';
import 'metodo_cobro_dto.dart';

part 'cliente_pago_pendiente_dto.freezed.dart';
part 'cliente_pago_pendiente_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClientePagoPendienteDTO
    with _$ClientePagoPendienteDTO
    implements Insertable<ClientePagoPendienteDTO> {
  const ClientePagoPendienteDTO._();
  const factory ClientePagoPendienteDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'EFECTO_ID') required String efectoId,
    @JsonKey(name: 'FACTURA_ID') String? facutaId,
    @JsonKey(name: 'FECHA_FACUTRA') DateTime? fechaFactura,
    @JsonKey(name: 'FECHA_VENCIMIENTO') DateTime? fechaExpiracion,
    @JsonKey(name: 'METODO_COBRO_ID') String? metodoDeCobroId,
    @JsonKey(name: 'ESTADO_COBRO_ID') String? estadoCobroId,
    @JsonKey(name: 'IMPORTE') double? importe,
    @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
    DateTime? fechaExpiracionInicial,
    @JsonKey(name: 'VENCIDO_JBM') String? vencidoJBM,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClientePagoPendienteDTO;

  factory ClientePagoPendienteDTO.fromJson(Map<String, dynamic> json) =>
      _$ClientePagoPendienteDTOFromJson(json);

  ClientePagoPendiente toDomain(
      {required MetodoDeCobro? metodoDeCobro, required String? divisaId}) {
    return ClientePagoPendiente(
      clienteId: clienteId,
      efectoId: efectoId,
      facutaId: facutaId,
      fechaFactura: fechaFactura,
      fechaExpiracion: fechaExpiracion,
      metodoDeCobro: metodoDeCobro,
      estadoCobroId: estadoCobroId,
      importe: importe?.toMoney(currencyId: divisaId),
      fechaExpiracionInicial: fechaExpiracionInicial,
      vencidoJBM: (vencidoJBM != null) ? (vencidoJBM != 'N') : null,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClientePagoPendienteTableCompanion(
      clienteId: Value(clienteId),
      efectoId: Value(efectoId),
      facutaId: Value(facutaId),
      fechaFactura: Value(fechaFactura),
      fechaExpiracion: Value(fechaExpiracion),
      metodoDeCobroId: Value(metodoDeCobroId),
      estadoCobroId: Value(estadoCobroId),
      importe: Value(importe),
      fechaExpiracionInicial: Value(fechaExpiracionInicial),
      vencidoJBM: Value(vencidoJBM),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClientePagoPendienteDTO)
class ClientePagoPendienteTable extends Table {
  @override
  String get tableName => 'CLIENTES_PAGOS_PENDIENTES';

  @override
  Set<Column> get primaryKey => {clienteId, efectoId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get efectoId => text().named('EFECTO_ID')();
  TextColumn get facutaId => text().nullable().named('FACTURA_ID')();
  DateTimeColumn get fechaFactura =>
      dateTime().nullable().named('FECHA_FACTURA')();
  DateTimeColumn get fechaExpiracion =>
      dateTime().nullable().named('FECHA_VENCIMIENTO')();
  TextColumn get metodoDeCobroId => text()
      .nullable()
      .references(MetodoDeCobroTable, #id)
      .named('METODO_COBRO_ID')();
  TextColumn get estadoCobroId => text().nullable().named('ESTADO_COBRO_ID')();
  RealColumn get importe => real().nullable().named('IMPORTE')();
  DateTimeColumn get fechaExpiracionInicial =>
      dateTime().nullable().named('FECHA_VENCIMIENTO_INICIAL')();
  TextColumn get vencidoJBM => text().nullable().named('VENCIDO_JBM')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
