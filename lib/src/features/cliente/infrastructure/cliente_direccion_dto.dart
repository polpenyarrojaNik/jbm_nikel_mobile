import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/pais.dart';
import '../../../core/infrastructure/pais_dto.dart';
import '../../../core/infrastructure/remote_database.dart';
import '../domain/cliente_direccion.dart';
import 'cliente_direccion_imp_dto.dart';

part 'cliente_direccion_dto.freezed.dart';
part 'cliente_direccion_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteDireccionDTO
    with _$ClienteDireccionDTO
    implements Insertable<ClienteDireccionDTO> {
  const ClienteDireccionDTO._();
  const factory ClienteDireccionDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'DIRECCION_ID') required String? direccionId,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'DIRECCION1') String? direccion1,
    @JsonKey(name: 'DIRECCION2') String? direccion2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,
    @JsonKey(name: 'TELEFONO') String? telefono,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteDireccionDTO;

  factory ClienteDireccionDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDireccionDTOFromJson(json);

  factory ClienteDireccionDTO.fromDireccionImp(
    ClienteDireccionImpDTO clienteDireccionImpDTO,
  ) {
    return ClienteDireccionDTO(
      clienteId: clienteDireccionImpDTO.clienteId,
      direccionId: clienteDireccionImpDTO.direccionId,
      nombre: clienteDireccionImpDTO.nombre,
      direccion1: clienteDireccionImpDTO.direccion1,
      direccion2: clienteDireccionImpDTO.direccion2,
      codigoPostal: clienteDireccionImpDTO.codigoPostal,
      poblacion: clienteDireccionImpDTO.poblacion,
      provincia: clienteDireccionImpDTO.provincia,
      paisId: clienteDireccionImpDTO.paisId,
      latitud: 0,
      longitud: 0,
      predeterminada: 'N',
      telefono: clienteDireccionImpDTO.telefono,
      lastUpdated: DateTime.now().toUtc(),
      deleted: clienteDireccionImpDTO.borrar,
    );
  }

  ClienteDireccion toDomain(
    Pais? pais, {
    bool enviada = true,
    bool tratada = true,
    String? direccionImpGuid,
  }) {
    return ClienteDireccion(
      clienteId: clienteId,
      direccionId: direccionId,
      direccionImpGuid: direccionImpGuid,
      nombre: nombre,
      direccion1: direccion1,
      direccion2: direccion2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      latitud: latitud,
      longitud: longitud,
      predeterminada: (predeterminada == 'S'),
      lastUpdated: lastUpdated,
      enviada: enviada,
      telefono: telefono,
      tratada: tratada,
      deleted: (deleted == 'S'),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteDireccionTableCompanion(
      clienteId: Value(clienteId),
      direccionId: Value(direccionId!),
      nombre: Value(nombre),
      direccion1: Value(direccion1),
      direccion2: Value(direccion2),
      codigoPostal: Value(codigoPostal),
      poblacion: Value(poblacion),
      provincia: Value(provincia),
      paisId: Value(paisId),
      latitud: Value(latitud),
      longitud: Value(longitud),
      predeterminada: Value(predeterminada),
      telefono: Value(telefono),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteDireccionDTO)
class ClienteDireccionTable extends Table {
  @override
  String get tableName => 'CLIENTES_DIRECCIONES_ENVIO';

  @override
  Set<Column> get primaryKey => {clienteId, direccionId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get direccionId => text().named('DIRECCION_ID')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get direccion1 => text().nullable().named('DIRECCION1')();
  TextColumn get direccion2 => text().nullable().named('DIRECCION2')();
  TextColumn get codigoPostal => text().nullable().named('CODIGO_POSTAL')();
  TextColumn get poblacion => text().nullable().named('POBLACION')();
  TextColumn get provincia => text().nullable().named('PROVINCIA')();
  TextColumn get paisId =>
      text().nullable().references(PaisTable, #id).named('PAIS_ID')();
  RealColumn get latitud => real().named('LATITUD')();
  RealColumn get longitud => real().named('LONGITUD')();
  TextColumn get predeterminada =>
      text().nullable().named('PREDETERMINADA_SN')();
  TextColumn get telefono => text().nullable().named('TELEFONO')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
