import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_contacto.dart';

part 'cliente_contacto_dto.freezed.dart';
part 'cliente_contacto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteContactoDTO
    with _$ClienteContactoDTO
    implements Insertable<ClienteContactoDTO> {
  const ClienteContactoDTO._();
  const factory ClienteContactoDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'CONTACTO_ID') required String contactoId,
    @JsonKey(name: 'OBSERVACIONES') String? observaciones,
    @JsonKey(name: 'NOMBRE') String? nombre,
    @JsonKey(name: 'APELLIDO1') String? apellido1,
    @JsonKey(name: 'APELLIDO2') String? apellido2,
    @JsonKey(name: 'TELEFONO1') String? telefono1,
    @JsonKey(name: 'TELEFONO2') String? telefono2,
    @JsonKey(name: 'EMAIL') String? email,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteContactoDTO;

  factory ClienteContactoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteContactoDTOFromJson(json);

  ClienteContacto toDomain() {
    return ClienteContacto(
      clienteId: clienteId,
      contactoId: contactoId,
      observaciones: observaciones,
      nombre: getName(nombre, apellido1, apellido2),
      telefono1: telefono1,
      telefono2: telefono2,
      email: email,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteContactoTableCompanion(
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
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }

  String? getName(String? nombre, String? apellido1, String? apellido2) {
    if (nombre != null && apellido1 != null && apellido2 != null) {
      return '$nombre $apellido1 $apellido2';
    } else if (nombre != null && apellido1 != null) {
      return '$nombre $apellido1';
    } else if (nombre != null) {
      return nombre;
    }
    return null;
  }
}

@UseRowClass(ClienteContactoDTO)
class ClienteContactoTable extends Table {
  @override
  String get tableName => 'CLIENTES_CONTACTOS';

  @override
  Set<Column> get primaryKey => {clienteId, contactoId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get contactoId => text().named('CONTACTO_ID')();
  TextColumn get observaciones => text().nullable().named('OBSERVACIONES')();
  TextColumn get nombre => text().nullable().named('NOMBRE')();
  TextColumn get apellido1 => text().nullable().named('APELLIDO1')();
  TextColumn get apellido2 => text().nullable().named('APELLIDO2')();
  TextColumn get telefono1 => text().nullable().named('TELEFONO1')();
  TextColumn get telefono2 => text().nullable().named('TELEFONO2')();
  TextColumn get email => text().nullable().named('EMAIL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
