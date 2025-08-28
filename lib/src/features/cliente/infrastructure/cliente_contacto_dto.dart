import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/remote_database.dart';
import '../domain/cliente_contacto.dart';
import 'cliente_contacto_imp_dto.dart';

part 'cliente_contacto_dto.freezed.dart';
part 'cliente_contacto_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ClienteContactoDTO
    with _$ClienteContactoDTO
    implements Insertable<ClienteContactoDTO> {
  const ClienteContactoDTO._();
  const factory ClienteContactoDTO({
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
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteContactoDTO;

  factory ClienteContactoDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteContactoDTOFromJson(json);

  factory ClienteContactoDTO.fromContactoImp(
    ClienteContactoImpDTO clienteContactoImpDto,
  ) {
    return ClienteContactoDTO(
      clienteId: clienteContactoImpDto.clienteId,
      contactoId: clienteContactoImpDto.contactoId,
      observaciones: clienteContactoImpDto.observaciones,
      nombre: clienteContactoImpDto.nombre,
      apellido1: clienteContactoImpDto.apellido1,
      apellido2: clienteContactoImpDto.apellido2,
      telefono1: clienteContactoImpDto.telefono1,
      telefono2: clienteContactoImpDto.telefono2,
      email: clienteContactoImpDto.email,
      lastUpdated: DateTime.now().toUtc(),
      deleted: clienteContactoImpDto.borrar,
    );
  }

  ClienteContacto toDomain({
    bool enviado = true,
    bool tratado = true,
    String? contactoImpGuid,
  }) {
    return ClienteContacto(
      clienteId: clienteId,
      contactoId: contactoId,
      contactoImpGuid: contactoImpGuid,
      observaciones: observaciones,
      nombre: nombre,
      apellido1: apellido1,
      apellido2: apellido2,
      telefono1: telefono1,
      telefono2: telefono2,
      email: email,
      lastUpdated: lastUpdated,
      enviado: enviado,
      tratado: tratado,
      deleted: (deleted == 'S'),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteContactoTableCompanion(
      clienteId: Value(clienteId),
      contactoId: Value(contactoId!),
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
