import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/familia.dart';
import '../../../core/domain/subfamilia.dart';
import '../../../core/infrastructure/familia_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../../../core/infrastructure/subfamilia_dto.dart';
import '../domain/cliente_descuento.dart';

part 'cliente_descuento_dto.freezed.dart';
part 'cliente_descuento_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteDescuentoDTO
    with _$ClienteDescuentoDTO
    implements Insertable<ClienteDescuentoDTO> {
  const ClienteDescuentoDTO._();
  const factory ClienteDescuentoDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'ARTICULO_ID') required String articuloId,
    @JsonKey(name: 'FAMILIA_ID') required String familiaId,
    @JsonKey(name: 'SUBFAMILIA_ID') required String subfamiliaId,
    @JsonKey(name: 'CANTIDAD_DESDE') required int cantidadDesde,
    @JsonKey(name: 'DESCUENTO') required double descuento,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteDescuentoDTO;

  factory ClienteDescuentoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDescuentoDTOFromJson(json);

  ClienteDescuento toDomain({
    required Familia familia,
    required Subfamilia subfamilia,
    required String? descripcion,
  }) {
    return ClienteDescuento(
      clienteId: clienteId,
      articuloId: articuloId,
      descripcion: descripcion,
      familia: familia,
      subfamilia: subfamilia,
      cantidadDesde: cantidadDesde,
      descuento: descuento,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S'),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteDescuentoTableCompanion(
      clienteId: Value(clienteId),
      articuloId: Value(articuloId),
      familiaId: Value(familiaId),
      subfamiliaId: Value(subfamiliaId),
      cantidadDesde: Value(cantidadDesde),
      descuento: Value(descuento),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteDescuentoDTO)
class ClienteDescuentoTable extends Table {
  @override
  String get tableName => 'CLIENTES_DESCUENTOS';

  @override
  Set<Column> get primaryKey => {
    clienteId,
    articuloId,
    familiaId,
    subfamiliaId,
    cantidadDesde,
  };

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get articuloId => text().named('ARTICULO_ID')();
  TextColumn get familiaId =>
      text().references(FamiliaTable, #id).named('FAMILIA_ID')();
  TextColumn get subfamiliaId =>
      text().references(SubfamiliaTable, #id).named('SUBFAMILIA_ID')();
  IntColumn get cantidadDesde => integer().named('CANTIDAD_DESDE')();
  RealColumn get descuento => real().named('DESCUENTO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
