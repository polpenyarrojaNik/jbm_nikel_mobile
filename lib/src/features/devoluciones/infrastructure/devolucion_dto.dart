import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../core/infrastructure/remote_database.dart';

import '../../../core/domain/pais.dart';
import '../domain/devolucion.dart';
import '../domain/devolucion_estado.dart';

part 'devolucion_dto.freezed.dart';
part 'devolucion_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class DevolucionDTO with _$DevolucionDTO implements Insertable<DevolucionDTO> {
  const DevolucionDTO._();
  const factory DevolucionDTO({
    @JsonKey(name: 'EMPRESA_ID') required String empresaId,
    @JsonKey(name: 'DEVOLUCION_ID') required String id,
    @JsonKey(name: 'FECHA_DEVOLUCION') required DateTime fechaDevolucion,
    @JsonKey(name: 'CLIENTE_ID') String? clienteId,
    @JsonKey(name: 'DIRECCION_ID') String? direccionId,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'DIRECCION_RECOGIDA1') String? direccionRecogida1,
    @JsonKey(name: 'DIRECCION_RECOGIDA2') String? direccionRecogida2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'ALMACEN_DESTINO') String? almacenDestino,
    @JsonKey(name: 'AGENCIA_TRANSPORTE') String? agenciaTransporte,
    @JsonKey(name: 'DEVOLUCION_ESTADO_ID') required String devolucionEstadoId,
    @JsonKey(name: 'KILOS_DEVOLUCION') required double kilosDevolucion,
    @JsonKey(name: 'BULTOS') required double bultos,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') required String deleted,
  }) = _DevolucionDTO;

  factory DevolucionDTO.fromJson(Map<String, dynamic> json) =>
      _$DevolucionDTOFromJson(json);

  Devolucion toDomain({
    required DevolucionEstado devolucionEstado,
    Pais? pais,
  }) {
    return Devolucion(
      empresaId: empresaId,
      id: id,
      fechaDevolucion: fechaDevolucion,
      clienteId: clienteId,
      direccionId: direccionId,
      nombre: nombre,
      direccionRecogida1: direccionRecogida1,
      direccionRecogida2: direccionRecogida2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      pais: pais,
      almacenDestino: almacenDestino,
      agenciaTransporte: agenciaTransporte,
      devolucionEstado: devolucionEstado,
      kilosDevolucion: kilosDevolucion,
      bultos: bultos,
      lastUpdated: lastUpdated,
      deleted: deleted == 'S',
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return DevolucionTableCompanion(
      empresaId: Value(empresaId),
      id: Value(id),
      fechaDevolucion: Value(fechaDevolucion),
      clienteId: Value(clienteId),
      direccionId: Value(direccionId),
      nombre: Value(nombre),
      direccionRecogida1: Value(direccionRecogida1),
      direccionRecogida2: Value(direccionRecogida2),
      codigoPostal: Value(codigoPostal),
      poblacion: Value(poblacion),
      paisId: Value(paisId),
      almacenDestino: Value(almacenDestino),
      agenciaTransporte: Value(agenciaTransporte),
      devolucionEstadoId: Value(devolucionEstadoId),
      kilosDevolucion: Value(kilosDevolucion),
      bultos: Value(bultos),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(DevolucionDTO)
class DevolucionTable extends Table {
  TextColumn get empresaId => text().named('EMPRESA_ID')();
  TextColumn get id => text().named('DEVOLUCION_ID')();
  DateTimeColumn get fechaDevolucion => dateTime().named('FECHA_DEVOLUCION')();
  TextColumn get clienteId => text().nullable().named('CLIENTE_ID')();
  TextColumn get direccionId => text().nullable().named('DIRECCION_ID')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get direccionRecogida1 =>
      text().nullable().named('DIRECCION_RECOGIDA1')();
  TextColumn get direccionRecogida2 =>
      text().nullable().named('DIRECCION_RECOGIDA2')();
  TextColumn get codigoPostal => text().nullable().named('CODIGO_POSTAL')();
  TextColumn get poblacion => text().nullable().named('POBLACION')();
  TextColumn get paisId => text().nullable().named('PAIS_ID')();
  TextColumn get almacenDestino => text().nullable().named('ALMACEN_DESTINO')();
  TextColumn get agenciaTransporte =>
      text().nullable().named('AGENCIA_TRANSPORTE')();
  TextColumn get devolucionEstadoId => text().named('DEVOLUCION_ESTADO_ID')();
  RealColumn get kilosDevolucion => real().named('KILOS_DEVOLUCION')();
  RealColumn get bultos => real().named('BULTOS')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {id, empresaId};

  @override
  String get tableName => 'DEVOLUCIONES';
}
