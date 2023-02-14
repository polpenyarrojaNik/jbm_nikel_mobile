import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto.dart';

import '../../../core/infrastructure/local_database.dart';

part 'cliente_contacto_modificacion_dto.freezed.dart';
part 'cliente_contacto_modificacion_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteContactoLocalDTO
    with _$ClienteContactoLocalDTO
    implements Insertable<ClienteContactoLocalDTO> {
  const ClienteContactoLocalDTO._();
  const factory ClienteContactoLocalDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'CONTACTO_ID') required String? contactoId,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'APELLIDO1') String? apellido1,
    @JsonKey(name: 'APELLIDO2') String? apellido2,
    @JsonKey(name: 'TELEFONO1') String? telefono1,
    @JsonKey(name: 'TELEFONO2') String? telefono2,
    @JsonKey(name: 'EMAIL') String? email,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'ENVIADO') @Default('N') String enviado,
    @JsonKey(name: 'TRATADO') @Default('N') String tratado,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteContactoLocalDTO;

  factory ClienteContactoLocalDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteContactoLocalDTOFromJson(json);

  factory ClienteContactoLocalDTO.fromDomain(ClienteContacto _) =>
      ClienteContactoLocalDTO(
        clienteId: _.clienteId,
        contactoId: _.contactoId,
        observaciones: _.observaciones,
        nombre: _.nombre,
        apellido1: _.apellido1,
        apellido2: _.apellido2,
        telefono1: _.telefono1,
        telefono2: _.telefono2,
        email: _.email,
        lastUpdated: _.lastUpdated,
      );

  ClienteContacto toDomain() {
    return ClienteContacto(
      clienteId: clienteId,
      contactoId: contactoId,
      observaciones: observaciones,
      nombre: nombre,
      apellido1: apellido1,
      apellido2: apellido2,
      telefono1: telefono1,
      telefono2: telefono2,
      email: email,
      lastUpdated: lastUpdated,
      enviado: (enviado == 'S') ? true : false,
      tratado: (tratado == 'S') ? true : false,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteContactoLocalTableCompanion(
      clienteId: Value(clienteId),
      contactoId: Value(contactoId),
      observaciones: Value(observaciones),
      nombre: Value(nombre),
      apellido1: Value(apellido1),
      apellido2: Value(apellido2),
      telefono1: Value(telefono1),
      telefono2: Value(telefono2),
      email: Value(email),
      lastUpdated: Value(lastUpdated),
      enviado: Value(enviado),
      tratado: Value(tratado),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteContactoLocalDTO)
class ClienteContactoLocalTable extends Table {
  @override
  String get tableName => 'CLIENTES_CONTACTOS_LOCAL_IMP';

  @override
  Set<Column> get primaryKey => {clienteId, contactoId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get contactoId => text().nullable().named('CONTACTO_ID')();
  TextColumn get observaciones => text().nullable().named('OBSERVACIONES')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get apellido1 => text().nullable().named('APELLIDO1')();
  TextColumn get apellido2 => text().nullable().named('APELLIDO2')();
  TextColumn get telefono1 => text().nullable().named('TELEFONO1')();
  TextColumn get telefono2 => text().nullable().named('TELEFONO2')();
  TextColumn get email => text().nullable().named('EMAIL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get enviado =>
      text().withDefault(const Constant('N')).named('ENVIADO')();
  TextColumn get tratado =>
      text().withDefault(const Constant('N')).named('TRATADO')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
