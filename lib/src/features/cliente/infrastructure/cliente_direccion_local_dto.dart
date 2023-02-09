import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_direccion.dart';

import '../../../core/infrastructure/local_database.dart';
import '../../../core/infrastructure/pais_dto.dart';

part 'cliente_direccion_local_dto.freezed.dart';
part 'cliente_direccion_local_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteDireccionLocalDTO
    with _$ClienteDireccionLocalDTO
    implements Insertable<ClienteDireccionLocalDTO> {
  const ClienteDireccionLocalDTO._();
  const factory ClienteDireccionLocalDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'DIRECCION_ID') required String direccionId,
    @JsonKey(name: 'NOMBRE') required String nombre,
    @JsonKey(name: 'DIRECCION1') String? direccion1,
    @JsonKey(name: 'DIRECCION2') String? direccion2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'LATITUD') required double latitud,
    @JsonKey(name: 'LONGITUD') required double longitud,
    @JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'ENVIADA') @Default('N') String enviada,
    @JsonKey(name: 'TRATADA') @Default('N') String tratada,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteDireccionLocalDTO;

  factory ClienteDireccionLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDireccionLocalDTOFromJson(json);

  factory ClienteDireccionLocalDTO.fromDomain(ClienteDireccion _) =>
      ClienteDireccionLocalDTO(
        clienteId: _.clienteId,
        direccionId: _.direccionId!,
        nombre: _.nombre,
        direccion1: _.direccion1,
        direccion2: _.direccion2,
        codigoPostal: _.codigoPostal,
        poblacion: _.poblacion,
        provincia: _.provincia,
        paisId: _.pais?.id,
        latitud: _.latitud,
        longitud: _.longitud,
        predeterminada: (_.predeterminada) ? 'S' : 'N',
        lastUpdated: _.lastUpdated,
      );

  ClienteDireccion toDomain({required Pais? pais}) {
    return ClienteDireccion(
      clienteId: clienteId,
      direccionId: direccionId,
      nombre: nombre,
      direccion1: direccion1,
      direccion2: direccion2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      latitud: latitud,
      longitud: longitud,
      predeterminada: (predeterminada == 'S') ? true : false,
      lastUpdated: lastUpdated,
      enviada: (enviada == 'S') ? true : false,
      tratada: (tratada == 'S') ? true : false,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteDireccionLocalTableCompanion(
      clienteId: Value(clienteId),
      direccionId: Value(direccionId),
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
      lastUpdated: Value(lastUpdated),
      enviada: Value(enviada),
      tratada: Value(tratada),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteDireccionLocalDTO)
class ClienteDireccionLocalTable extends Table {
  @override
  String get tableName => 'CLIENTES_DIRECCIONES_ENVIO_LOCAL_IMP';

  @override
  Set<Column> get primaryKey => {clienteId, direccionId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get direccionId => text().named('DIRECCION_ID')();
  TextColumn get nombre => text().named('NOMBRE')();
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
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get tratada =>
      text().withDefault(const Constant('N')).named('TRATADA')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
