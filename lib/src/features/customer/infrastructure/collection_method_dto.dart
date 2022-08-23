import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/collection_method.dart';

part 'collection_method_dto.freezed.dart';
part 'collection_method_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CollectionMethodDTO
    with _$CollectionMethodDTO
    implements Insertable<CollectionMethodDTO> {
  const CollectionMethodDTO._();
  const factory CollectionMethodDTO({
    @JsonKey(name: 'METODO_COBRO_ID') required String id,
    @JsonKey(name: 'DESCRIPCION_ES') required String descriptionES,
    @JsonKey(name: 'DESCRIPCION_EN') String? descriptionEN,
    @JsonKey(name: 'DESCRIPCION_FR') String? descriptionFR,
    @JsonKey(name: 'DESCRIPCION_DE') String? descriptionDE,
    @JsonKey(name: 'DESCRIPCION_CA') String? descriptionCA,
    @JsonKey(name: 'DESCRIPCION_GB') String? descriptionGB,
    @JsonKey(name: 'DESCRIPCION_HU') String? descriptionHU,
    @JsonKey(name: 'DESCRIPCION_IT') String? descriptionIT,
    @JsonKey(name: 'DESCRIPCION_NL') String? descriptionNL,
    @JsonKey(name: 'DESCRIPCION_PL') String? descriptionPL,
    @JsonKey(name: 'DESCRIPCION_PT') String? descriptionPT,
    @JsonKey(name: 'DESCRIPCION_RO') String? descriptionRO,
    @JsonKey(name: 'DESCRIPCION_RU') String? descriptionRU,
    @JsonKey(name: 'DESCRIPCION_CN') String? descriptionCN,
    @JsonKey(name: 'DESCRIPCION_EL') String? descriptionEL,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CollectionMethodDTO;

  factory CollectionMethodDTO.fromJson(Map<String, dynamic> json) =>
      _$CollectionMethodDTOFromJson(json);

  CollectionMethod toDomain() {
    return CollectionMethod(
        id: id,
        description: getDescription(),
        lastUpdate: lastUpdated,
        deleted: (deleted == 'S') ? true : false);
  }

  String getDescription() {
    if (descriptionEN != null) {
      return descriptionEN!;
    } else if (descriptionFR != null) {
      return descriptionFR!;
    } else if (descriptionDE != null) {
      return descriptionDE!;
    } else if (descriptionGB != null) {
      return descriptionGB!;
    } else if (descriptionCA != null) {
      return descriptionCA!;
    }
    return descriptionES;
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CollectionMethodTableCompanion(
      id: Value(id),
      descriptionES: Value(descriptionES),
      descriptionEN: Value(descriptionEN),
      descriptionFR: Value(descriptionFR),
      descriptionDE: Value(descriptionDE),
      descriptionCA: Value(descriptionCA),
      descriptionGB: Value(descriptionGB),
      descriptionHU: Value(descriptionHU),
      descriptionIT: Value(descriptionIT),
      descriptionNL: Value(descriptionNL),
      descriptionPL: Value(descriptionPL),
      descriptionPT: Value(descriptionPT),
      descriptionRO: Value(descriptionRO),
      descriptionRU: Value(descriptionRU),
      descriptionCN: Value(descriptionCN),
      descriptionEL: Value(descriptionEL),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CollectionMethodDTO)
class CollectionMethodTable extends Table {
  @override
  String get tableName => 'METODOS_COBRO';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('METODO_COBRO_ID')();
  TextColumn get descriptionES => text().named('DESCRIPCION_ES')();
  TextColumn get descriptionEN => text().nullable().named('DESCRIPCION_EN')();
  TextColumn get descriptionFR => text().nullable().named('DESCRIPCION_FR')();
  TextColumn get descriptionDE => text().nullable().named('DESCRIPCION_DE')();
  TextColumn get descriptionCA => text().nullable().named('DESCRIPCION_CA')();
  TextColumn get descriptionGB => text().nullable().named('DESCRIPCION_GB')();
  TextColumn get descriptionHU => text().nullable().named('DESCRIPCION_HU')();
  TextColumn get descriptionIT => text().nullable().named('DESCRIPCION_IT')();
  TextColumn get descriptionNL => text().nullable().named('DESCRIPCION_NL')();
  TextColumn get descriptionPL => text().nullable().named('DESCRIPCION_PL')();
  TextColumn get descriptionPT => text().nullable().named('DESCRIPCION_PT')();
  TextColumn get descriptionRO => text().nullable().named('DESCRIPCION_RO')();
  TextColumn get descriptionRU => text().nullable().named('DESCRIPCION_RU')();
  TextColumn get descriptionCN => text().nullable().named('DESCRIPCION_CN')();
  TextColumn get descriptionEL => text().nullable().named('DESCRIPCION_EL')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
