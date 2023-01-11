import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/remote_database.dart';
import 'package:jbm_nikel_mobile/src/features/cliente/domain/cliente_usuario.dart';

part 'cliente_usuario_dto.freezed.dart';
part 'cliente_usuario_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class ClienteUsuarioDTO
    with _$ClienteUsuarioDTO
    implements Insertable<ClienteUsuarioDTO> {
  const ClienteUsuarioDTO._();
  const factory ClienteUsuarioDTO({
    @JsonKey(name: 'CLIENTE_ID') required String clienteId,
    @JsonKey(name: 'USUARIO_ID') required String usuarioId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ClienteUsuarioDTO;

  factory ClienteUsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$ClienteUsuarioDTOFromJson(json);

  ClienteUsuario toDomain() {
    return ClienteUsuario(
      clienteId: clienteId,
      usuarioId: usuarioId,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ClienteUsuarioTableCompanion(
      clienteId: Value(clienteId),
      usuarioId: Value(usuarioId),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ClienteUsuarioDTO)
class ClienteUsuarioTable extends Table {
  @override
  String get tableName => 'CLIENTES_USUARIO';

  @override
  Set<Column> get primaryKey => {clienteId, usuarioId};

  TextColumn get clienteId => text().named('CLIENTE_ID')();
  TextColumn get usuarioId => text().named('USUARIO_ID')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
