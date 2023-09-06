import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/helpers/extension.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';

import '../domain/cliente_precio_neto.dart';

part 'cliente_precio_neto_dto.freezed.dart';
part 'cliente_precio_neto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClientePrecioNetoDTO
    with _$ClientePrecioNetoDTO
    implements Insertable<ClientePrecioNetoDTO> {
  const ClientePrecioNetoDTO._();
  const factory ClientePrecioNetoDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'PRECIO') required double precio,
    @JsonKey(name: 'TIPO_PRECIO') int? tipoPrecio,
    @JsonKey(name: 'DTO_ADICIONAL') double? dtoAdicional,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClientePrecioNetoDTO;

  factory ClientePrecioNetoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClientePrecioNetoDTOFromJson(json);

  ClientePrecioNeto toDomain(
      {required String? divisaId, required String descripcion}) {
    return ClientePrecioNeto(
      clienteId: clienteId,
      articuloId: articuloId,
      descripcion: descripcion,
      cantidadDesde: cantidadDesde,
      precio: precio.toMoney(currencyId: divisaId),
      tipoPrecio: tipoPrecio,
      dtoAdicional: dtoAdicional,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClientePrecioNetoTableCompanion(
      clienteId: Value(clienteId),
      articuloId: Value(articuloId),
      cantidadDesde: Value(cantidadDesde),
      precio: Value(precio),
      tipoPrecio: Value(tipoPrecio),
      dtoAdicional: Value(dtoAdicional),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClientePrecioNetoDTO)
class ClientePrecioNetoTable extends Table {
  @override
  String get tableName => 'CLIENTES_PRECIOS_NETOS';

  @override
  Set<Column> get primaryKey => {clienteId, articuloId, cantidadDesde};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  IntColumn get cantidadDesde => integer().named('CANTIDAD_DESDE')();
  RealColumn get precio => real().named('PRECIO')();
  IntColumn get tipoPrecio => integer().nullable().named('TIPO_PRECIO')();
  RealColumn get dtoAdicional => real().nullable().named('DTO_ADICIONAL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
