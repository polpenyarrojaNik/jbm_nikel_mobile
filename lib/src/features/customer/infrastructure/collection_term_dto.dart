import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/infrastructure/database.dart';
import '../domain/collection_method.dart';

part 'collection_term_dto.freezed.dart';
part 'collection_term_dto.g.dart';

// ignore_for_file: invalid_annotation_target
@freezed
class CollectionTermDTO
    with _$CollectionTermDTO
    implements Insertable<CollectionTermDTO> {
  const CollectionTermDTO._();
  const factory CollectionTermDTO({
    @JsonKey(name: 'PLAZO_COBRO_ID') required String id,
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
  }) = _CollectionTermDTO;

  factory CollectionTermDTO.fromJson(Map<String, dynamic> json) =>
      _$CollectionTermDTOFromJson(json);

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
    return CollectionTermTableCompanion(
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

@UseRowClass(CollectionTermDTO)
class CollectionTermTable extends Table {
  @override
  String get tableName => 'PLAZOS_COBRO';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text()();
  TextColumn get descriptionES => text()();
  TextColumn get descriptionEN => text().nullable()();
  TextColumn get descriptionFR => text().nullable()();
  TextColumn get descriptionDE => text().nullable()();
  TextColumn get descriptionCA => text().nullable()();
  TextColumn get descriptionGB => text().nullable()();
  TextColumn get descriptionHU => text().nullable()();
  TextColumn get descriptionIT => text().nullable()();
  TextColumn get descriptionNL => text().nullable()();
  TextColumn get descriptionPL => text().nullable()();
  TextColumn get descriptionPT => text().nullable()();
  TextColumn get descriptionRO => text().nullable()();
  TextColumn get descriptionRU => text().nullable()();
  TextColumn get descriptionCN => text().nullable()();
  TextColumn get descriptionEL => text().nullable()();
  DateTimeColumn get lastUpdated => dateTime()();
  TextColumn get deleted => text().withDefault(const Constant('N'))();
}
