import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/remote_database.dart';

part 'usuario_tarifa_dto.freezed.dart';
part 'usuario_tarifa_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
abstract class UsuarioTarifaDTO
    with _$UsuarioTarifaDTO
    implements Insertable<UsuarioTarifaDTO> {
  const UsuarioTarifaDTO._();
  const factory UsuarioTarifaDTO({
    @JsonKey(name: 'USUARIO_ID') required String usuarioId,
    @JsonKey(name: 'TARIFA_ID') required String tarifaId,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _UsuarioTarifaDTO;

  factory UsuarioTarifaDTO.fromJson(Map<String, dynamic> json) =>
      _$UsuarioTarifaDTOFromJson(json);

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return UsuarioTarifaTableCompanion(
      usuarioId: Value(usuarioId),
      tarifaId: Value(tarifaId),

      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(UsuarioTarifaDTO)
class UsuarioTarifaTable extends Table {
  TextColumn get usuarioId => text().named('USUARIO_ID')();
  TextColumn get tarifaId => text().named('TARIFA_ID')();

  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();

  @override
  Set<Column> get primaryKey => {usuarioId, tarifaId};

  @override
  String get tableName => 'USUARIO_TARIFA';
}
