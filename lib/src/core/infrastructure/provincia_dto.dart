import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../domain/provincia.dart';
import 'remote_database.dart';

part 'provincia_dto.freezed.dart';
part 'provincia_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
abstract class ProvinciaDTO
    with _$ProvinciaDTO
    implements Insertable<ProvinciaDTO> {
  const ProvinciaDTO._();
  const factory ProvinciaDTO({
    @JsonKey(name: 'PAIS_ID') required String? paisId,
    @JsonKey(name: 'REGION_ID') required String? regionId,
    @JsonKey(name: 'PROVINCIA_ID') required String provinciaId,
    @JsonKey(name: 'PROVINCIA') String? provincia,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _ProvinciaDTO;

  factory ProvinciaDTO.fromJson(Map<String, dynamic> json) =>
      _$ProvinciaDTOFromJson(json);

  Provincia toDomain() {
    return Provincia(
      paisId: paisId!,
      regionId: regionId!,
      provinciaId: provinciaId,
      provincia: provincia,
      lastUpdate: lastUpdated,
      deleted: (deleted == 'S'),
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return ProvinciaTableCompanion(
      paisId: Value(paisId),
      regionId: Value(regionId),
      provinciaId: Value(provinciaId),
      provincia: Value(provincia),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(ProvinciaDTO)
class ProvinciaTable extends Table {
  @override
  String get tableName => 'PROVINCIAS';

  @override
  Set<Column> get primaryKey => {provinciaId};

  TextColumn get paisId => text().nullable().named('PAIS_ID')();
  TextColumn get regionId => text().nullable().named('REGION_ID')();
  TextColumn get provinciaId => text().named('PROVINCIA_ID')();
  TextColumn get provincia => text().nullable().named('PROVINCIA')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
