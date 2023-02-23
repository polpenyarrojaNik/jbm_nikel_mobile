import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/pais.dart';

import '../../../core/infrastructure/local_database.dart';
import '../domain/cliente_direccion_imp.dart';

part 'cliente_direccion_imp_dto.freezed.dart';
part 'cliente_direccion_imp_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteDireccionImpDTO
    with _$ClienteDireccionImpDTO
    implements Insertable<ClienteDireccionImpDTO> {
  const ClienteDireccionImpDTO._();
  const factory ClienteDireccionImpDTO({
    @JsonKey(name: 'GUID') required String id,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'USUARIO_ID') required String usuarioId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'DIRECCION_ID') required String? direccionId,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'DIRECCION1') String? direccion1,
    @JsonKey(name: 'DIRECCION2') String? direccion2,
    @JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,
    @JsonKey(name: 'POBLACION') String? poblacion,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'PAIS_ID') String? paisId,
    @JsonKey(name: 'ENVIADA', defaultValue: 'N') required String enviada,
    @JsonKey(name: 'BORRAR', defaultValue: 'N') required String borrar,
  }) = _ClienteDireccionImpDTO;

  factory ClienteDireccionImpDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteDireccionImpDTOFromJson(json);

  factory ClienteDireccionImpDTO.fromDomain(ClienteDireccionImp _) =>
      ClienteDireccionImpDTO(
        id: _.id,
        fecha: _.fecha,
        usuarioId: _.usuarioId,
        clienteId: _.clienteId,
        direccionId: _.direccionId,
        nombre: _.nombre,
        direccion1: _.direccion1,
        direccion2: _.direccion2,
        codigoPostal: _.codigoPostal,
        poblacion: _.poblacion,
        provincia: _.provincia,
        paisId: _.pais?.id,
        enviada: _.enviada ? 'S' : 'N',
        borrar: _.borrar ? 'S' : 'N',
      );

  ClienteDireccionImp toDomain(Pais? pais) {
    return ClienteDireccionImp(
      id: id,
      fecha: fecha,
      usuarioId: usuarioId,
      clienteId: clienteId,
      direccionId: direccionId,
      nombre: nombre,
      direccion1: direccion1,
      direccion2: direccion2,
      codigoPostal: codigoPostal,
      poblacion: poblacion,
      provincia: provincia,
      pais: pais,
      enviada: enviada == 'S',
      borrar: borrar == 'S',
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteDireccionImpTableCompanion(
      id: Value(id),
      fecha: Value(fecha),
      usuarioId: Value(usuarioId),
      clienteId: Value(clienteId),
      direccionId: Value(direccionId),
      nombre: Value(nombre),
      direccion1: Value(direccion1),
      direccion2: Value(direccion2),
      codigoPostal: Value(codigoPostal),
      poblacion: Value(poblacion),
      provincia: Value(provincia),
      paisId: Value(paisId),
      enviada: Value(enviada),
      borrar: Value(borrar),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteDireccionImpDTO)
class ClienteDireccionImpTable extends Table {
  @override
  String get tableName => 'CLIENTES_DIRECCIONES_ENVIO_IMP';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('GUID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get usuarioId => text().named('USUARIO_ID')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get direccionId => text().nullable().named('DIRECCION_ID')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get direccion1 => text().nullable().named('DIRECCION1')();
  TextColumn get direccion2 => text().nullable().named('DIRECCION2')();
  TextColumn get codigoPostal => text().nullable().named('CODIGO_POSTAL')();
  TextColumn get poblacion => text().nullable().named('POBLACION')();
  TextColumn get provincia => text().nullable().named('PROVINCIA')();
  TextColumn get paisId => text().nullable().named('PAIS_ID')();
  TextColumn get enviada =>
      text().withDefault(const Constant('N')).named('ENVIADA')();
  TextColumn get borrar =>
      text().withDefault(const Constant('N')).named('BORRAR')();
}
