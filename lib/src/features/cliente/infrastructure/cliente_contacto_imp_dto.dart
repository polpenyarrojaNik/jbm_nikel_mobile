import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/local_database.dart';
import '../domain/cliente_contacto_imp.dart';

part 'cliente_contacto_imp_dto.freezed.dart';
part 'cliente_contacto_imp_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteContactoImpDTO
    with _$ClienteContactoImpDTO
    implements Insertable<ClienteContactoImpDTO> {
  const ClienteContactoImpDTO._();
  const factory ClienteContactoImpDTO({
    @JsonKey(name: 'GUID') required String id,
    @JsonKey(name: 'FECHA') required DateTime fecha,
    @JsonKey(name: 'USUARIO_ID') required String usuarioId,
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'CONTACTO_ID') required String? contactoId,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'APELLIDO1') String? apellido1,
    @JsonKey(name: 'APELLIDO2') String? apellido2,
    @JsonKey(name: 'TELEFONO1') String? telefono1,
    @JsonKey(name: 'TELEFONO2') String? telefono2,
    @JsonKey(name: 'EMAIL') String? email,
    @JsonKey(name: 'ENVIADO', defaultValue: 'N') required String enviado,
    @JsonKey(name: 'BORRAR', defaultValue: 'N') required String borrar,
  }) = _ClienteContactoImpDTO;

  factory ClienteContactoImpDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteContactoImpDTOFromJson(json);

  factory ClienteContactoImpDTO.fromDomain(
    ClienteContactoImp clienteContactoImp,
  ) => ClienteContactoImpDTO(
    id: clienteContactoImp.id,
    fecha: clienteContactoImp.fecha,
    usuarioId: clienteContactoImp.usuarioId,
    clienteId: clienteContactoImp.clienteId,
    contactoId: clienteContactoImp.contactoId,
    observaciones: clienteContactoImp.observaciones,
    nombre: clienteContactoImp.nombre,
    apellido1: clienteContactoImp.apellido1,
    apellido2: clienteContactoImp.apellido2,
    telefono1: clienteContactoImp.telefono1,
    telefono2: clienteContactoImp.telefono2,
    email: clienteContactoImp.email,
    enviado: clienteContactoImp.enviado ? 'S' : 'N',
    borrar: clienteContactoImp.borrar ? 'S' : 'N',
  );

  ClienteContactoImp toDomain() {
    return ClienteContactoImp(
      id: id,
      fecha: fecha,
      usuarioId: usuarioId,
      clienteId: clienteId,
      contactoId: contactoId,
      observaciones: observaciones,
      nombre: nombre,
      apellido1: apellido1,
      apellido2: apellido2,
      telefono1: telefono1,
      telefono2: telefono2,
      email: email,
      enviado: enviado == 'S',
      borrar: borrar == 'S',
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteContactoImpTableCompanion(
      id: Value(id),
      fecha: Value(fecha),
      usuarioId: Value(usuarioId),
      clienteId: Value(clienteId),
      contactoId: Value(contactoId),
      observaciones: Value(observaciones),
      nombre: Value(nombre),
      apellido1: Value(apellido1),
      apellido2: Value(apellido2),
      telefono1: Value(telefono1),
      telefono2: Value(telefono2),
      email: Value(email),
      enviado: Value(enviado),
      borrar: Value(borrar),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteContactoImpDTO)
class ClienteContactoImpTable extends Table {
  @override
  String get tableName => 'CLIENTES_CONTACTOS_IMP';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('GUID')();
  DateTimeColumn get fecha => dateTime().named('FECHA')();
  TextColumn get usuarioId => text().named('USUARIO_ID')();
  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get contactoId => text().nullable().named('CONTACTO_ID')();
  TextColumn get observaciones => text().nullable().named('OBSERVACIONES')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get apellido1 => text().nullable().named('APELLIDO1')();
  TextColumn get apellido2 => text().nullable().named('APELLIDO2')();
  TextColumn get telefono1 => text().nullable().named('TELEFONO1')();
  TextColumn get telefono2 => text().nullable().named('TELEFONO2')();
  TextColumn get email => text().nullable().named('EMAIL')();
  TextColumn get enviado =>
      text().withDefault(const Constant('N')).named('ENVIADO')();
  TextColumn get borrar =>
      text().withDefault(const Constant('N')).named('BORRAR')();
}
