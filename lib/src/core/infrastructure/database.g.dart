// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: type=lint
class CountryTableCompanion extends UpdateCompanion<CountryDTO> {
  final Value<String> id;
  final Value<String?> isoCode;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CountryTableCompanion({
    this.id = const Value.absent(),
    this.isoCode = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CountryTableCompanion.insert({
    required String id,
    this.isoCode = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CountryDTO> custom({
    Expression<String>? id,
    Expression<String?>? isoCode,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PAIS_ID': id,
      if (isoCode != null) 'CODIGO_ISO': isoCode,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CountryTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? isoCode,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CountryTableCompanion(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PAIS_ID'] = Variable<String>(id.value);
    }
    if (isoCode.present) {
      map['CODIGO_ISO'] = Variable<String?>(isoCode.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CountryTableCompanion(')
          ..write('id: $id, ')
          ..write('isoCode: $isoCode, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CountryTableTable extends CountryTable
    with TableInfo<$CountryTableTable, CountryDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CountryTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'PAIS_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _isoCodeMeta = const VerificationMeta('isoCode');
  @override
  late final GeneratedColumn<String?> isoCode = GeneratedColumn<String?>(
      'CODIGO_ISO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isoCode,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PAISES';
  @override
  String get actualTableName => 'PAISES';
  @override
  VerificationContext validateIntegrity(Insertable<CountryDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PAIS_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PAIS_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('CODIGO_ISO')) {
      context.handle(_isoCodeMeta,
          isoCode.isAcceptableOrUnknown(data['CODIGO_ISO']!, _isoCodeMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CountryDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CountryDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID'])!,
      isoCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CODIGO_ISO']),
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CountryTableTable createAlias(String alias) {
    return $CountryTableTable(attachedDatabase, alias);
  }
}

class DivisaTableCompanion extends UpdateCompanion<DivisaDTO> {
  final Value<String> id;
  final Value<String> abv;
  final Value<String?> symbol;
  final Value<double?> rounded;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const DivisaTableCompanion({
    this.id = const Value.absent(),
    this.abv = const Value.absent(),
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  DivisaTableCompanion.insert({
    required String id,
    required String abv,
    this.symbol = const Value.absent(),
    this.rounded = const Value.absent(),
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        abv = Value(abv),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<DivisaDTO> custom({
    Expression<String>? id,
    Expression<String>? abv,
    Expression<String?>? symbol,
    Expression<double?>? rounded,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'DIVISA_ID': id,
      if (abv != null) 'ABREVIACION': abv,
      if (symbol != null) 'SIMBOLO': symbol,
      if (rounded != null) 'REDONDEO': rounded,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  DivisaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? abv,
      Value<String?>? symbol,
      Value<double?>? rounded,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return DivisaTableCompanion(
      id: id ?? this.id,
      abv: abv ?? this.abv,
      symbol: symbol ?? this.symbol,
      rounded: rounded ?? this.rounded,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['DIVISA_ID'] = Variable<String>(id.value);
    }
    if (abv.present) {
      map['ABREVIACION'] = Variable<String>(abv.value);
    }
    if (symbol.present) {
      map['SIMBOLO'] = Variable<String?>(symbol.value);
    }
    if (rounded.present) {
      map['REDONDEO'] = Variable<double?>(rounded.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DivisaTableCompanion(')
          ..write('id: $id, ')
          ..write('abv: $abv, ')
          ..write('symbol: $symbol, ')
          ..write('rounded: $rounded, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $DivisaTableTable extends DivisaTable
    with TableInfo<$DivisaTableTable, DivisaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DivisaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'DIVISA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<String?> abv = GeneratedColumn<String?>(
      'ABREVIACION', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _symbolMeta = const VerificationMeta('symbol');
  @override
  late final GeneratedColumn<String?> symbol = GeneratedColumn<String?>(
      'SIMBOLO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _roundedMeta = const VerificationMeta('rounded');
  @override
  late final GeneratedColumn<double?> rounded = GeneratedColumn<double?>(
      'REDONDEO', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        abv,
        symbol,
        rounded,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'DIVISAS';
  @override
  String get actualTableName => 'DIVISAS';
  @override
  VerificationContext validateIntegrity(Insertable<DivisaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('DIVISA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['DIVISA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ABREVIACION')) {
      context.handle(
          _abvMeta, abv.isAcceptableOrUnknown(data['ABREVIACION']!, _abvMeta));
    } else if (isInserting) {
      context.missing(_abvMeta);
    }
    if (data.containsKey('SIMBOLO')) {
      context.handle(_symbolMeta,
          symbol.isAcceptableOrUnknown(data['SIMBOLO']!, _symbolMeta));
    }
    if (data.containsKey('REDONDEO')) {
      context.handle(_roundedMeta,
          rounded.isAcceptableOrUnknown(data['REDONDEO']!, _roundedMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DivisaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DivisaDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIVISA_ID'])!,
      abv: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ABREVIACION'])!,
      symbol: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}SIMBOLO']),
      rounded: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}REDONDEO']),
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $DivisaTableTable createAlias(String alias) {
    return $DivisaTableTable(attachedDatabase, alias);
  }
}

class SalesOrderStatusTableCompanion
    extends UpdateCompanion<SalesOrderStatusDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderStatusTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderStatusTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderStatusDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PAIS_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderStatusTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderStatusTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PAIS_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderStatusTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderStatusTableTable extends SalesOrderStatusTable
    with TableInfo<$SalesOrderStatusTableTable, SalesOrderStatusDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderStatusTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'PAIS_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_ESTADOS';
  @override
  String get actualTableName => 'PEDIDOS_ESTADOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<SalesOrderStatusDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PAIS_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PAIS_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SalesOrderStatusDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderStatusDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderStatusTableTable createAlias(String alias) {
    return $SalesOrderStatusTableTable(attachedDatabase, alias);
  }
}

class SalesOrderTableCompanion extends UpdateCompanion<SalesOrderDTO> {
  final Value<String> companyId;
  final Value<String> salesOrderId;
  final Value<DateTime> salesOrderDate;
  final Value<String> salesType;
  final Value<String?> customerId;
  final Value<String?> customerName;
  final Value<String?> addressId;
  final Value<String?> shippingAddress1;
  final Value<String?> shippingAddress2;
  final Value<String?> zipCode;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> countryId;
  final Value<String> divisaId;
  final Value<double> taxBase;
  final Value<double> ivaAmount;
  final Value<double> total;
  final Value<int> salesOrderStatusId;
  final Value<String> isOffer;
  final Value<double> promptPaymentDiscount;
  final Value<double> iva;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderTableCompanion({
    this.companyId = const Value.absent(),
    this.salesOrderId = const Value.absent(),
    this.salesOrderDate = const Value.absent(),
    this.salesType = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.addressId = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderTableCompanion.insert({
    required String companyId,
    required String salesOrderId,
    required DateTime salesOrderDate,
    required String salesType,
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.addressId = const Value.absent(),
    this.shippingAddress1 = const Value.absent(),
    this.shippingAddress2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    required String divisaId,
    this.taxBase = const Value.absent(),
    this.ivaAmount = const Value.absent(),
    this.total = const Value.absent(),
    this.salesOrderStatusId = const Value.absent(),
    this.isOffer = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.iva = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : companyId = Value(companyId),
        salesOrderId = Value(salesOrderId),
        salesOrderDate = Value(salesOrderDate),
        salesType = Value(salesType),
        divisaId = Value(divisaId),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderDTO> custom({
    Expression<String>? companyId,
    Expression<String>? salesOrderId,
    Expression<DateTime>? salesOrderDate,
    Expression<String>? salesType,
    Expression<String?>? customerId,
    Expression<String?>? customerName,
    Expression<String?>? addressId,
    Expression<String?>? shippingAddress1,
    Expression<String?>? shippingAddress2,
    Expression<String?>? zipCode,
    Expression<String?>? city,
    Expression<String?>? state,
    Expression<String?>? countryId,
    Expression<String>? divisaId,
    Expression<double>? taxBase,
    Expression<double>? ivaAmount,
    Expression<double>? total,
    Expression<int>? salesOrderStatusId,
    Expression<String>? isOffer,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? iva,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (salesOrderId != null) 'PEDIDO_ID': salesOrderId,
      if (salesOrderDate != null) 'FECHA_PEDIDO': salesOrderDate,
      if (salesType != null) 'TIPO_VENTA': salesType,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (customerName != null) 'NOMBRE_CLIENTE': customerName,
      if (addressId != null) 'DIRECCION_ID': addressId,
      if (shippingAddress1 != null) 'DIRECCION_ENVIO1': shippingAddress1,
      if (shippingAddress2 != null) 'DIRECCION_ENVIO2': shippingAddress2,
      if (zipCode != null) 'CODIGO_POSTAL': zipCode,
      if (city != null) 'POBLACION': city,
      if (state != null) 'PROVINCIA': state,
      if (countryId != null) 'PAIS_ID': countryId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (taxBase != null) 'BASE_IMPONIBLE': taxBase,
      if (ivaAmount != null) 'IMPORTE_IVA': ivaAmount,
      if (total != null) 'TOTAL': total,
      if (salesOrderStatusId != null) 'ESTADO_PEDIDO_ID': salesOrderStatusId,
      if (isOffer != null) 'OFERTA_SN': isOffer,
      if (promptPaymentDiscount != null)
        'DESCUENTO_PRONTO_PAGO': promptPaymentDiscount,
      if (iva != null) 'IVA': iva,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderTableCompanion copyWith(
      {Value<String>? companyId,
      Value<String>? salesOrderId,
      Value<DateTime>? salesOrderDate,
      Value<String>? salesType,
      Value<String?>? customerId,
      Value<String?>? customerName,
      Value<String?>? addressId,
      Value<String?>? shippingAddress1,
      Value<String?>? shippingAddress2,
      Value<String?>? zipCode,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? countryId,
      Value<String>? divisaId,
      Value<double>? taxBase,
      Value<double>? ivaAmount,
      Value<double>? total,
      Value<int>? salesOrderStatusId,
      Value<String>? isOffer,
      Value<double>? promptPaymentDiscount,
      Value<double>? iva,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderTableCompanion(
      companyId: companyId ?? this.companyId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      salesOrderDate: salesOrderDate ?? this.salesOrderDate,
      salesType: salesType ?? this.salesType,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      addressId: addressId ?? this.addressId,
      shippingAddress1: shippingAddress1 ?? this.shippingAddress1,
      shippingAddress2: shippingAddress2 ?? this.shippingAddress2,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      countryId: countryId ?? this.countryId,
      divisaId: divisaId ?? this.divisaId,
      taxBase: taxBase ?? this.taxBase,
      ivaAmount: ivaAmount ?? this.ivaAmount,
      total: total ?? this.total,
      salesOrderStatusId: salesOrderStatusId ?? this.salesOrderStatusId,
      isOffer: isOffer ?? this.isOffer,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      iva: iva ?? this.iva,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (salesOrderId.present) {
      map['PEDIDO_ID'] = Variable<String>(salesOrderId.value);
    }
    if (salesOrderDate.present) {
      map['FECHA_PEDIDO'] = Variable<DateTime>(salesOrderDate.value);
    }
    if (salesType.present) {
      map['TIPO_VENTA'] = Variable<String>(salesType.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String?>(customerId.value);
    }
    if (customerName.present) {
      map['NOMBRE_CLIENTE'] = Variable<String?>(customerName.value);
    }
    if (addressId.present) {
      map['DIRECCION_ID'] = Variable<String?>(addressId.value);
    }
    if (shippingAddress1.present) {
      map['DIRECCION_ENVIO1'] = Variable<String?>(shippingAddress1.value);
    }
    if (shippingAddress2.present) {
      map['DIRECCION_ENVIO2'] = Variable<String?>(shippingAddress2.value);
    }
    if (zipCode.present) {
      map['CODIGO_POSTAL'] = Variable<String?>(zipCode.value);
    }
    if (city.present) {
      map['POBLACION'] = Variable<String?>(city.value);
    }
    if (state.present) {
      map['PROVINCIA'] = Variable<String?>(state.value);
    }
    if (countryId.present) {
      map['PAIS_ID'] = Variable<String?>(countryId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (taxBase.present) {
      map['BASE_IMPONIBLE'] = Variable<double>(taxBase.value);
    }
    if (ivaAmount.present) {
      map['IMPORTE_IVA'] = Variable<double>(ivaAmount.value);
    }
    if (total.present) {
      map['TOTAL'] = Variable<double>(total.value);
    }
    if (salesOrderStatusId.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(salesOrderStatusId.value);
    }
    if (isOffer.present) {
      map['OFERTA_SN'] = Variable<String>(isOffer.value);
    }
    if (promptPaymentDiscount.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('salesOrderId: $salesOrderId, ')
          ..write('salesOrderDate: $salesOrderDate, ')
          ..write('salesType: $salesType, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('addressId: $addressId, ')
          ..write('shippingAddress1: $shippingAddress1, ')
          ..write('shippingAddress2: $shippingAddress2, ')
          ..write('zipCode: $zipCode, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('countryId: $countryId, ')
          ..write('divisaId: $divisaId, ')
          ..write('taxBase: $taxBase, ')
          ..write('ivaAmount: $ivaAmount, ')
          ..write('total: $total, ')
          ..write('salesOrderStatusId: $salesOrderStatusId, ')
          ..write('isOffer: $isOffer, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('iva: $iva, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderTableTable extends SalesOrderTable
    with TableInfo<$SalesOrderTableTable, SalesOrderDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'EMPRESA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderIdMeta =
      const VerificationMeta('salesOrderId');
  @override
  late final GeneratedColumn<String?> salesOrderId = GeneratedColumn<String?>(
      'PEDIDO_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _salesOrderDateMeta =
      const VerificationMeta('salesOrderDate');
  @override
  late final GeneratedColumn<DateTime?> salesOrderDate =
      GeneratedColumn<DateTime?>('FECHA_PEDIDO', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _salesTypeMeta = const VerificationMeta('salesType');
  @override
  late final GeneratedColumn<String?> salesType = GeneratedColumn<String?>(
      'TIPO_VENTA', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: const StringType(),
      requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 6),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String?> customerName = GeneratedColumn<String?>(
      'NOMBRE_CLIENTE', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String?> addressId = GeneratedColumn<String?>(
      'DIRECCION_ID', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _shippingAddress1Meta =
      const VerificationMeta('shippingAddress1');
  @override
  late final GeneratedColumn<String?> shippingAddress1 =
      GeneratedColumn<String?>('DIRECCION_ENVIO1', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _shippingAddress2Meta =
      const VerificationMeta('shippingAddress2');
  @override
  late final GeneratedColumn<String?> shippingAddress2 =
      GeneratedColumn<String?>('DIRECCION_ENVIO2', aliasedName, true,
          additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
          type: const StringType(),
          requiredDuringInsert: false);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String?> zipCode = GeneratedColumn<String?>(
      'CODIGO_POSTAL', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'POBLACION', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 60),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'PROVINCIA', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: const StringType(),
      requiredDuringInsert: false);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String?> countryId = GeneratedColumn<String?>(
      'PAIS_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 3),
      type: const StringType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String?> divisaId = GeneratedColumn<String?>(
      'DIVISA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _taxBaseMeta = const VerificationMeta('taxBase');
  @override
  late final GeneratedColumn<double?> taxBase = GeneratedColumn<double?>(
      'BASE_IMPONIBLE', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _ivaAmountMeta = const VerificationMeta('ivaAmount');
  @override
  late final GeneratedColumn<double?> ivaAmount = GeneratedColumn<double?>(
      'IMPORTE_IVA', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double?> total = GeneratedColumn<double?>(
      'TOTAL', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _salesOrderStatusIdMeta =
      const VerificationMeta('salesOrderStatusId');
  @override
  late final GeneratedColumn<int?> salesOrderStatusId = GeneratedColumn<int?>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PEDIDOS_ESTADOS (PAIS_ID)',
      defaultValue: const Constant(0));
  final VerificationMeta _isOfferMeta = const VerificationMeta('isOffer');
  @override
  late final GeneratedColumn<String?> isOffer = GeneratedColumn<String?>(
      'OFERTA_SN', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double?> promptPaymentDiscount =
      GeneratedColumn<double?>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: const RealType(),
          requiredDuringInsert: false,
          defaultValue: const Constant(0.0));
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double?> iva = GeneratedColumn<double?>(
      'IVA', aliasedName, false,
      type: const RealType(),
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        companyId,
        salesOrderId,
        salesOrderDate,
        salesType,
        customerId,
        customerName,
        addressId,
        shippingAddress1,
        shippingAddress2,
        zipCode,
        city,
        state,
        countryId,
        divisaId,
        taxBase,
        ivaAmount,
        total,
        salesOrderStatusId,
        isOffer,
        promptPaymentDiscount,
        iva,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS';
  @override
  String get actualTableName => 'PEDIDOS';
  @override
  VerificationContext validateIntegrity(Insertable<SalesOrderDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _salesOrderIdMeta,
          salesOrderId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _salesOrderIdMeta));
    } else if (isInserting) {
      context.missing(_salesOrderIdMeta);
    }
    if (data.containsKey('FECHA_PEDIDO')) {
      context.handle(
          _salesOrderDateMeta,
          salesOrderDate.isAcceptableOrUnknown(
              data['FECHA_PEDIDO']!, _salesOrderDateMeta));
    } else if (isInserting) {
      context.missing(_salesOrderDateMeta);
    }
    if (data.containsKey('TIPO_VENTA')) {
      context.handle(_salesTypeMeta,
          salesType.isAcceptableOrUnknown(data['TIPO_VENTA']!, _salesTypeMeta));
    } else if (isInserting) {
      context.missing(_salesTypeMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    }
    if (data.containsKey('NOMBRE_CLIENTE')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['NOMBRE_CLIENTE']!, _customerNameMeta));
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _addressIdMeta,
          addressId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _addressIdMeta));
    }
    if (data.containsKey('DIRECCION_ENVIO1')) {
      context.handle(
          _shippingAddress1Meta,
          shippingAddress1.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO1']!, _shippingAddress1Meta));
    }
    if (data.containsKey('DIRECCION_ENVIO2')) {
      context.handle(
          _shippingAddress2Meta,
          shippingAddress2.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO2']!, _shippingAddress2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['CODIGO_POSTAL']!, _zipCodeMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['POBLACION']!, _cityMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_stateMeta,
          state.isAcceptableOrUnknown(data['PROVINCIA']!, _stateMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['PAIS_ID']!, _countryIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('BASE_IMPONIBLE')) {
      context.handle(_taxBaseMeta,
          taxBase.isAcceptableOrUnknown(data['BASE_IMPONIBLE']!, _taxBaseMeta));
    }
    if (data.containsKey('IMPORTE_IVA')) {
      context.handle(
          _ivaAmountMeta,
          ivaAmount.isAcceptableOrUnknown(
              data['IMPORTE_IVA']!, _ivaAmountMeta));
    }
    if (data.containsKey('TOTAL')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['TOTAL']!, _totalMeta));
    }
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(
          _salesOrderStatusIdMeta,
          salesOrderStatusId.isAcceptableOrUnknown(
              data['ESTADO_PEDIDO_ID']!, _salesOrderStatusIdMeta));
    }
    if (data.containsKey('OFERTA_SN')) {
      context.handle(_isOfferMeta,
          isOffer.isAcceptableOrUnknown(data['OFERTA_SN']!, _isOfferMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _promptPaymentDiscountMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesOrderId, companyId};
  @override
  SalesOrderDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderDTO(
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}EMPRESA_ID'])!,
      salesOrderId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PEDIDO_ID'])!,
      salesOrderDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_PEDIDO'])!,
      salesType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TIPO_VENTA'])!,
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID']),
      addressId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ID']),
      customerName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE_CLIENTE']),
      shippingAddress1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ENVIO1']),
      shippingAddress2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ENVIO2']),
      zipCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CODIGO_POSTAL']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}POBLACION']),
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PROVINCIA']),
      countryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID']),
      divisaId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIVISA_ID'])!,
      taxBase: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}BASE_IMPONIBLE'])!,
      ivaAmount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IMPORTE_IVA'])!,
      total: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TOTAL'])!,
      salesOrderStatusId: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      isOffer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}OFERTA_SN'])!,
      promptPaymentDiscount: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      iva: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IVA'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderTableTable createAlias(String alias) {
    return $SalesOrderTableTable(attachedDatabase, alias);
  }
}

class SalesOrderLineTableCompanion extends UpdateCompanion<SalesOrderLineDTO> {
  final Value<String> companyId;
  final Value<String> salesOrderId;
  final Value<String> id;
  final Value<String> articleId;
  final Value<String?> articleDescription;
  final Value<double> quantity;
  final Value<double> divisaPrice;
  final Value<double?> priceType;
  final Value<double> discount1;
  final Value<double> discount2;
  final Value<double> discount3;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SalesOrderLineTableCompanion({
    this.companyId = const Value.absent(),
    this.salesOrderId = const Value.absent(),
    this.id = const Value.absent(),
    this.articleId = const Value.absent(),
    this.articleDescription = const Value.absent(),
    this.quantity = const Value.absent(),
    this.divisaPrice = const Value.absent(),
    this.priceType = const Value.absent(),
    this.discount1 = const Value.absent(),
    this.discount2 = const Value.absent(),
    this.discount3 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SalesOrderLineTableCompanion.insert({
    required String companyId,
    required String salesOrderId,
    required String id,
    required String articleId,
    this.articleDescription = const Value.absent(),
    required double quantity,
    required double divisaPrice,
    this.priceType = const Value.absent(),
    required double discount1,
    required double discount2,
    required double discount3,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : companyId = Value(companyId),
        salesOrderId = Value(salesOrderId),
        id = Value(id),
        articleId = Value(articleId),
        quantity = Value(quantity),
        divisaPrice = Value(divisaPrice),
        discount1 = Value(discount1),
        discount2 = Value(discount2),
        discount3 = Value(discount3),
        lastUpdated = Value(lastUpdated);
  static Insertable<SalesOrderLineDTO> custom({
    Expression<String>? companyId,
    Expression<String>? salesOrderId,
    Expression<String>? id,
    Expression<String>? articleId,
    Expression<String?>? articleDescription,
    Expression<double>? quantity,
    Expression<double>? divisaPrice,
    Expression<double?>? priceType,
    Expression<double>? discount1,
    Expression<double>? discount2,
    Expression<double>? discount3,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (salesOrderId != null) 'PEDIDO_ID': salesOrderId,
      if (id != null) 'PEDIDO_LINEA_ID': id,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (articleDescription != null)
        'ARTICULO_DESCRIPCION': articleDescription,
      if (quantity != null) 'CANTIDAD': quantity,
      if (divisaPrice != null) 'PRECIO_DIVISA': divisaPrice,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (discount1 != null) 'DESCUENTO1': discount1,
      if (discount2 != null) 'DESCUENTO2': discount2,
      if (discount3 != null) 'DESCUENTO3': discount3,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SalesOrderLineTableCompanion copyWith(
      {Value<String>? companyId,
      Value<String>? salesOrderId,
      Value<String>? id,
      Value<String>? articleId,
      Value<String?>? articleDescription,
      Value<double>? quantity,
      Value<double>? divisaPrice,
      Value<double?>? priceType,
      Value<double>? discount1,
      Value<double>? discount2,
      Value<double>? discount3,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SalesOrderLineTableCompanion(
      companyId: companyId ?? this.companyId,
      salesOrderId: salesOrderId ?? this.salesOrderId,
      id: id ?? this.id,
      articleId: articleId ?? this.articleId,
      articleDescription: articleDescription ?? this.articleDescription,
      quantity: quantity ?? this.quantity,
      divisaPrice: divisaPrice ?? this.divisaPrice,
      priceType: priceType ?? this.priceType,
      discount1: discount1 ?? this.discount1,
      discount2: discount2 ?? this.discount2,
      discount3: discount3 ?? this.discount3,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (salesOrderId.present) {
      map['PEDIDO_ID'] = Variable<String>(salesOrderId.value);
    }
    if (id.present) {
      map['PEDIDO_LINEA_ID'] = Variable<String>(id.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (articleDescription.present) {
      map['ARTICULO_DESCRIPCION'] = Variable<String?>(articleDescription.value);
    }
    if (quantity.present) {
      map['CANTIDAD'] = Variable<double>(quantity.value);
    }
    if (divisaPrice.present) {
      map['PRECIO_DIVISA'] = Variable<double>(divisaPrice.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double?>(priceType.value);
    }
    if (discount1.present) {
      map['DESCUENTO1'] = Variable<double>(discount1.value);
    }
    if (discount2.present) {
      map['DESCUENTO2'] = Variable<double>(discount2.value);
    }
    if (discount3.present) {
      map['DESCUENTO3'] = Variable<double>(discount3.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesOrderLineTableCompanion(')
          ..write('companyId: $companyId, ')
          ..write('salesOrderId: $salesOrderId, ')
          ..write('id: $id, ')
          ..write('articleId: $articleId, ')
          ..write('articleDescription: $articleDescription, ')
          ..write('quantity: $quantity, ')
          ..write('divisaPrice: $divisaPrice, ')
          ..write('priceType: $priceType, ')
          ..write('discount1: $discount1, ')
          ..write('discount2: $discount2, ')
          ..write('discount3: $discount3, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SalesOrderLineTableTable extends SalesOrderLineTable
    with TableInfo<$SalesOrderLineTableTable, SalesOrderLineDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesOrderLineTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'EMPRESA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _salesOrderIdMeta =
      const VerificationMeta('salesOrderId');
  @override
  late final GeneratedColumn<String?> salesOrderId = GeneratedColumn<String?>(
      'PEDIDO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'PEDIDO_LINEA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String?> articleId = GeneratedColumn<String?>(
      'ARTICULO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _articleDescriptionMeta =
      const VerificationMeta('articleDescription');
  @override
  late final GeneratedColumn<String?> articleDescription =
      GeneratedColumn<String?>('ARTICULO_DESCRIPCION', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _quantityMeta = const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double?> quantity = GeneratedColumn<double?>(
      'CANTIDAD', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _divisaPriceMeta =
      const VerificationMeta('divisaPrice');
  @override
  late final GeneratedColumn<double?> divisaPrice = GeneratedColumn<double?>(
      'PRECIO_DIVISA', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double?> priceType = GeneratedColumn<double?>(
      'TIPO_PRECIO', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _discount1Meta = const VerificationMeta('discount1');
  @override
  late final GeneratedColumn<double?> discount1 = GeneratedColumn<double?>(
      'DESCUENTO1', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _discount2Meta = const VerificationMeta('discount2');
  @override
  late final GeneratedColumn<double?> discount2 = GeneratedColumn<double?>(
      'DESCUENTO2', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _discount3Meta = const VerificationMeta('discount3');
  @override
  late final GeneratedColumn<double?> discount3 = GeneratedColumn<double?>(
      'DESCUENTO3', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        companyId,
        salesOrderId,
        id,
        articleId,
        articleDescription,
        quantity,
        divisaPrice,
        priceType,
        discount1,
        discount2,
        discount3,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LINEAS';
  @override
  String get actualTableName => 'PEDIDOS_LINEAS';
  @override
  VerificationContext validateIntegrity(Insertable<SalesOrderLineDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _salesOrderIdMeta,
          salesOrderId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _salesOrderIdMeta));
    } else if (isInserting) {
      context.missing(_salesOrderIdMeta);
    }
    if (data.containsKey('PEDIDO_LINEA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PEDIDO_LINEA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('ARTICULO_DESCRIPCION')) {
      context.handle(
          _articleDescriptionMeta,
          articleDescription.isAcceptableOrUnknown(
              data['ARTICULO_DESCRIPCION']!, _articleDescriptionMeta));
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['CANTIDAD']!, _quantityMeta));
    } else if (isInserting) {
      context.missing(_quantityMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _divisaPriceMeta,
          divisaPrice.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _divisaPriceMeta));
    } else if (isInserting) {
      context.missing(_divisaPriceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(_discount1Meta,
          discount1.isAcceptableOrUnknown(data['DESCUENTO1']!, _discount1Meta));
    } else if (isInserting) {
      context.missing(_discount1Meta);
    }
    if (data.containsKey('DESCUENTO2')) {
      context.handle(_discount2Meta,
          discount2.isAcceptableOrUnknown(data['DESCUENTO2']!, _discount2Meta));
    } else if (isInserting) {
      context.missing(_discount2Meta);
    }
    if (data.containsKey('DESCUENTO3')) {
      context.handle(_discount3Meta,
          discount3.isAcceptableOrUnknown(data['DESCUENTO3']!, _discount3Meta));
    } else if (isInserting) {
      context.missing(_discount3Meta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesOrderId, companyId, id};
  @override
  SalesOrderLineDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesOrderLineDTO(
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}EMPRESA_ID'])!,
      salesOrderId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PEDIDO_ID'])!,
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PEDIDO_LINEA_ID'])!,
      articleId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ARTICULO_ID'])!,
      articleDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}ARTICULO_DESCRIPCION']),
      quantity: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CANTIDAD'])!,
      divisaPrice: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PRECIO_DIVISA'])!,
      priceType: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TIPO_PRECIO']),
      discount1: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCUENTO1'])!,
      discount2: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCUENTO2'])!,
      discount3: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCUENTO3'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SalesOrderLineTableTable createAlias(String alias) {
    return $SalesOrderLineTableTable(attachedDatabase, alias);
  }
}

class LastSyncDateTableData extends DataClass
    implements Insertable<LastSyncDateTableData> {
  final String id;
  final String? lastSyncDivisa;
  final String? lastSyncCountry;
  final String? lastSyncCollectionMethod;
  final String? lastSyncCollectionTerm;
  final String? lastSyncCustomer;
  final String? lastSyncCustomerUser;
  final String? lastSyncCustomerContact;
  final String? lastSyncCustomerDiscount;
  final String? lastSyncCustomerAddress;
  final String? lastSyncCustomerNetPrice;
  final String? lastSyncCustomerNetGroup;
  final String? lastSyncCustomerPendingPayment;
  final String? lastSyncCustomerRappels;
  final String? lastSyncSalesOrder;
  final String? lastSyncVisit;
  final String? lastSyncSalesOrderLine;
  final String? lastSyncSalesOrderStatus;
  final String? lastSyncArticle;
  final String? lastSyncFamily;
  final String? lastSyncSubfamily;
  final String? lastSyncArticleNetGroup;
  final String? lastSyncArticleRatePrice;
  final String? lastSyncArticleComponent;
  final String? lastSyncArticleSubstitute;
  final String? lastSyncArticleSpare;
  final String? lastSyncArticleCompanyVat;
  LastSyncDateTableData(
      {required this.id,
      this.lastSyncDivisa,
      this.lastSyncCountry,
      this.lastSyncCollectionMethod,
      this.lastSyncCollectionTerm,
      this.lastSyncCustomer,
      this.lastSyncCustomerUser,
      this.lastSyncCustomerContact,
      this.lastSyncCustomerDiscount,
      this.lastSyncCustomerAddress,
      this.lastSyncCustomerNetPrice,
      this.lastSyncCustomerNetGroup,
      this.lastSyncCustomerPendingPayment,
      this.lastSyncCustomerRappels,
      this.lastSyncSalesOrder,
      this.lastSyncVisit,
      this.lastSyncSalesOrderLine,
      this.lastSyncSalesOrderStatus,
      this.lastSyncArticle,
      this.lastSyncFamily,
      this.lastSyncSubfamily,
      this.lastSyncArticleNetGroup,
      this.lastSyncArticleRatePrice,
      this.lastSyncArticleComponent,
      this.lastSyncArticleSubstitute,
      this.lastSyncArticleSpare,
      this.lastSyncArticleCompanyVat});
  factory LastSyncDateTableData.fromData(Map<String, dynamic> data,
      {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return LastSyncDateTableData(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ID'])!,
      lastSyncDivisa: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_SYNC_DIVISA']),
      lastSyncCountry: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_SYNC_COUNTRY']),
      lastSyncCollectionMethod: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_COLLECTION_METHOD']),
      lastSyncCollectionTerm: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_COLLECTION_TERM']),
      lastSyncCustomer: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER']),
      lastSyncCustomerUser: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_USER']),
      lastSyncCustomerContact: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_CONTACT']),
      lastSyncCustomerDiscount: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_DISCOUNT']),
      lastSyncCustomerAddress: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_ADDRESS']),
      lastSyncCustomerNetPrice: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_NET_PRICE']),
      lastSyncCustomerNetGroup: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_NET_GROUP']),
      lastSyncCustomerPendingPayment: const StringType()
          .mapFromDatabaseResponse(
              data['${effectivePrefix}LAST_SYNC_CUSTOMER_PENDING_PAYMENT']),
      lastSyncCustomerRappels: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_CUSTOMER_RAPPELS']),
      lastSyncSalesOrder: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER']),
      lastSyncVisit: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_SYNC_VISIT']),
      lastSyncSalesOrderLine: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER_LINE']),
      lastSyncSalesOrderStatus: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_SALES_ORDER_STATUS']),
      lastSyncArticle: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_SYNC_ARTICLE']),
      lastSyncFamily: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_SYNC_FAMILY']),
      lastSyncSubfamily: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_SUBFAMILY']),
      lastSyncArticleNetGroup: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARtICLE_NET_GROUP']),
      lastSyncArticleRatePrice: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARTICLE_RATE_PRICE']),
      lastSyncArticleComponent: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARTICLE_COMPONENT']),
      lastSyncArticleSubstitute: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARTICLE_SUBSTITUTE']),
      lastSyncArticleSpare: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARTICLE_SPARE']),
      lastSyncArticleCompanyVat: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}LAST_SYNC_ARTICLE_COMPANY_VAT']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['ID'] = Variable<String>(id);
    if (!nullToAbsent || lastSyncDivisa != null) {
      map['LAST_SYNC_DIVISA'] = Variable<String?>(lastSyncDivisa);
    }
    if (!nullToAbsent || lastSyncCountry != null) {
      map['LAST_SYNC_COUNTRY'] = Variable<String?>(lastSyncCountry);
    }
    if (!nullToAbsent || lastSyncCollectionMethod != null) {
      map['LAST_SYNC_COLLECTION_METHOD'] =
          Variable<String?>(lastSyncCollectionMethod);
    }
    if (!nullToAbsent || lastSyncCollectionTerm != null) {
      map['LAST_SYNC_COLLECTION_TERM'] =
          Variable<String?>(lastSyncCollectionTerm);
    }
    if (!nullToAbsent || lastSyncCustomer != null) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String?>(lastSyncCustomer);
    }
    if (!nullToAbsent || lastSyncCustomerUser != null) {
      map['LAST_SYNC_CUSTOMER_USER'] = Variable<String?>(lastSyncCustomerUser);
    }
    if (!nullToAbsent || lastSyncCustomerContact != null) {
      map['LAST_SYNC_CUSTOMER_CONTACT'] =
          Variable<String?>(lastSyncCustomerContact);
    }
    if (!nullToAbsent || lastSyncCustomerDiscount != null) {
      map['LAST_SYNC_CUSTOMER_DISCOUNT'] =
          Variable<String?>(lastSyncCustomerDiscount);
    }
    if (!nullToAbsent || lastSyncCustomerAddress != null) {
      map['LAST_SYNC_CUSTOMER_ADDRESS'] =
          Variable<String?>(lastSyncCustomerAddress);
    }
    if (!nullToAbsent || lastSyncCustomerNetPrice != null) {
      map['LAST_SYNC_CUSTOMER_NET_PRICE'] =
          Variable<String?>(lastSyncCustomerNetPrice);
    }
    if (!nullToAbsent || lastSyncCustomerNetGroup != null) {
      map['LAST_SYNC_CUSTOMER_NET_GROUP'] =
          Variable<String?>(lastSyncCustomerNetGroup);
    }
    if (!nullToAbsent || lastSyncCustomerPendingPayment != null) {
      map['LAST_SYNC_CUSTOMER_PENDING_PAYMENT'] =
          Variable<String?>(lastSyncCustomerPendingPayment);
    }
    if (!nullToAbsent || lastSyncCustomerRappels != null) {
      map['LAST_SYNC_CUSTOMER_RAPPELS'] =
          Variable<String?>(lastSyncCustomerRappels);
    }
    if (!nullToAbsent || lastSyncSalesOrder != null) {
      map['LAST_SYNC_SALES_ORDER'] = Variable<String?>(lastSyncSalesOrder);
    }
    if (!nullToAbsent || lastSyncVisit != null) {
      map['LAST_SYNC_VISIT'] = Variable<String?>(lastSyncVisit);
    }
    if (!nullToAbsent || lastSyncSalesOrderLine != null) {
      map['LAST_SYNC_SALES_ORDER_LINE'] =
          Variable<String?>(lastSyncSalesOrderLine);
    }
    if (!nullToAbsent || lastSyncSalesOrderStatus != null) {
      map['LAST_SYNC_SALES_ORDER_STATUS'] =
          Variable<String?>(lastSyncSalesOrderStatus);
    }
    if (!nullToAbsent || lastSyncArticle != null) {
      map['LAST_SYNC_ARTICLE'] = Variable<String?>(lastSyncArticle);
    }
    if (!nullToAbsent || lastSyncFamily != null) {
      map['LAST_SYNC_FAMILY'] = Variable<String?>(lastSyncFamily);
    }
    if (!nullToAbsent || lastSyncSubfamily != null) {
      map['LAST_SYNC_SUBFAMILY'] = Variable<String?>(lastSyncSubfamily);
    }
    if (!nullToAbsent || lastSyncArticleNetGroup != null) {
      map['LAST_SYNC_ARtICLE_NET_GROUP'] =
          Variable<String?>(lastSyncArticleNetGroup);
    }
    if (!nullToAbsent || lastSyncArticleRatePrice != null) {
      map['LAST_SYNC_ARTICLE_RATE_PRICE'] =
          Variable<String?>(lastSyncArticleRatePrice);
    }
    if (!nullToAbsent || lastSyncArticleComponent != null) {
      map['LAST_SYNC_ARTICLE_COMPONENT'] =
          Variable<String?>(lastSyncArticleComponent);
    }
    if (!nullToAbsent || lastSyncArticleSubstitute != null) {
      map['LAST_SYNC_ARTICLE_SUBSTITUTE'] =
          Variable<String?>(lastSyncArticleSubstitute);
    }
    if (!nullToAbsent || lastSyncArticleSpare != null) {
      map['LAST_SYNC_ARTICLE_SPARE'] = Variable<String?>(lastSyncArticleSpare);
    }
    if (!nullToAbsent || lastSyncArticleCompanyVat != null) {
      map['LAST_SYNC_ARTICLE_COMPANY_VAT'] =
          Variable<String?>(lastSyncArticleCompanyVat);
    }
    return map;
  }

  LastSyncDateTableCompanion toCompanion(bool nullToAbsent) {
    return LastSyncDateTableCompanion(
      id: Value(id),
      lastSyncDivisa: lastSyncDivisa == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncDivisa),
      lastSyncCountry: lastSyncCountry == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCountry),
      lastSyncCollectionMethod: lastSyncCollectionMethod == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCollectionMethod),
      lastSyncCollectionTerm: lastSyncCollectionTerm == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCollectionTerm),
      lastSyncCustomer: lastSyncCustomer == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomer),
      lastSyncCustomerUser: lastSyncCustomerUser == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerUser),
      lastSyncCustomerContact: lastSyncCustomerContact == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerContact),
      lastSyncCustomerDiscount: lastSyncCustomerDiscount == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerDiscount),
      lastSyncCustomerAddress: lastSyncCustomerAddress == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerAddress),
      lastSyncCustomerNetPrice: lastSyncCustomerNetPrice == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerNetPrice),
      lastSyncCustomerNetGroup: lastSyncCustomerNetGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerNetGroup),
      lastSyncCustomerPendingPayment:
          lastSyncCustomerPendingPayment == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncCustomerPendingPayment),
      lastSyncCustomerRappels: lastSyncCustomerRappels == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncCustomerRappels),
      lastSyncSalesOrder: lastSyncSalesOrder == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrder),
      lastSyncVisit: lastSyncVisit == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncVisit),
      lastSyncSalesOrderLine: lastSyncSalesOrderLine == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrderLine),
      lastSyncSalesOrderStatus: lastSyncSalesOrderStatus == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSalesOrderStatus),
      lastSyncArticle: lastSyncArticle == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticle),
      lastSyncFamily: lastSyncFamily == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncFamily),
      lastSyncSubfamily: lastSyncSubfamily == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncSubfamily),
      lastSyncArticleNetGroup: lastSyncArticleNetGroup == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleNetGroup),
      lastSyncArticleRatePrice: lastSyncArticleRatePrice == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleRatePrice),
      lastSyncArticleComponent: lastSyncArticleComponent == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleComponent),
      lastSyncArticleSubstitute:
          lastSyncArticleSubstitute == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncArticleSubstitute),
      lastSyncArticleSpare: lastSyncArticleSpare == null && nullToAbsent
          ? const Value.absent()
          : Value(lastSyncArticleSpare),
      lastSyncArticleCompanyVat:
          lastSyncArticleCompanyVat == null && nullToAbsent
              ? const Value.absent()
              : Value(lastSyncArticleCompanyVat),
    );
  }

  factory LastSyncDateTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LastSyncDateTableData(
      id: serializer.fromJson<String>(json['id']),
      lastSyncDivisa: serializer.fromJson<String?>(json['lastSyncDivisa']),
      lastSyncCountry: serializer.fromJson<String?>(json['lastSyncCountry']),
      lastSyncCollectionMethod:
          serializer.fromJson<String?>(json['lastSyncCollectionMethod']),
      lastSyncCollectionTerm:
          serializer.fromJson<String?>(json['lastSyncCollectionTerm']),
      lastSyncCustomer: serializer.fromJson<String?>(json['lastSyncCustomer']),
      lastSyncCustomerUser:
          serializer.fromJson<String?>(json['lastSyncCustomerUser']),
      lastSyncCustomerContact:
          serializer.fromJson<String?>(json['lastSyncCustomerContact']),
      lastSyncCustomerDiscount:
          serializer.fromJson<String?>(json['lastSyncCustomerDiscount']),
      lastSyncCustomerAddress:
          serializer.fromJson<String?>(json['lastSyncCustomerAddress']),
      lastSyncCustomerNetPrice:
          serializer.fromJson<String?>(json['lastSyncCustomerNetPrice']),
      lastSyncCustomerNetGroup:
          serializer.fromJson<String?>(json['lastSyncCustomerNetGroup']),
      lastSyncCustomerPendingPayment:
          serializer.fromJson<String?>(json['lastSyncCustomerPendingPayment']),
      lastSyncCustomerRappels:
          serializer.fromJson<String?>(json['lastSyncCustomerRappels']),
      lastSyncSalesOrder:
          serializer.fromJson<String?>(json['lastSyncSalesOrder']),
      lastSyncVisit: serializer.fromJson<String?>(json['lastSyncVisit']),
      lastSyncSalesOrderLine:
          serializer.fromJson<String?>(json['lastSyncSalesOrderLine']),
      lastSyncSalesOrderStatus:
          serializer.fromJson<String?>(json['lastSyncSalesOrderStatus']),
      lastSyncArticle: serializer.fromJson<String?>(json['lastSyncArticle']),
      lastSyncFamily: serializer.fromJson<String?>(json['lastSyncFamily']),
      lastSyncSubfamily:
          serializer.fromJson<String?>(json['lastSyncSubfamily']),
      lastSyncArticleNetGroup:
          serializer.fromJson<String?>(json['lastSyncArticleNetGroup']),
      lastSyncArticleRatePrice:
          serializer.fromJson<String?>(json['lastSyncArticleRatePrice']),
      lastSyncArticleComponent:
          serializer.fromJson<String?>(json['lastSyncArticleComponent']),
      lastSyncArticleSubstitute:
          serializer.fromJson<String?>(json['lastSyncArticleSubstitute']),
      lastSyncArticleSpare:
          serializer.fromJson<String?>(json['lastSyncArticleSpare']),
      lastSyncArticleCompanyVat:
          serializer.fromJson<String?>(json['lastSyncArticleCompanyVat']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'lastSyncDivisa': serializer.toJson<String?>(lastSyncDivisa),
      'lastSyncCountry': serializer.toJson<String?>(lastSyncCountry),
      'lastSyncCollectionMethod':
          serializer.toJson<String?>(lastSyncCollectionMethod),
      'lastSyncCollectionTerm':
          serializer.toJson<String?>(lastSyncCollectionTerm),
      'lastSyncCustomer': serializer.toJson<String?>(lastSyncCustomer),
      'lastSyncCustomerUser': serializer.toJson<String?>(lastSyncCustomerUser),
      'lastSyncCustomerContact':
          serializer.toJson<String?>(lastSyncCustomerContact),
      'lastSyncCustomerDiscount':
          serializer.toJson<String?>(lastSyncCustomerDiscount),
      'lastSyncCustomerAddress':
          serializer.toJson<String?>(lastSyncCustomerAddress),
      'lastSyncCustomerNetPrice':
          serializer.toJson<String?>(lastSyncCustomerNetPrice),
      'lastSyncCustomerNetGroup':
          serializer.toJson<String?>(lastSyncCustomerNetGroup),
      'lastSyncCustomerPendingPayment':
          serializer.toJson<String?>(lastSyncCustomerPendingPayment),
      'lastSyncCustomerRappels':
          serializer.toJson<String?>(lastSyncCustomerRappels),
      'lastSyncSalesOrder': serializer.toJson<String?>(lastSyncSalesOrder),
      'lastSyncVisit': serializer.toJson<String?>(lastSyncVisit),
      'lastSyncSalesOrderLine':
          serializer.toJson<String?>(lastSyncSalesOrderLine),
      'lastSyncSalesOrderStatus':
          serializer.toJson<String?>(lastSyncSalesOrderStatus),
      'lastSyncArticle': serializer.toJson<String?>(lastSyncArticle),
      'lastSyncFamily': serializer.toJson<String?>(lastSyncFamily),
      'lastSyncSubfamily': serializer.toJson<String?>(lastSyncSubfamily),
      'lastSyncArticleNetGroup':
          serializer.toJson<String?>(lastSyncArticleNetGroup),
      'lastSyncArticleRatePrice':
          serializer.toJson<String?>(lastSyncArticleRatePrice),
      'lastSyncArticleComponent':
          serializer.toJson<String?>(lastSyncArticleComponent),
      'lastSyncArticleSubstitute':
          serializer.toJson<String?>(lastSyncArticleSubstitute),
      'lastSyncArticleSpare': serializer.toJson<String?>(lastSyncArticleSpare),
      'lastSyncArticleCompanyVat':
          serializer.toJson<String?>(lastSyncArticleCompanyVat),
    };
  }

  LastSyncDateTableData copyWith(
          {String? id,
          String? lastSyncDivisa,
          String? lastSyncCountry,
          String? lastSyncCollectionMethod,
          String? lastSyncCollectionTerm,
          String? lastSyncCustomer,
          String? lastSyncCustomerUser,
          String? lastSyncCustomerContact,
          String? lastSyncCustomerDiscount,
          String? lastSyncCustomerAddress,
          String? lastSyncCustomerNetPrice,
          String? lastSyncCustomerNetGroup,
          String? lastSyncCustomerPendingPayment,
          String? lastSyncCustomerRappels,
          String? lastSyncSalesOrder,
          String? lastSyncVisit,
          String? lastSyncSalesOrderLine,
          String? lastSyncSalesOrderStatus,
          String? lastSyncArticle,
          String? lastSyncFamily,
          String? lastSyncSubfamily,
          String? lastSyncArticleNetGroup,
          String? lastSyncArticleRatePrice,
          String? lastSyncArticleComponent,
          String? lastSyncArticleSubstitute,
          String? lastSyncArticleSpare,
          String? lastSyncArticleCompanyVat}) =>
      LastSyncDateTableData(
        id: id ?? this.id,
        lastSyncDivisa: lastSyncDivisa ?? this.lastSyncDivisa,
        lastSyncCountry: lastSyncCountry ?? this.lastSyncCountry,
        lastSyncCollectionMethod:
            lastSyncCollectionMethod ?? this.lastSyncCollectionMethod,
        lastSyncCollectionTerm:
            lastSyncCollectionTerm ?? this.lastSyncCollectionTerm,
        lastSyncCustomer: lastSyncCustomer ?? this.lastSyncCustomer,
        lastSyncCustomerUser: lastSyncCustomerUser ?? this.lastSyncCustomerUser,
        lastSyncCustomerContact:
            lastSyncCustomerContact ?? this.lastSyncCustomerContact,
        lastSyncCustomerDiscount:
            lastSyncCustomerDiscount ?? this.lastSyncCustomerDiscount,
        lastSyncCustomerAddress:
            lastSyncCustomerAddress ?? this.lastSyncCustomerAddress,
        lastSyncCustomerNetPrice:
            lastSyncCustomerNetPrice ?? this.lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup:
            lastSyncCustomerNetGroup ?? this.lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment: lastSyncCustomerPendingPayment ??
            this.lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels:
            lastSyncCustomerRappels ?? this.lastSyncCustomerRappels,
        lastSyncSalesOrder: lastSyncSalesOrder ?? this.lastSyncSalesOrder,
        lastSyncVisit: lastSyncVisit ?? this.lastSyncVisit,
        lastSyncSalesOrderLine:
            lastSyncSalesOrderLine ?? this.lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus:
            lastSyncSalesOrderStatus ?? this.lastSyncSalesOrderStatus,
        lastSyncArticle: lastSyncArticle ?? this.lastSyncArticle,
        lastSyncFamily: lastSyncFamily ?? this.lastSyncFamily,
        lastSyncSubfamily: lastSyncSubfamily ?? this.lastSyncSubfamily,
        lastSyncArticleNetGroup:
            lastSyncArticleNetGroup ?? this.lastSyncArticleNetGroup,
        lastSyncArticleRatePrice:
            lastSyncArticleRatePrice ?? this.lastSyncArticleRatePrice,
        lastSyncArticleComponent:
            lastSyncArticleComponent ?? this.lastSyncArticleComponent,
        lastSyncArticleSubstitute:
            lastSyncArticleSubstitute ?? this.lastSyncArticleSubstitute,
        lastSyncArticleSpare: lastSyncArticleSpare ?? this.lastSyncArticleSpare,
        lastSyncArticleCompanyVat:
            lastSyncArticleCompanyVat ?? this.lastSyncArticleCompanyVat,
      );
  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableData(')
          ..write('id: $id, ')
          ..write('lastSyncDivisa: $lastSyncDivisa, ')
          ..write('lastSyncCountry: $lastSyncCountry, ')
          ..write('lastSyncCollectionMethod: $lastSyncCollectionMethod, ')
          ..write('lastSyncCollectionTerm: $lastSyncCollectionTerm, ')
          ..write('lastSyncCustomer: $lastSyncCustomer, ')
          ..write('lastSyncCustomerUser: $lastSyncCustomerUser, ')
          ..write('lastSyncCustomerContact: $lastSyncCustomerContact, ')
          ..write('lastSyncCustomerDiscount: $lastSyncCustomerDiscount, ')
          ..write('lastSyncCustomerAddress: $lastSyncCustomerAddress, ')
          ..write('lastSyncCustomerNetPrice: $lastSyncCustomerNetPrice, ')
          ..write('lastSyncCustomerNetGroup: $lastSyncCustomerNetGroup, ')
          ..write(
              'lastSyncCustomerPendingPayment: $lastSyncCustomerPendingPayment, ')
          ..write('lastSyncCustomerRappels: $lastSyncCustomerRappels, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncVisit: $lastSyncVisit, ')
          ..write('lastSyncSalesOrderLine: $lastSyncSalesOrderLine, ')
          ..write('lastSyncSalesOrderStatus: $lastSyncSalesOrderStatus, ')
          ..write('lastSyncArticle: $lastSyncArticle, ')
          ..write('lastSyncFamily: $lastSyncFamily, ')
          ..write('lastSyncSubfamily: $lastSyncSubfamily, ')
          ..write('lastSyncArticleNetGroup: $lastSyncArticleNetGroup, ')
          ..write('lastSyncArticleRatePrice: $lastSyncArticleRatePrice, ')
          ..write('lastSyncArticleComponent: $lastSyncArticleComponent, ')
          ..write('lastSyncArticleSubstitute: $lastSyncArticleSubstitute, ')
          ..write('lastSyncArticleSpare: $lastSyncArticleSpare, ')
          ..write('lastSyncArticleCompanyVat: $lastSyncArticleCompanyVat')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        id,
        lastSyncDivisa,
        lastSyncCountry,
        lastSyncCollectionMethod,
        lastSyncCollectionTerm,
        lastSyncCustomer,
        lastSyncCustomerUser,
        lastSyncCustomerContact,
        lastSyncCustomerDiscount,
        lastSyncCustomerAddress,
        lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels,
        lastSyncSalesOrder,
        lastSyncVisit,
        lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus,
        lastSyncArticle,
        lastSyncFamily,
        lastSyncSubfamily,
        lastSyncArticleNetGroup,
        lastSyncArticleRatePrice,
        lastSyncArticleComponent,
        lastSyncArticleSubstitute,
        lastSyncArticleSpare,
        lastSyncArticleCompanyVat
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LastSyncDateTableData &&
          other.id == this.id &&
          other.lastSyncDivisa == this.lastSyncDivisa &&
          other.lastSyncCountry == this.lastSyncCountry &&
          other.lastSyncCollectionMethod == this.lastSyncCollectionMethod &&
          other.lastSyncCollectionTerm == this.lastSyncCollectionTerm &&
          other.lastSyncCustomer == this.lastSyncCustomer &&
          other.lastSyncCustomerUser == this.lastSyncCustomerUser &&
          other.lastSyncCustomerContact == this.lastSyncCustomerContact &&
          other.lastSyncCustomerDiscount == this.lastSyncCustomerDiscount &&
          other.lastSyncCustomerAddress == this.lastSyncCustomerAddress &&
          other.lastSyncCustomerNetPrice == this.lastSyncCustomerNetPrice &&
          other.lastSyncCustomerNetGroup == this.lastSyncCustomerNetGroup &&
          other.lastSyncCustomerPendingPayment ==
              this.lastSyncCustomerPendingPayment &&
          other.lastSyncCustomerRappels == this.lastSyncCustomerRappels &&
          other.lastSyncSalesOrder == this.lastSyncSalesOrder &&
          other.lastSyncVisit == this.lastSyncVisit &&
          other.lastSyncSalesOrderLine == this.lastSyncSalesOrderLine &&
          other.lastSyncSalesOrderStatus == this.lastSyncSalesOrderStatus &&
          other.lastSyncArticle == this.lastSyncArticle &&
          other.lastSyncFamily == this.lastSyncFamily &&
          other.lastSyncSubfamily == this.lastSyncSubfamily &&
          other.lastSyncArticleNetGroup == this.lastSyncArticleNetGroup &&
          other.lastSyncArticleRatePrice == this.lastSyncArticleRatePrice &&
          other.lastSyncArticleComponent == this.lastSyncArticleComponent &&
          other.lastSyncArticleSubstitute == this.lastSyncArticleSubstitute &&
          other.lastSyncArticleSpare == this.lastSyncArticleSpare &&
          other.lastSyncArticleCompanyVat == this.lastSyncArticleCompanyVat);
}

class LastSyncDateTableCompanion
    extends UpdateCompanion<LastSyncDateTableData> {
  final Value<String> id;
  final Value<String?> lastSyncDivisa;
  final Value<String?> lastSyncCountry;
  final Value<String?> lastSyncCollectionMethod;
  final Value<String?> lastSyncCollectionTerm;
  final Value<String?> lastSyncCustomer;
  final Value<String?> lastSyncCustomerUser;
  final Value<String?> lastSyncCustomerContact;
  final Value<String?> lastSyncCustomerDiscount;
  final Value<String?> lastSyncCustomerAddress;
  final Value<String?> lastSyncCustomerNetPrice;
  final Value<String?> lastSyncCustomerNetGroup;
  final Value<String?> lastSyncCustomerPendingPayment;
  final Value<String?> lastSyncCustomerRappels;
  final Value<String?> lastSyncSalesOrder;
  final Value<String?> lastSyncVisit;
  final Value<String?> lastSyncSalesOrderLine;
  final Value<String?> lastSyncSalesOrderStatus;
  final Value<String?> lastSyncArticle;
  final Value<String?> lastSyncFamily;
  final Value<String?> lastSyncSubfamily;
  final Value<String?> lastSyncArticleNetGroup;
  final Value<String?> lastSyncArticleRatePrice;
  final Value<String?> lastSyncArticleComponent;
  final Value<String?> lastSyncArticleSubstitute;
  final Value<String?> lastSyncArticleSpare;
  final Value<String?> lastSyncArticleCompanyVat;
  const LastSyncDateTableCompanion({
    this.id = const Value.absent(),
    this.lastSyncDivisa = const Value.absent(),
    this.lastSyncCountry = const Value.absent(),
    this.lastSyncCollectionMethod = const Value.absent(),
    this.lastSyncCollectionTerm = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
    this.lastSyncCustomerUser = const Value.absent(),
    this.lastSyncCustomerContact = const Value.absent(),
    this.lastSyncCustomerDiscount = const Value.absent(),
    this.lastSyncCustomerAddress = const Value.absent(),
    this.lastSyncCustomerNetPrice = const Value.absent(),
    this.lastSyncCustomerNetGroup = const Value.absent(),
    this.lastSyncCustomerPendingPayment = const Value.absent(),
    this.lastSyncCustomerRappels = const Value.absent(),
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncVisit = const Value.absent(),
    this.lastSyncSalesOrderLine = const Value.absent(),
    this.lastSyncSalesOrderStatus = const Value.absent(),
    this.lastSyncArticle = const Value.absent(),
    this.lastSyncFamily = const Value.absent(),
    this.lastSyncSubfamily = const Value.absent(),
    this.lastSyncArticleNetGroup = const Value.absent(),
    this.lastSyncArticleRatePrice = const Value.absent(),
    this.lastSyncArticleComponent = const Value.absent(),
    this.lastSyncArticleSubstitute = const Value.absent(),
    this.lastSyncArticleSpare = const Value.absent(),
    this.lastSyncArticleCompanyVat = const Value.absent(),
  });
  LastSyncDateTableCompanion.insert({
    required String id,
    this.lastSyncDivisa = const Value.absent(),
    this.lastSyncCountry = const Value.absent(),
    this.lastSyncCollectionMethod = const Value.absent(),
    this.lastSyncCollectionTerm = const Value.absent(),
    this.lastSyncCustomer = const Value.absent(),
    this.lastSyncCustomerUser = const Value.absent(),
    this.lastSyncCustomerContact = const Value.absent(),
    this.lastSyncCustomerDiscount = const Value.absent(),
    this.lastSyncCustomerAddress = const Value.absent(),
    this.lastSyncCustomerNetPrice = const Value.absent(),
    this.lastSyncCustomerNetGroup = const Value.absent(),
    this.lastSyncCustomerPendingPayment = const Value.absent(),
    this.lastSyncCustomerRappels = const Value.absent(),
    this.lastSyncSalesOrder = const Value.absent(),
    this.lastSyncVisit = const Value.absent(),
    this.lastSyncSalesOrderLine = const Value.absent(),
    this.lastSyncSalesOrderStatus = const Value.absent(),
    this.lastSyncArticle = const Value.absent(),
    this.lastSyncFamily = const Value.absent(),
    this.lastSyncSubfamily = const Value.absent(),
    this.lastSyncArticleNetGroup = const Value.absent(),
    this.lastSyncArticleRatePrice = const Value.absent(),
    this.lastSyncArticleComponent = const Value.absent(),
    this.lastSyncArticleSubstitute = const Value.absent(),
    this.lastSyncArticleSpare = const Value.absent(),
    this.lastSyncArticleCompanyVat = const Value.absent(),
  }) : id = Value(id);
  static Insertable<LastSyncDateTableData> custom({
    Expression<String>? id,
    Expression<String?>? lastSyncDivisa,
    Expression<String?>? lastSyncCountry,
    Expression<String?>? lastSyncCollectionMethod,
    Expression<String?>? lastSyncCollectionTerm,
    Expression<String?>? lastSyncCustomer,
    Expression<String?>? lastSyncCustomerUser,
    Expression<String?>? lastSyncCustomerContact,
    Expression<String?>? lastSyncCustomerDiscount,
    Expression<String?>? lastSyncCustomerAddress,
    Expression<String?>? lastSyncCustomerNetPrice,
    Expression<String?>? lastSyncCustomerNetGroup,
    Expression<String?>? lastSyncCustomerPendingPayment,
    Expression<String?>? lastSyncCustomerRappels,
    Expression<String?>? lastSyncSalesOrder,
    Expression<String?>? lastSyncVisit,
    Expression<String?>? lastSyncSalesOrderLine,
    Expression<String?>? lastSyncSalesOrderStatus,
    Expression<String?>? lastSyncArticle,
    Expression<String?>? lastSyncFamily,
    Expression<String?>? lastSyncSubfamily,
    Expression<String?>? lastSyncArticleNetGroup,
    Expression<String?>? lastSyncArticleRatePrice,
    Expression<String?>? lastSyncArticleComponent,
    Expression<String?>? lastSyncArticleSubstitute,
    Expression<String?>? lastSyncArticleSpare,
    Expression<String?>? lastSyncArticleCompanyVat,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (lastSyncDivisa != null) 'LAST_SYNC_DIVISA': lastSyncDivisa,
      if (lastSyncCountry != null) 'LAST_SYNC_COUNTRY': lastSyncCountry,
      if (lastSyncCollectionMethod != null)
        'LAST_SYNC_COLLECTION_METHOD': lastSyncCollectionMethod,
      if (lastSyncCollectionTerm != null)
        'LAST_SYNC_COLLECTION_TERM': lastSyncCollectionTerm,
      if (lastSyncCustomer != null) 'LAST_SYNC_CUSTOMER': lastSyncCustomer,
      if (lastSyncCustomerUser != null)
        'LAST_SYNC_CUSTOMER_USER': lastSyncCustomerUser,
      if (lastSyncCustomerContact != null)
        'LAST_SYNC_CUSTOMER_CONTACT': lastSyncCustomerContact,
      if (lastSyncCustomerDiscount != null)
        'LAST_SYNC_CUSTOMER_DISCOUNT': lastSyncCustomerDiscount,
      if (lastSyncCustomerAddress != null)
        'LAST_SYNC_CUSTOMER_ADDRESS': lastSyncCustomerAddress,
      if (lastSyncCustomerNetPrice != null)
        'LAST_SYNC_CUSTOMER_NET_PRICE': lastSyncCustomerNetPrice,
      if (lastSyncCustomerNetGroup != null)
        'LAST_SYNC_CUSTOMER_NET_GROUP': lastSyncCustomerNetGroup,
      if (lastSyncCustomerPendingPayment != null)
        'LAST_SYNC_CUSTOMER_PENDING_PAYMENT': lastSyncCustomerPendingPayment,
      if (lastSyncCustomerRappels != null)
        'LAST_SYNC_CUSTOMER_RAPPELS': lastSyncCustomerRappels,
      if (lastSyncSalesOrder != null)
        'LAST_SYNC_SALES_ORDER': lastSyncSalesOrder,
      if (lastSyncVisit != null) 'LAST_SYNC_VISIT': lastSyncVisit,
      if (lastSyncSalesOrderLine != null)
        'LAST_SYNC_SALES_ORDER_LINE': lastSyncSalesOrderLine,
      if (lastSyncSalesOrderStatus != null)
        'LAST_SYNC_SALES_ORDER_STATUS': lastSyncSalesOrderStatus,
      if (lastSyncArticle != null) 'LAST_SYNC_ARTICLE': lastSyncArticle,
      if (lastSyncFamily != null) 'LAST_SYNC_FAMILY': lastSyncFamily,
      if (lastSyncSubfamily != null) 'LAST_SYNC_SUBFAMILY': lastSyncSubfamily,
      if (lastSyncArticleNetGroup != null)
        'LAST_SYNC_ARtICLE_NET_GROUP': lastSyncArticleNetGroup,
      if (lastSyncArticleRatePrice != null)
        'LAST_SYNC_ARTICLE_RATE_PRICE': lastSyncArticleRatePrice,
      if (lastSyncArticleComponent != null)
        'LAST_SYNC_ARTICLE_COMPONENT': lastSyncArticleComponent,
      if (lastSyncArticleSubstitute != null)
        'LAST_SYNC_ARTICLE_SUBSTITUTE': lastSyncArticleSubstitute,
      if (lastSyncArticleSpare != null)
        'LAST_SYNC_ARTICLE_SPARE': lastSyncArticleSpare,
      if (lastSyncArticleCompanyVat != null)
        'LAST_SYNC_ARTICLE_COMPANY_VAT': lastSyncArticleCompanyVat,
    });
  }

  LastSyncDateTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? lastSyncDivisa,
      Value<String?>? lastSyncCountry,
      Value<String?>? lastSyncCollectionMethod,
      Value<String?>? lastSyncCollectionTerm,
      Value<String?>? lastSyncCustomer,
      Value<String?>? lastSyncCustomerUser,
      Value<String?>? lastSyncCustomerContact,
      Value<String?>? lastSyncCustomerDiscount,
      Value<String?>? lastSyncCustomerAddress,
      Value<String?>? lastSyncCustomerNetPrice,
      Value<String?>? lastSyncCustomerNetGroup,
      Value<String?>? lastSyncCustomerPendingPayment,
      Value<String?>? lastSyncCustomerRappels,
      Value<String?>? lastSyncSalesOrder,
      Value<String?>? lastSyncVisit,
      Value<String?>? lastSyncSalesOrderLine,
      Value<String?>? lastSyncSalesOrderStatus,
      Value<String?>? lastSyncArticle,
      Value<String?>? lastSyncFamily,
      Value<String?>? lastSyncSubfamily,
      Value<String?>? lastSyncArticleNetGroup,
      Value<String?>? lastSyncArticleRatePrice,
      Value<String?>? lastSyncArticleComponent,
      Value<String?>? lastSyncArticleSubstitute,
      Value<String?>? lastSyncArticleSpare,
      Value<String?>? lastSyncArticleCompanyVat}) {
    return LastSyncDateTableCompanion(
      id: id ?? this.id,
      lastSyncDivisa: lastSyncDivisa ?? this.lastSyncDivisa,
      lastSyncCountry: lastSyncCountry ?? this.lastSyncCountry,
      lastSyncCollectionMethod:
          lastSyncCollectionMethod ?? this.lastSyncCollectionMethod,
      lastSyncCollectionTerm:
          lastSyncCollectionTerm ?? this.lastSyncCollectionTerm,
      lastSyncCustomer: lastSyncCustomer ?? this.lastSyncCustomer,
      lastSyncCustomerUser: lastSyncCustomerUser ?? this.lastSyncCustomerUser,
      lastSyncCustomerContact:
          lastSyncCustomerContact ?? this.lastSyncCustomerContact,
      lastSyncCustomerDiscount:
          lastSyncCustomerDiscount ?? this.lastSyncCustomerDiscount,
      lastSyncCustomerAddress:
          lastSyncCustomerAddress ?? this.lastSyncCustomerAddress,
      lastSyncCustomerNetPrice:
          lastSyncCustomerNetPrice ?? this.lastSyncCustomerNetPrice,
      lastSyncCustomerNetGroup:
          lastSyncCustomerNetGroup ?? this.lastSyncCustomerNetGroup,
      lastSyncCustomerPendingPayment:
          lastSyncCustomerPendingPayment ?? this.lastSyncCustomerPendingPayment,
      lastSyncCustomerRappels:
          lastSyncCustomerRappels ?? this.lastSyncCustomerRappels,
      lastSyncSalesOrder: lastSyncSalesOrder ?? this.lastSyncSalesOrder,
      lastSyncVisit: lastSyncVisit ?? this.lastSyncVisit,
      lastSyncSalesOrderLine:
          lastSyncSalesOrderLine ?? this.lastSyncSalesOrderLine,
      lastSyncSalesOrderStatus:
          lastSyncSalesOrderStatus ?? this.lastSyncSalesOrderStatus,
      lastSyncArticle: lastSyncArticle ?? this.lastSyncArticle,
      lastSyncFamily: lastSyncFamily ?? this.lastSyncFamily,
      lastSyncSubfamily: lastSyncSubfamily ?? this.lastSyncSubfamily,
      lastSyncArticleNetGroup:
          lastSyncArticleNetGroup ?? this.lastSyncArticleNetGroup,
      lastSyncArticleRatePrice:
          lastSyncArticleRatePrice ?? this.lastSyncArticleRatePrice,
      lastSyncArticleComponent:
          lastSyncArticleComponent ?? this.lastSyncArticleComponent,
      lastSyncArticleSubstitute:
          lastSyncArticleSubstitute ?? this.lastSyncArticleSubstitute,
      lastSyncArticleSpare: lastSyncArticleSpare ?? this.lastSyncArticleSpare,
      lastSyncArticleCompanyVat:
          lastSyncArticleCompanyVat ?? this.lastSyncArticleCompanyVat,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<String>(id.value);
    }
    if (lastSyncDivisa.present) {
      map['LAST_SYNC_DIVISA'] = Variable<String?>(lastSyncDivisa.value);
    }
    if (lastSyncCountry.present) {
      map['LAST_SYNC_COUNTRY'] = Variable<String?>(lastSyncCountry.value);
    }
    if (lastSyncCollectionMethod.present) {
      map['LAST_SYNC_COLLECTION_METHOD'] =
          Variable<String?>(lastSyncCollectionMethod.value);
    }
    if (lastSyncCollectionTerm.present) {
      map['LAST_SYNC_COLLECTION_TERM'] =
          Variable<String?>(lastSyncCollectionTerm.value);
    }
    if (lastSyncCustomer.present) {
      map['LAST_SYNC_CUSTOMER'] = Variable<String?>(lastSyncCustomer.value);
    }
    if (lastSyncCustomerUser.present) {
      map['LAST_SYNC_CUSTOMER_USER'] =
          Variable<String?>(lastSyncCustomerUser.value);
    }
    if (lastSyncCustomerContact.present) {
      map['LAST_SYNC_CUSTOMER_CONTACT'] =
          Variable<String?>(lastSyncCustomerContact.value);
    }
    if (lastSyncCustomerDiscount.present) {
      map['LAST_SYNC_CUSTOMER_DISCOUNT'] =
          Variable<String?>(lastSyncCustomerDiscount.value);
    }
    if (lastSyncCustomerAddress.present) {
      map['LAST_SYNC_CUSTOMER_ADDRESS'] =
          Variable<String?>(lastSyncCustomerAddress.value);
    }
    if (lastSyncCustomerNetPrice.present) {
      map['LAST_SYNC_CUSTOMER_NET_PRICE'] =
          Variable<String?>(lastSyncCustomerNetPrice.value);
    }
    if (lastSyncCustomerNetGroup.present) {
      map['LAST_SYNC_CUSTOMER_NET_GROUP'] =
          Variable<String?>(lastSyncCustomerNetGroup.value);
    }
    if (lastSyncCustomerPendingPayment.present) {
      map['LAST_SYNC_CUSTOMER_PENDING_PAYMENT'] =
          Variable<String?>(lastSyncCustomerPendingPayment.value);
    }
    if (lastSyncCustomerRappels.present) {
      map['LAST_SYNC_CUSTOMER_RAPPELS'] =
          Variable<String?>(lastSyncCustomerRappels.value);
    }
    if (lastSyncSalesOrder.present) {
      map['LAST_SYNC_SALES_ORDER'] =
          Variable<String?>(lastSyncSalesOrder.value);
    }
    if (lastSyncVisit.present) {
      map['LAST_SYNC_VISIT'] = Variable<String?>(lastSyncVisit.value);
    }
    if (lastSyncSalesOrderLine.present) {
      map['LAST_SYNC_SALES_ORDER_LINE'] =
          Variable<String?>(lastSyncSalesOrderLine.value);
    }
    if (lastSyncSalesOrderStatus.present) {
      map['LAST_SYNC_SALES_ORDER_STATUS'] =
          Variable<String?>(lastSyncSalesOrderStatus.value);
    }
    if (lastSyncArticle.present) {
      map['LAST_SYNC_ARTICLE'] = Variable<String?>(lastSyncArticle.value);
    }
    if (lastSyncFamily.present) {
      map['LAST_SYNC_FAMILY'] = Variable<String?>(lastSyncFamily.value);
    }
    if (lastSyncSubfamily.present) {
      map['LAST_SYNC_SUBFAMILY'] = Variable<String?>(lastSyncSubfamily.value);
    }
    if (lastSyncArticleNetGroup.present) {
      map['LAST_SYNC_ARtICLE_NET_GROUP'] =
          Variable<String?>(lastSyncArticleNetGroup.value);
    }
    if (lastSyncArticleRatePrice.present) {
      map['LAST_SYNC_ARTICLE_RATE_PRICE'] =
          Variable<String?>(lastSyncArticleRatePrice.value);
    }
    if (lastSyncArticleComponent.present) {
      map['LAST_SYNC_ARTICLE_COMPONENT'] =
          Variable<String?>(lastSyncArticleComponent.value);
    }
    if (lastSyncArticleSubstitute.present) {
      map['LAST_SYNC_ARTICLE_SUBSTITUTE'] =
          Variable<String?>(lastSyncArticleSubstitute.value);
    }
    if (lastSyncArticleSpare.present) {
      map['LAST_SYNC_ARTICLE_SPARE'] =
          Variable<String?>(lastSyncArticleSpare.value);
    }
    if (lastSyncArticleCompanyVat.present) {
      map['LAST_SYNC_ARTICLE_COMPANY_VAT'] =
          Variable<String?>(lastSyncArticleCompanyVat.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LastSyncDateTableCompanion(')
          ..write('id: $id, ')
          ..write('lastSyncDivisa: $lastSyncDivisa, ')
          ..write('lastSyncCountry: $lastSyncCountry, ')
          ..write('lastSyncCollectionMethod: $lastSyncCollectionMethod, ')
          ..write('lastSyncCollectionTerm: $lastSyncCollectionTerm, ')
          ..write('lastSyncCustomer: $lastSyncCustomer, ')
          ..write('lastSyncCustomerUser: $lastSyncCustomerUser, ')
          ..write('lastSyncCustomerContact: $lastSyncCustomerContact, ')
          ..write('lastSyncCustomerDiscount: $lastSyncCustomerDiscount, ')
          ..write('lastSyncCustomerAddress: $lastSyncCustomerAddress, ')
          ..write('lastSyncCustomerNetPrice: $lastSyncCustomerNetPrice, ')
          ..write('lastSyncCustomerNetGroup: $lastSyncCustomerNetGroup, ')
          ..write(
              'lastSyncCustomerPendingPayment: $lastSyncCustomerPendingPayment, ')
          ..write('lastSyncCustomerRappels: $lastSyncCustomerRappels, ')
          ..write('lastSyncSalesOrder: $lastSyncSalesOrder, ')
          ..write('lastSyncVisit: $lastSyncVisit, ')
          ..write('lastSyncSalesOrderLine: $lastSyncSalesOrderLine, ')
          ..write('lastSyncSalesOrderStatus: $lastSyncSalesOrderStatus, ')
          ..write('lastSyncArticle: $lastSyncArticle, ')
          ..write('lastSyncFamily: $lastSyncFamily, ')
          ..write('lastSyncSubfamily: $lastSyncSubfamily, ')
          ..write('lastSyncArticleNetGroup: $lastSyncArticleNetGroup, ')
          ..write('lastSyncArticleRatePrice: $lastSyncArticleRatePrice, ')
          ..write('lastSyncArticleComponent: $lastSyncArticleComponent, ')
          ..write('lastSyncArticleSubstitute: $lastSyncArticleSubstitute, ')
          ..write('lastSyncArticleSpare: $lastSyncArticleSpare, ')
          ..write('lastSyncArticleCompanyVat: $lastSyncArticleCompanyVat')
          ..write(')'))
        .toString();
  }
}

class $LastSyncDateTableTable extends LastSyncDateTable
    with TableInfo<$LastSyncDateTableTable, LastSyncDateTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LastSyncDateTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastSyncDivisaMeta =
      const VerificationMeta('lastSyncDivisa');
  @override
  late final GeneratedColumn<String?> lastSyncDivisa = GeneratedColumn<String?>(
      'LAST_SYNC_DIVISA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCountryMeta =
      const VerificationMeta('lastSyncCountry');
  @override
  late final GeneratedColumn<String?> lastSyncCountry =
      GeneratedColumn<String?>('LAST_SYNC_COUNTRY', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCollectionMethodMeta =
      const VerificationMeta('lastSyncCollectionMethod');
  @override
  late final GeneratedColumn<String?> lastSyncCollectionMethod =
      GeneratedColumn<String?>('LAST_SYNC_COLLECTION_METHOD', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCollectionTermMeta =
      const VerificationMeta('lastSyncCollectionTerm');
  @override
  late final GeneratedColumn<String?> lastSyncCollectionTerm =
      GeneratedColumn<String?>('LAST_SYNC_COLLECTION_TERM', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerMeta =
      const VerificationMeta('lastSyncCustomer');
  @override
  late final GeneratedColumn<String?> lastSyncCustomer =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerUserMeta =
      const VerificationMeta('lastSyncCustomerUser');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerUser =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER_USER', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerContactMeta =
      const VerificationMeta('lastSyncCustomerContact');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerContact =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER_CONTACT', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerDiscountMeta =
      const VerificationMeta('lastSyncCustomerDiscount');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerDiscount =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER_DISCOUNT', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerAddressMeta =
      const VerificationMeta('lastSyncCustomerAddress');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerAddress =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER_ADDRESS', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerNetPriceMeta =
      const VerificationMeta('lastSyncCustomerNetPrice');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerNetPrice =
      GeneratedColumn<String?>(
          'LAST_SYNC_CUSTOMER_NET_PRICE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerNetGroupMeta =
      const VerificationMeta('lastSyncCustomerNetGroup');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerNetGroup =
      GeneratedColumn<String?>(
          'LAST_SYNC_CUSTOMER_NET_GROUP', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerPendingPaymentMeta =
      const VerificationMeta('lastSyncCustomerPendingPayment');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerPendingPayment =
      GeneratedColumn<String?>(
          'LAST_SYNC_CUSTOMER_PENDING_PAYMENT', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncCustomerRappelsMeta =
      const VerificationMeta('lastSyncCustomerRappels');
  @override
  late final GeneratedColumn<String?> lastSyncCustomerRappels =
      GeneratedColumn<String?>('LAST_SYNC_CUSTOMER_RAPPELS', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderMeta =
      const VerificationMeta('lastSyncSalesOrder');
  @override
  late final GeneratedColumn<String?> lastSyncSalesOrder =
      GeneratedColumn<String?>('LAST_SYNC_SALES_ORDER', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncVisitMeta =
      const VerificationMeta('lastSyncVisit');
  @override
  late final GeneratedColumn<String?> lastSyncVisit = GeneratedColumn<String?>(
      'LAST_SYNC_VISIT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderLineMeta =
      const VerificationMeta('lastSyncSalesOrderLine');
  @override
  late final GeneratedColumn<String?> lastSyncSalesOrderLine =
      GeneratedColumn<String?>('LAST_SYNC_SALES_ORDER_LINE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncSalesOrderStatusMeta =
      const VerificationMeta('lastSyncSalesOrderStatus');
  @override
  late final GeneratedColumn<String?> lastSyncSalesOrderStatus =
      GeneratedColumn<String?>(
          'LAST_SYNC_SALES_ORDER_STATUS', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleMeta =
      const VerificationMeta('lastSyncArticle');
  @override
  late final GeneratedColumn<String?> lastSyncArticle =
      GeneratedColumn<String?>('LAST_SYNC_ARTICLE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncFamilyMeta =
      const VerificationMeta('lastSyncFamily');
  @override
  late final GeneratedColumn<String?> lastSyncFamily = GeneratedColumn<String?>(
      'LAST_SYNC_FAMILY', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncSubfamilyMeta =
      const VerificationMeta('lastSyncSubfamily');
  @override
  late final GeneratedColumn<String?> lastSyncSubfamily =
      GeneratedColumn<String?>('LAST_SYNC_SUBFAMILY', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleNetGroupMeta =
      const VerificationMeta('lastSyncArticleNetGroup');
  @override
  late final GeneratedColumn<String?> lastSyncArticleNetGroup =
      GeneratedColumn<String?>('LAST_SYNC_ARtICLE_NET_GROUP', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleRatePriceMeta =
      const VerificationMeta('lastSyncArticleRatePrice');
  @override
  late final GeneratedColumn<String?> lastSyncArticleRatePrice =
      GeneratedColumn<String?>(
          'LAST_SYNC_ARTICLE_RATE_PRICE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleComponentMeta =
      const VerificationMeta('lastSyncArticleComponent');
  @override
  late final GeneratedColumn<String?> lastSyncArticleComponent =
      GeneratedColumn<String?>('LAST_SYNC_ARTICLE_COMPONENT', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleSubstituteMeta =
      const VerificationMeta('lastSyncArticleSubstitute');
  @override
  late final GeneratedColumn<String?> lastSyncArticleSubstitute =
      GeneratedColumn<String?>(
          'LAST_SYNC_ARTICLE_SUBSTITUTE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleSpareMeta =
      const VerificationMeta('lastSyncArticleSpare');
  @override
  late final GeneratedColumn<String?> lastSyncArticleSpare =
      GeneratedColumn<String?>('LAST_SYNC_ARTICLE_SPARE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastSyncArticleCompanyVatMeta =
      const VerificationMeta('lastSyncArticleCompanyVat');
  @override
  late final GeneratedColumn<String?> lastSyncArticleCompanyVat =
      GeneratedColumn<String?>(
          'LAST_SYNC_ARTICLE_COMPANY_VAT', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        lastSyncDivisa,
        lastSyncCountry,
        lastSyncCollectionMethod,
        lastSyncCollectionTerm,
        lastSyncCustomer,
        lastSyncCustomerUser,
        lastSyncCustomerContact,
        lastSyncCustomerDiscount,
        lastSyncCustomerAddress,
        lastSyncCustomerNetPrice,
        lastSyncCustomerNetGroup,
        lastSyncCustomerPendingPayment,
        lastSyncCustomerRappels,
        lastSyncSalesOrder,
        lastSyncVisit,
        lastSyncSalesOrderLine,
        lastSyncSalesOrderStatus,
        lastSyncArticle,
        lastSyncFamily,
        lastSyncSubfamily,
        lastSyncArticleNetGroup,
        lastSyncArticleRatePrice,
        lastSyncArticleComponent,
        lastSyncArticleSubstitute,
        lastSyncArticleSpare,
        lastSyncArticleCompanyVat
      ];
  @override
  String get aliasedName => _alias ?? 'LAST_SYNC_DATE';
  @override
  String get actualTableName => 'LAST_SYNC_DATE';
  @override
  VerificationContext validateIntegrity(
      Insertable<LastSyncDateTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('LAST_SYNC_DIVISA')) {
      context.handle(
          _lastSyncDivisaMeta,
          lastSyncDivisa.isAcceptableOrUnknown(
              data['LAST_SYNC_DIVISA']!, _lastSyncDivisaMeta));
    }
    if (data.containsKey('LAST_SYNC_COUNTRY')) {
      context.handle(
          _lastSyncCountryMeta,
          lastSyncCountry.isAcceptableOrUnknown(
              data['LAST_SYNC_COUNTRY']!, _lastSyncCountryMeta));
    }
    if (data.containsKey('LAST_SYNC_COLLECTION_METHOD')) {
      context.handle(
          _lastSyncCollectionMethodMeta,
          lastSyncCollectionMethod.isAcceptableOrUnknown(
              data['LAST_SYNC_COLLECTION_METHOD']!,
              _lastSyncCollectionMethodMeta));
    }
    if (data.containsKey('LAST_SYNC_COLLECTION_TERM')) {
      context.handle(
          _lastSyncCollectionTermMeta,
          lastSyncCollectionTerm.isAcceptableOrUnknown(
              data['LAST_SYNC_COLLECTION_TERM']!, _lastSyncCollectionTermMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER')) {
      context.handle(
          _lastSyncCustomerMeta,
          lastSyncCustomer.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER']!, _lastSyncCustomerMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_USER')) {
      context.handle(
          _lastSyncCustomerUserMeta,
          lastSyncCustomerUser.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_USER']!, _lastSyncCustomerUserMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_CONTACT')) {
      context.handle(
          _lastSyncCustomerContactMeta,
          lastSyncCustomerContact.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_CONTACT']!,
              _lastSyncCustomerContactMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_DISCOUNT')) {
      context.handle(
          _lastSyncCustomerDiscountMeta,
          lastSyncCustomerDiscount.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_DISCOUNT']!,
              _lastSyncCustomerDiscountMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_ADDRESS')) {
      context.handle(
          _lastSyncCustomerAddressMeta,
          lastSyncCustomerAddress.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_ADDRESS']!,
              _lastSyncCustomerAddressMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_NET_PRICE')) {
      context.handle(
          _lastSyncCustomerNetPriceMeta,
          lastSyncCustomerNetPrice.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_NET_PRICE']!,
              _lastSyncCustomerNetPriceMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_NET_GROUP')) {
      context.handle(
          _lastSyncCustomerNetGroupMeta,
          lastSyncCustomerNetGroup.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_NET_GROUP']!,
              _lastSyncCustomerNetGroupMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_PENDING_PAYMENT')) {
      context.handle(
          _lastSyncCustomerPendingPaymentMeta,
          lastSyncCustomerPendingPayment.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_PENDING_PAYMENT']!,
              _lastSyncCustomerPendingPaymentMeta));
    }
    if (data.containsKey('LAST_SYNC_CUSTOMER_RAPPELS')) {
      context.handle(
          _lastSyncCustomerRappelsMeta,
          lastSyncCustomerRappels.isAcceptableOrUnknown(
              data['LAST_SYNC_CUSTOMER_RAPPELS']!,
              _lastSyncCustomerRappelsMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER')) {
      context.handle(
          _lastSyncSalesOrderMeta,
          lastSyncSalesOrder.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER']!, _lastSyncSalesOrderMeta));
    }
    if (data.containsKey('LAST_SYNC_VISIT')) {
      context.handle(
          _lastSyncVisitMeta,
          lastSyncVisit.isAcceptableOrUnknown(
              data['LAST_SYNC_VISIT']!, _lastSyncVisitMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER_LINE')) {
      context.handle(
          _lastSyncSalesOrderLineMeta,
          lastSyncSalesOrderLine.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER_LINE']!,
              _lastSyncSalesOrderLineMeta));
    }
    if (data.containsKey('LAST_SYNC_SALES_ORDER_STATUS')) {
      context.handle(
          _lastSyncSalesOrderStatusMeta,
          lastSyncSalesOrderStatus.isAcceptableOrUnknown(
              data['LAST_SYNC_SALES_ORDER_STATUS']!,
              _lastSyncSalesOrderStatusMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE')) {
      context.handle(
          _lastSyncArticleMeta,
          lastSyncArticle.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE']!, _lastSyncArticleMeta));
    }
    if (data.containsKey('LAST_SYNC_FAMILY')) {
      context.handle(
          _lastSyncFamilyMeta,
          lastSyncFamily.isAcceptableOrUnknown(
              data['LAST_SYNC_FAMILY']!, _lastSyncFamilyMeta));
    }
    if (data.containsKey('LAST_SYNC_SUBFAMILY')) {
      context.handle(
          _lastSyncSubfamilyMeta,
          lastSyncSubfamily.isAcceptableOrUnknown(
              data['LAST_SYNC_SUBFAMILY']!, _lastSyncSubfamilyMeta));
    }
    if (data.containsKey('LAST_SYNC_ARtICLE_NET_GROUP')) {
      context.handle(
          _lastSyncArticleNetGroupMeta,
          lastSyncArticleNetGroup.isAcceptableOrUnknown(
              data['LAST_SYNC_ARtICLE_NET_GROUP']!,
              _lastSyncArticleNetGroupMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_RATE_PRICE')) {
      context.handle(
          _lastSyncArticleRatePriceMeta,
          lastSyncArticleRatePrice.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_RATE_PRICE']!,
              _lastSyncArticleRatePriceMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_COMPONENT')) {
      context.handle(
          _lastSyncArticleComponentMeta,
          lastSyncArticleComponent.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_COMPONENT']!,
              _lastSyncArticleComponentMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_SUBSTITUTE')) {
      context.handle(
          _lastSyncArticleSubstituteMeta,
          lastSyncArticleSubstitute.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_SUBSTITUTE']!,
              _lastSyncArticleSubstituteMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_SPARE')) {
      context.handle(
          _lastSyncArticleSpareMeta,
          lastSyncArticleSpare.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_SPARE']!, _lastSyncArticleSpareMeta));
    }
    if (data.containsKey('LAST_SYNC_ARTICLE_COMPANY_VAT')) {
      context.handle(
          _lastSyncArticleCompanyVatMeta,
          lastSyncArticleCompanyVat.isAcceptableOrUnknown(
              data['LAST_SYNC_ARTICLE_COMPANY_VAT']!,
              _lastSyncArticleCompanyVatMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LastSyncDateTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    return LastSyncDateTableData.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $LastSyncDateTableTable createAlias(String alias) {
    return $LastSyncDateTableTable(attachedDatabase, alias);
  }
}

class CollectionMethodTableCompanion
    extends UpdateCompanion<CollectionMethodDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionMethodTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionMethodTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionMethodDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'METODO_COBRO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CollectionMethodTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionMethodTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['METODO_COBRO_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionMethodTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionMethodTableTable extends CollectionMethodTable
    with TableInfo<$CollectionMethodTableTable, CollectionMethodDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionMethodTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'METODO_COBRO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'METODOS_COBRO';
  @override
  String get actualTableName => 'METODOS_COBRO';
  @override
  VerificationContext validateIntegrity(
      Insertable<CollectionMethodDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['METODO_COBRO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionMethodDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionMethodDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}METODO_COBRO_ID'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CollectionMethodTableTable createAlias(String alias) {
    return $CollectionMethodTableTable(attachedDatabase, alias);
  }
}

class CollectionTermTableCompanion extends UpdateCompanion<CollectionTermDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CollectionTermTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CollectionTermTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<CollectionTermDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PLAZOS_COBRO_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CollectionTermTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CollectionTermTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PLAZOS_COBRO_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CollectionTermTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CollectionTermTableTable extends CollectionTermTable
    with TableInfo<$CollectionTermTableTable, CollectionTermDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CollectionTermTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'PLAZOS_COBRO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PLAZOS_COBRO';
  @override
  String get actualTableName => 'PLAZOS_COBRO';
  @override
  VerificationContext validateIntegrity(Insertable<CollectionTermDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PLAZOS_COBRO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PLAZOS_COBRO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CollectionTermDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CollectionTermDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PLAZOS_COBRO_ID'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CollectionTermTableTable createAlias(String alias) {
    return $CollectionTermTableTable(attachedDatabase, alias);
  }
}

class CustomerTableCompanion extends UpdateCompanion<CustomerDTO> {
  final Value<String> id;
  final Value<String?> customerName;
  final Value<String?> nif;
  final Value<String?> fiscalName;
  final Value<String?> fiscalAddress1;
  final Value<String?> fiscalAddress2;
  final Value<String?> fiscalZipCode;
  final Value<String?> fiscalCity;
  final Value<String?> fiscalState;
  final Value<String?> fiscalCountryId;
  final Value<double?> fiscalLatitude;
  final Value<double?> fiscalLongitude;
  final Value<String> companyId;
  final Value<double?> especialVAT;
  final Value<String?> exemptVat;
  final Value<double?> currentYearSales;
  final Value<double?> previousYearSales;
  final Value<double?> salesTwoYearsAgo;
  final Value<double?> currentYearMargin;
  final Value<double?> previousYearMargin;
  final Value<double?> marginTwoYearsAgo;
  final Value<double?> paymentPercent;
  final Value<double?> warrantyPercent;
  final Value<String?> shoppingCenterName;
  final Value<String?> urlWebsite;
  final Value<String?> divisaId;
  final Value<String?> rateId;
  final Value<String?> rateDescription;
  final Value<String?> generalDiscount;
  final Value<String?> generalDiscountDescription;
  final Value<String> priceCalculationType;
  final Value<String?> collectionTermId;
  final Value<String?> collectionMethodId;
  final Value<double> promptPaymentDiscount;
  final Value<double> internalGrantedRisk;
  final Value<DateTime?> internalGrantedRiskDate;
  final Value<double> cofaceGrantedRisk;
  final Value<DateTime?> cofaceGrantedRiskDate;
  final Value<double?> riskGranted;
  final Value<double?> riskPendingCollectionDue;
  final Value<double?> riskPendingColleectionNotDue;
  final Value<double?> riskPendingToServe;
  final Value<double?> riskPendingBilling;
  final Value<String?> internalRemarks;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerTableCompanion({
    this.id = const Value.absent(),
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    this.companyId = const Value.absent(),
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    this.priceCalculationType = const Value.absent(),
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.promptPaymentDiscount = const Value.absent(),
    this.internalGrantedRisk = const Value.absent(),
    this.internalGrantedRiskDate = const Value.absent(),
    this.cofaceGrantedRisk = const Value.absent(),
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerTableCompanion.insert({
    required String id,
    this.customerName = const Value.absent(),
    this.nif = const Value.absent(),
    this.fiscalName = const Value.absent(),
    this.fiscalAddress1 = const Value.absent(),
    this.fiscalAddress2 = const Value.absent(),
    this.fiscalZipCode = const Value.absent(),
    this.fiscalCity = const Value.absent(),
    this.fiscalState = const Value.absent(),
    this.fiscalCountryId = const Value.absent(),
    this.fiscalLatitude = const Value.absent(),
    this.fiscalLongitude = const Value.absent(),
    required String companyId,
    this.especialVAT = const Value.absent(),
    this.exemptVat = const Value.absent(),
    this.currentYearSales = const Value.absent(),
    this.previousYearSales = const Value.absent(),
    this.salesTwoYearsAgo = const Value.absent(),
    this.currentYearMargin = const Value.absent(),
    this.previousYearMargin = const Value.absent(),
    this.marginTwoYearsAgo = const Value.absent(),
    this.paymentPercent = const Value.absent(),
    this.warrantyPercent = const Value.absent(),
    this.shoppingCenterName = const Value.absent(),
    this.urlWebsite = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.rateId = const Value.absent(),
    this.rateDescription = const Value.absent(),
    this.generalDiscount = const Value.absent(),
    this.generalDiscountDescription = const Value.absent(),
    required String priceCalculationType,
    this.collectionTermId = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    required double promptPaymentDiscount,
    required double internalGrantedRisk,
    this.internalGrantedRiskDate = const Value.absent(),
    required double cofaceGrantedRisk,
    this.cofaceGrantedRiskDate = const Value.absent(),
    this.riskGranted = const Value.absent(),
    this.riskPendingCollectionDue = const Value.absent(),
    this.riskPendingColleectionNotDue = const Value.absent(),
    this.riskPendingToServe = const Value.absent(),
    this.riskPendingBilling = const Value.absent(),
    this.internalRemarks = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        companyId = Value(companyId),
        priceCalculationType = Value(priceCalculationType),
        promptPaymentDiscount = Value(promptPaymentDiscount),
        internalGrantedRisk = Value(internalGrantedRisk),
        cofaceGrantedRisk = Value(cofaceGrantedRisk),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerDTO> custom({
    Expression<String>? id,
    Expression<String?>? customerName,
    Expression<String?>? nif,
    Expression<String?>? fiscalName,
    Expression<String?>? fiscalAddress1,
    Expression<String?>? fiscalAddress2,
    Expression<String?>? fiscalZipCode,
    Expression<String?>? fiscalCity,
    Expression<String?>? fiscalState,
    Expression<String?>? fiscalCountryId,
    Expression<double?>? fiscalLatitude,
    Expression<double?>? fiscalLongitude,
    Expression<String>? companyId,
    Expression<double?>? especialVAT,
    Expression<String?>? exemptVat,
    Expression<double?>? currentYearSales,
    Expression<double?>? previousYearSales,
    Expression<double?>? salesTwoYearsAgo,
    Expression<double?>? currentYearMargin,
    Expression<double?>? previousYearMargin,
    Expression<double?>? marginTwoYearsAgo,
    Expression<double?>? paymentPercent,
    Expression<double?>? warrantyPercent,
    Expression<String?>? shoppingCenterName,
    Expression<String?>? urlWebsite,
    Expression<String?>? divisaId,
    Expression<String?>? rateId,
    Expression<String?>? rateDescription,
    Expression<String?>? generalDiscount,
    Expression<String?>? generalDiscountDescription,
    Expression<String>? priceCalculationType,
    Expression<String?>? collectionTermId,
    Expression<String?>? collectionMethodId,
    Expression<double>? promptPaymentDiscount,
    Expression<double>? internalGrantedRisk,
    Expression<DateTime?>? internalGrantedRiskDate,
    Expression<double>? cofaceGrantedRisk,
    Expression<DateTime?>? cofaceGrantedRiskDate,
    Expression<double?>? riskGranted,
    Expression<double?>? riskPendingCollectionDue,
    Expression<double?>? riskPendingColleectionNotDue,
    Expression<double?>? riskPendingToServe,
    Expression<double?>? riskPendingBilling,
    Expression<String?>? internalRemarks,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'CLIENTE_ID': id,
      if (customerName != null) 'NOMBRE': customerName,
      if (nif != null) 'NIF': nif,
      if (fiscalName != null) 'NOMBRE_FISCAL': fiscalName,
      if (fiscalAddress1 != null) 'DIRECCION_FISCAL1': fiscalAddress1,
      if (fiscalAddress2 != null) 'DIRECCION_FISCAL2': fiscalAddress2,
      if (fiscalZipCode != null) 'CODIGO_POSTAL_FISCAL': fiscalZipCode,
      if (fiscalCity != null) 'POBLACION_FISCAL': fiscalCity,
      if (fiscalState != null) 'PROVINCIA_FISCAL': fiscalState,
      if (fiscalCountryId != null) 'PAIS_ID_FISCAL': fiscalCountryId,
      if (fiscalLatitude != null) 'LATITUD_FISCAL': fiscalLatitude,
      if (fiscalLongitude != null) 'LONGITUD_FISCAL': fiscalLongitude,
      if (companyId != null) 'EMPRESA_ID': companyId,
      if (especialVAT != null) 'IVA_ESPECIAL': especialVAT,
      if (exemptVat != null) 'IVA_EXENTO': exemptVat,
      if (currentYearSales != null) 'VENTAS_ANYO_ACTUAL': currentYearSales,
      if (previousYearSales != null) 'VENTAS_ANYO_ANTERIOR': previousYearSales,
      if (salesTwoYearsAgo != null) 'VENTAS_HACE_DOS_ANYOS': salesTwoYearsAgo,
      if (currentYearMargin != null) 'MARGEN_ANYO_ACTUAL': currentYearMargin,
      if (previousYearMargin != null)
        'MARGEN_ANYO_ANTERIOR': previousYearMargin,
      if (marginTwoYearsAgo != null) 'MARGEN_HACE_DOS_ANYOS': marginTwoYearsAgo,
      if (paymentPercent != null) 'PORCENTAJE_ABONOS': paymentPercent,
      if (warrantyPercent != null) 'PORCENTAJE_GARANTIAS': warrantyPercent,
      if (shoppingCenterName != null)
        'CENTRAL_COMPRAS_NOMBRE': shoppingCenterName,
      if (urlWebsite != null) 'URL_WEB': urlWebsite,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (rateId != null) 'TARIFA_ID': rateId,
      if (rateDescription != null) 'TARIFA_DESCRIPCION': rateDescription,
      if (generalDiscount != null) 'DESCUENTO_GENERAL_ID': generalDiscount,
      if (generalDiscountDescription != null)
        'DESCUENTO_GENERAL_DESCRIPCION': generalDiscountDescription,
      if (priceCalculationType != null)
        'TIPO_CALCULO_PRECIO': priceCalculationType,
      if (collectionTermId != null) 'PLAZO_COBRO_ID': collectionTermId,
      if (collectionMethodId != null) 'METODO_COBRO_ID': collectionMethodId,
      if (promptPaymentDiscount != null)
        'DESCUENTO_PRONTO_PAGO': promptPaymentDiscount,
      if (internalGrantedRisk != null)
        'RIESGO_CONCEDIDO_INTERNO': internalGrantedRisk,
      if (internalGrantedRiskDate != null)
        'RIESGO_CONCEDIDO_INTERNO_FECHA': internalGrantedRiskDate,
      if (cofaceGrantedRisk != null)
        'RIESGO_CONCEDIDO_COFACE': cofaceGrantedRisk,
      if (cofaceGrantedRiskDate != null)
        'RIESGO_CONCEDIDO_COFACE_FECHA': cofaceGrantedRiskDate,
      if (riskGranted != null) 'RIESGO_CONCEDIDO': riskGranted,
      if (riskPendingCollectionDue != null)
        'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE': riskPendingCollectionDue,
      if (riskPendingColleectionNotDue != null)
        'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE': riskPendingColleectionNotDue,
      if (riskPendingToServe != null)
        'RIESGO_PDTE_SERVIR_CLIENTE': riskPendingToServe,
      if (riskPendingBilling != null)
        'RIESGO_PDTE_FACTURAR_CLIENTE': riskPendingBilling,
      if (internalRemarks != null) 'OBSERVACIONES_INTERNAS': internalRemarks,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? customerName,
      Value<String?>? nif,
      Value<String?>? fiscalName,
      Value<String?>? fiscalAddress1,
      Value<String?>? fiscalAddress2,
      Value<String?>? fiscalZipCode,
      Value<String?>? fiscalCity,
      Value<String?>? fiscalState,
      Value<String?>? fiscalCountryId,
      Value<double?>? fiscalLatitude,
      Value<double?>? fiscalLongitude,
      Value<String>? companyId,
      Value<double?>? especialVAT,
      Value<String?>? exemptVat,
      Value<double?>? currentYearSales,
      Value<double?>? previousYearSales,
      Value<double?>? salesTwoYearsAgo,
      Value<double?>? currentYearMargin,
      Value<double?>? previousYearMargin,
      Value<double?>? marginTwoYearsAgo,
      Value<double?>? paymentPercent,
      Value<double?>? warrantyPercent,
      Value<String?>? shoppingCenterName,
      Value<String?>? urlWebsite,
      Value<String?>? divisaId,
      Value<String?>? rateId,
      Value<String?>? rateDescription,
      Value<String?>? generalDiscount,
      Value<String?>? generalDiscountDescription,
      Value<String>? priceCalculationType,
      Value<String?>? collectionTermId,
      Value<String?>? collectionMethodId,
      Value<double>? promptPaymentDiscount,
      Value<double>? internalGrantedRisk,
      Value<DateTime?>? internalGrantedRiskDate,
      Value<double>? cofaceGrantedRisk,
      Value<DateTime?>? cofaceGrantedRiskDate,
      Value<double?>? riskGranted,
      Value<double?>? riskPendingCollectionDue,
      Value<double?>? riskPendingColleectionNotDue,
      Value<double?>? riskPendingToServe,
      Value<double?>? riskPendingBilling,
      Value<String?>? internalRemarks,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerTableCompanion(
      id: id ?? this.id,
      customerName: customerName ?? this.customerName,
      nif: nif ?? this.nif,
      fiscalName: fiscalName ?? this.fiscalName,
      fiscalAddress1: fiscalAddress1 ?? this.fiscalAddress1,
      fiscalAddress2: fiscalAddress2 ?? this.fiscalAddress2,
      fiscalZipCode: fiscalZipCode ?? this.fiscalZipCode,
      fiscalCity: fiscalCity ?? this.fiscalCity,
      fiscalState: fiscalState ?? this.fiscalState,
      fiscalCountryId: fiscalCountryId ?? this.fiscalCountryId,
      fiscalLatitude: fiscalLatitude ?? this.fiscalLatitude,
      fiscalLongitude: fiscalLongitude ?? this.fiscalLongitude,
      companyId: companyId ?? this.companyId,
      especialVAT: especialVAT ?? this.especialVAT,
      exemptVat: exemptVat ?? this.exemptVat,
      currentYearSales: currentYearSales ?? this.currentYearSales,
      previousYearSales: previousYearSales ?? this.previousYearSales,
      salesTwoYearsAgo: salesTwoYearsAgo ?? this.salesTwoYearsAgo,
      currentYearMargin: currentYearMargin ?? this.currentYearMargin,
      previousYearMargin: previousYearMargin ?? this.previousYearMargin,
      marginTwoYearsAgo: marginTwoYearsAgo ?? this.marginTwoYearsAgo,
      paymentPercent: paymentPercent ?? this.paymentPercent,
      warrantyPercent: warrantyPercent ?? this.warrantyPercent,
      shoppingCenterName: shoppingCenterName ?? this.shoppingCenterName,
      urlWebsite: urlWebsite ?? this.urlWebsite,
      divisaId: divisaId ?? this.divisaId,
      rateId: rateId ?? this.rateId,
      rateDescription: rateDescription ?? this.rateDescription,
      generalDiscount: generalDiscount ?? this.generalDiscount,
      generalDiscountDescription:
          generalDiscountDescription ?? this.generalDiscountDescription,
      priceCalculationType: priceCalculationType ?? this.priceCalculationType,
      collectionTermId: collectionTermId ?? this.collectionTermId,
      collectionMethodId: collectionMethodId ?? this.collectionMethodId,
      promptPaymentDiscount:
          promptPaymentDiscount ?? this.promptPaymentDiscount,
      internalGrantedRisk: internalGrantedRisk ?? this.internalGrantedRisk,
      internalGrantedRiskDate:
          internalGrantedRiskDate ?? this.internalGrantedRiskDate,
      cofaceGrantedRisk: cofaceGrantedRisk ?? this.cofaceGrantedRisk,
      cofaceGrantedRiskDate:
          cofaceGrantedRiskDate ?? this.cofaceGrantedRiskDate,
      riskGranted: riskGranted ?? this.riskGranted,
      riskPendingCollectionDue:
          riskPendingCollectionDue ?? this.riskPendingCollectionDue,
      riskPendingColleectionNotDue:
          riskPendingColleectionNotDue ?? this.riskPendingColleectionNotDue,
      riskPendingToServe: riskPendingToServe ?? this.riskPendingToServe,
      riskPendingBilling: riskPendingBilling ?? this.riskPendingBilling,
      internalRemarks: internalRemarks ?? this.internalRemarks,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['CLIENTE_ID'] = Variable<String>(id.value);
    }
    if (customerName.present) {
      map['NOMBRE'] = Variable<String?>(customerName.value);
    }
    if (nif.present) {
      map['NIF'] = Variable<String?>(nif.value);
    }
    if (fiscalName.present) {
      map['NOMBRE_FISCAL'] = Variable<String?>(fiscalName.value);
    }
    if (fiscalAddress1.present) {
      map['DIRECCION_FISCAL1'] = Variable<String?>(fiscalAddress1.value);
    }
    if (fiscalAddress2.present) {
      map['DIRECCION_FISCAL2'] = Variable<String?>(fiscalAddress2.value);
    }
    if (fiscalZipCode.present) {
      map['CODIGO_POSTAL_FISCAL'] = Variable<String?>(fiscalZipCode.value);
    }
    if (fiscalCity.present) {
      map['POBLACION_FISCAL'] = Variable<String?>(fiscalCity.value);
    }
    if (fiscalState.present) {
      map['PROVINCIA_FISCAL'] = Variable<String?>(fiscalState.value);
    }
    if (fiscalCountryId.present) {
      map['PAIS_ID_FISCAL'] = Variable<String?>(fiscalCountryId.value);
    }
    if (fiscalLatitude.present) {
      map['LATITUD_FISCAL'] = Variable<double?>(fiscalLatitude.value);
    }
    if (fiscalLongitude.present) {
      map['LONGITUD_FISCAL'] = Variable<double?>(fiscalLongitude.value);
    }
    if (companyId.present) {
      map['EMPRESA_ID'] = Variable<String>(companyId.value);
    }
    if (especialVAT.present) {
      map['IVA_ESPECIAL'] = Variable<double?>(especialVAT.value);
    }
    if (exemptVat.present) {
      map['IVA_EXENTO'] = Variable<String?>(exemptVat.value);
    }
    if (currentYearSales.present) {
      map['VENTAS_ANYO_ACTUAL'] = Variable<double?>(currentYearSales.value);
    }
    if (previousYearSales.present) {
      map['VENTAS_ANYO_ANTERIOR'] = Variable<double?>(previousYearSales.value);
    }
    if (salesTwoYearsAgo.present) {
      map['VENTAS_HACE_DOS_ANYOS'] = Variable<double?>(salesTwoYearsAgo.value);
    }
    if (currentYearMargin.present) {
      map['MARGEN_ANYO_ACTUAL'] = Variable<double?>(currentYearMargin.value);
    }
    if (previousYearMargin.present) {
      map['MARGEN_ANYO_ANTERIOR'] = Variable<double?>(previousYearMargin.value);
    }
    if (marginTwoYearsAgo.present) {
      map['MARGEN_HACE_DOS_ANYOS'] = Variable<double?>(marginTwoYearsAgo.value);
    }
    if (paymentPercent.present) {
      map['PORCENTAJE_ABONOS'] = Variable<double?>(paymentPercent.value);
    }
    if (warrantyPercent.present) {
      map['PORCENTAJE_GARANTIAS'] = Variable<double?>(warrantyPercent.value);
    }
    if (shoppingCenterName.present) {
      map['CENTRAL_COMPRAS_NOMBRE'] =
          Variable<String?>(shoppingCenterName.value);
    }
    if (urlWebsite.present) {
      map['URL_WEB'] = Variable<String?>(urlWebsite.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String?>(divisaId.value);
    }
    if (rateId.present) {
      map['TARIFA_ID'] = Variable<String?>(rateId.value);
    }
    if (rateDescription.present) {
      map['TARIFA_DESCRIPCION'] = Variable<String?>(rateDescription.value);
    }
    if (generalDiscount.present) {
      map['DESCUENTO_GENERAL_ID'] = Variable<String?>(generalDiscount.value);
    }
    if (generalDiscountDescription.present) {
      map['DESCUENTO_GENERAL_DESCRIPCION'] =
          Variable<String?>(generalDiscountDescription.value);
    }
    if (priceCalculationType.present) {
      map['TIPO_CALCULO_PRECIO'] = Variable<String>(priceCalculationType.value);
    }
    if (collectionTermId.present) {
      map['PLAZO_COBRO_ID'] = Variable<String?>(collectionTermId.value);
    }
    if (collectionMethodId.present) {
      map['METODO_COBRO_ID'] = Variable<String?>(collectionMethodId.value);
    }
    if (promptPaymentDiscount.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(promptPaymentDiscount.value);
    }
    if (internalGrantedRisk.present) {
      map['RIESGO_CONCEDIDO_INTERNO'] =
          Variable<double>(internalGrantedRisk.value);
    }
    if (internalGrantedRiskDate.present) {
      map['RIESGO_CONCEDIDO_INTERNO_FECHA'] =
          Variable<DateTime?>(internalGrantedRiskDate.value);
    }
    if (cofaceGrantedRisk.present) {
      map['RIESGO_CONCEDIDO_COFACE'] =
          Variable<double>(cofaceGrantedRisk.value);
    }
    if (cofaceGrantedRiskDate.present) {
      map['RIESGO_CONCEDIDO_COFACE_FECHA'] =
          Variable<DateTime?>(cofaceGrantedRiskDate.value);
    }
    if (riskGranted.present) {
      map['RIESGO_CONCEDIDO'] = Variable<double?>(riskGranted.value);
    }
    if (riskPendingCollectionDue.present) {
      map['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE'] =
          Variable<double?>(riskPendingCollectionDue.value);
    }
    if (riskPendingColleectionNotDue.present) {
      map['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE'] =
          Variable<double?>(riskPendingColleectionNotDue.value);
    }
    if (riskPendingToServe.present) {
      map['RIESGO_PDTE_SERVIR_CLIENTE'] =
          Variable<double?>(riskPendingToServe.value);
    }
    if (riskPendingBilling.present) {
      map['RIESGO_PDTE_FACTURAR_CLIENTE'] =
          Variable<double?>(riskPendingBilling.value);
    }
    if (internalRemarks.present) {
      map['OBSERVACIONES_INTERNAS'] = Variable<String?>(internalRemarks.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerTableCompanion(')
          ..write('id: $id, ')
          ..write('customerName: $customerName, ')
          ..write('nif: $nif, ')
          ..write('fiscalName: $fiscalName, ')
          ..write('fiscalAddress1: $fiscalAddress1, ')
          ..write('fiscalAddress2: $fiscalAddress2, ')
          ..write('fiscalZipCode: $fiscalZipCode, ')
          ..write('fiscalCity: $fiscalCity, ')
          ..write('fiscalState: $fiscalState, ')
          ..write('fiscalCountryId: $fiscalCountryId, ')
          ..write('fiscalLatitude: $fiscalLatitude, ')
          ..write('fiscalLongitude: $fiscalLongitude, ')
          ..write('companyId: $companyId, ')
          ..write('especialVAT: $especialVAT, ')
          ..write('exemptVat: $exemptVat, ')
          ..write('currentYearSales: $currentYearSales, ')
          ..write('previousYearSales: $previousYearSales, ')
          ..write('salesTwoYearsAgo: $salesTwoYearsAgo, ')
          ..write('currentYearMargin: $currentYearMargin, ')
          ..write('previousYearMargin: $previousYearMargin, ')
          ..write('marginTwoYearsAgo: $marginTwoYearsAgo, ')
          ..write('paymentPercent: $paymentPercent, ')
          ..write('warrantyPercent: $warrantyPercent, ')
          ..write('shoppingCenterName: $shoppingCenterName, ')
          ..write('urlWebsite: $urlWebsite, ')
          ..write('divisaId: $divisaId, ')
          ..write('rateId: $rateId, ')
          ..write('rateDescription: $rateDescription, ')
          ..write('generalDiscount: $generalDiscount, ')
          ..write('generalDiscountDescription: $generalDiscountDescription, ')
          ..write('priceCalculationType: $priceCalculationType, ')
          ..write('collectionTermId: $collectionTermId, ')
          ..write('collectionMethodId: $collectionMethodId, ')
          ..write('promptPaymentDiscount: $promptPaymentDiscount, ')
          ..write('internalGrantedRisk: $internalGrantedRisk, ')
          ..write('internalGrantedRiskDate: $internalGrantedRiskDate, ')
          ..write('cofaceGrantedRisk: $cofaceGrantedRisk, ')
          ..write('cofaceGrantedRiskDate: $cofaceGrantedRiskDate, ')
          ..write('riskGranted: $riskGranted, ')
          ..write('riskPendingCollectionDue: $riskPendingCollectionDue, ')
          ..write(
              'riskPendingColleectionNotDue: $riskPendingColleectionNotDue, ')
          ..write('riskPendingToServe: $riskPendingToServe, ')
          ..write('riskPendingBilling: $riskPendingBilling, ')
          ..write('internalRemarks: $internalRemarks, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerTableTable extends CustomerTable
    with TableInfo<$CustomerTableTable, CustomerDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String?> customerName = GeneratedColumn<String?>(
      'NOMBRE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nifMeta = const VerificationMeta('nif');
  @override
  late final GeneratedColumn<String?> nif = GeneratedColumn<String?>(
      'NIF', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalNameMeta = const VerificationMeta('fiscalName');
  @override
  late final GeneratedColumn<String?> fiscalName = GeneratedColumn<String?>(
      'NOMBRE_FISCAL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress1Meta =
      const VerificationMeta('fiscalAddress1');
  @override
  late final GeneratedColumn<String?> fiscalAddress1 = GeneratedColumn<String?>(
      'DIRECCION_FISCAL1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalAddress2Meta =
      const VerificationMeta('fiscalAddress2');
  @override
  late final GeneratedColumn<String?> fiscalAddress2 = GeneratedColumn<String?>(
      'DIRECCION_FISCAL2', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalZipCodeMeta =
      const VerificationMeta('fiscalZipCode');
  @override
  late final GeneratedColumn<String?> fiscalZipCode = GeneratedColumn<String?>(
      'CODIGO_POSTAL_FISCAL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalCityMeta = const VerificationMeta('fiscalCity');
  @override
  late final GeneratedColumn<String?> fiscalCity = GeneratedColumn<String?>(
      'POBLACION_FISCAL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalStateMeta =
      const VerificationMeta('fiscalState');
  @override
  late final GeneratedColumn<String?> fiscalState = GeneratedColumn<String?>(
      'PROVINCIA_FISCAL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalCountryIdMeta =
      const VerificationMeta('fiscalCountryId');
  @override
  late final GeneratedColumn<String?> fiscalCountryId =
      GeneratedColumn<String?>('PAIS_ID_FISCAL', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _fiscalLatitudeMeta =
      const VerificationMeta('fiscalLatitude');
  @override
  late final GeneratedColumn<double?> fiscalLatitude = GeneratedColumn<double?>(
      'LATITUD_FISCAL', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _fiscalLongitudeMeta =
      const VerificationMeta('fiscalLongitude');
  @override
  late final GeneratedColumn<double?> fiscalLongitude =
      GeneratedColumn<double?>('LONGITUD_FISCAL', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _companyIdMeta = const VerificationMeta('companyId');
  @override
  late final GeneratedColumn<String?> companyId = GeneratedColumn<String?>(
      'EMPRESA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _especialVATMeta =
      const VerificationMeta('especialVAT');
  @override
  late final GeneratedColumn<double?> especialVAT = GeneratedColumn<double?>(
      'IVA_ESPECIAL', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _exemptVatMeta = const VerificationMeta('exemptVat');
  @override
  late final GeneratedColumn<String?> exemptVat = GeneratedColumn<String?>(
      'IVA_EXENTO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _currentYearSalesMeta =
      const VerificationMeta('currentYearSales');
  @override
  late final GeneratedColumn<double?> currentYearSales =
      GeneratedColumn<double?>('VENTAS_ANYO_ACTUAL', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _previousYearSalesMeta =
      const VerificationMeta('previousYearSales');
  @override
  late final GeneratedColumn<double?> previousYearSales =
      GeneratedColumn<double?>('VENTAS_ANYO_ANTERIOR', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _salesTwoYearsAgoMeta =
      const VerificationMeta('salesTwoYearsAgo');
  @override
  late final GeneratedColumn<double?> salesTwoYearsAgo =
      GeneratedColumn<double?>('VENTAS_HACE_DOS_ANYOS', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _currentYearMarginMeta =
      const VerificationMeta('currentYearMargin');
  @override
  late final GeneratedColumn<double?> currentYearMargin =
      GeneratedColumn<double?>('MARGEN_ANYO_ACTUAL', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _previousYearMarginMeta =
      const VerificationMeta('previousYearMargin');
  @override
  late final GeneratedColumn<double?> previousYearMargin =
      GeneratedColumn<double?>('MARGEN_ANYO_ANTERIOR', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _marginTwoYearsAgoMeta =
      const VerificationMeta('marginTwoYearsAgo');
  @override
  late final GeneratedColumn<double?> marginTwoYearsAgo =
      GeneratedColumn<double?>('MARGEN_HACE_DOS_ANYOS', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _paymentPercentMeta =
      const VerificationMeta('paymentPercent');
  @override
  late final GeneratedColumn<double?> paymentPercent = GeneratedColumn<double?>(
      'PORCENTAJE_ABONOS', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _warrantyPercentMeta =
      const VerificationMeta('warrantyPercent');
  @override
  late final GeneratedColumn<double?> warrantyPercent =
      GeneratedColumn<double?>('PORCENTAJE_GARANTIAS', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _shoppingCenterNameMeta =
      const VerificationMeta('shoppingCenterName');
  @override
  late final GeneratedColumn<String?> shoppingCenterName =
      GeneratedColumn<String?>('CENTRAL_COMPRAS_NOMBRE', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _urlWebsiteMeta = const VerificationMeta('urlWebsite');
  @override
  late final GeneratedColumn<String?> urlWebsite = GeneratedColumn<String?>(
      'URL_WEB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String?> divisaId = GeneratedColumn<String?>(
      'DIVISA_ID', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _rateIdMeta = const VerificationMeta('rateId');
  @override
  late final GeneratedColumn<String?> rateId = GeneratedColumn<String?>(
      'TARIFA_ID', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _rateDescriptionMeta =
      const VerificationMeta('rateDescription');
  @override
  late final GeneratedColumn<String?> rateDescription =
      GeneratedColumn<String?>('TARIFA_DESCRIPCION', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _generalDiscountMeta =
      const VerificationMeta('generalDiscount');
  @override
  late final GeneratedColumn<String?> generalDiscount =
      GeneratedColumn<String?>('DESCUENTO_GENERAL_ID', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _generalDiscountDescriptionMeta =
      const VerificationMeta('generalDiscountDescription');
  @override
  late final GeneratedColumn<String?> generalDiscountDescription =
      GeneratedColumn<String?>(
          'DESCUENTO_GENERAL_DESCRIPCION', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _priceCalculationTypeMeta =
      const VerificationMeta('priceCalculationType');
  @override
  late final GeneratedColumn<String?> priceCalculationType =
      GeneratedColumn<String?>('TIPO_CALCULO_PRECIO', aliasedName, false,
          type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _collectionTermIdMeta =
      const VerificationMeta('collectionTermId');
  @override
  late final GeneratedColumn<String?> collectionTermId =
      GeneratedColumn<String?>('PLAZO_COBRO_ID', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES PLAZOS_COBRO (PLAZOS_COBRO_ID)');
  final VerificationMeta _collectionMethodIdMeta =
      const VerificationMeta('collectionMethodId');
  @override
  late final GeneratedColumn<String?> collectionMethodId =
      GeneratedColumn<String?>('METODO_COBRO_ID', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _promptPaymentDiscountMeta =
      const VerificationMeta('promptPaymentDiscount');
  @override
  late final GeneratedColumn<double?> promptPaymentDiscount =
      GeneratedColumn<double?>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskMeta =
      const VerificationMeta('internalGrantedRisk');
  @override
  late final GeneratedColumn<double?> internalGrantedRisk =
      GeneratedColumn<double?>('RIESGO_CONCEDIDO_INTERNO', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _internalGrantedRiskDateMeta =
      const VerificationMeta('internalGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime?> internalGrantedRiskDate =
      GeneratedColumn<DateTime?>(
          'RIESGO_CONCEDIDO_INTERNO_FECHA', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _cofaceGrantedRiskMeta =
      const VerificationMeta('cofaceGrantedRisk');
  @override
  late final GeneratedColumn<double?> cofaceGrantedRisk =
      GeneratedColumn<double?>('RIESGO_CONCEDIDO_COFACE', aliasedName, false,
          type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _cofaceGrantedRiskDateMeta =
      const VerificationMeta('cofaceGrantedRiskDate');
  @override
  late final GeneratedColumn<DateTime?> cofaceGrantedRiskDate =
      GeneratedColumn<DateTime?>(
          'RIESGO_CONCEDIDO_COFACE_FECHA', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _riskGrantedMeta =
      const VerificationMeta('riskGranted');
  @override
  late final GeneratedColumn<double?> riskGranted = GeneratedColumn<double?>(
      'RIESGO_CONCEDIDO', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingCollectionDueMeta =
      const VerificationMeta('riskPendingCollectionDue');
  @override
  late final GeneratedColumn<double?> riskPendingCollectionDue =
      GeneratedColumn<double?>(
          'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingColleectionNotDueMeta =
      const VerificationMeta('riskPendingColleectionNotDue');
  @override
  late final GeneratedColumn<double?> riskPendingColleectionNotDue =
      GeneratedColumn<double?>(
          'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingToServeMeta =
      const VerificationMeta('riskPendingToServe');
  @override
  late final GeneratedColumn<double?> riskPendingToServe =
      GeneratedColumn<double?>('RIESGO_PDTE_SERVIR_CLIENTE', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _riskPendingBillingMeta =
      const VerificationMeta('riskPendingBilling');
  @override
  late final GeneratedColumn<double?> riskPendingBilling =
      GeneratedColumn<double?>(
          'RIESGO_PDTE_FACTURAR_CLIENTE', aliasedName, true,
          type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _internalRemarksMeta =
      const VerificationMeta('internalRemarks');
  @override
  late final GeneratedColumn<String?> internalRemarks =
      GeneratedColumn<String?>('OBSERVACIONES_INTERNAS', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerName,
        nif,
        fiscalName,
        fiscalAddress1,
        fiscalAddress2,
        fiscalZipCode,
        fiscalCity,
        fiscalState,
        fiscalCountryId,
        fiscalLatitude,
        fiscalLongitude,
        companyId,
        especialVAT,
        exemptVat,
        currentYearSales,
        previousYearSales,
        salesTwoYearsAgo,
        currentYearMargin,
        previousYearMargin,
        marginTwoYearsAgo,
        paymentPercent,
        warrantyPercent,
        shoppingCenterName,
        urlWebsite,
        divisaId,
        rateId,
        rateDescription,
        generalDiscount,
        generalDiscountDescription,
        priceCalculationType,
        collectionTermId,
        collectionMethodId,
        promptPaymentDiscount,
        internalGrantedRisk,
        internalGrantedRiskDate,
        cofaceGrantedRisk,
        cofaceGrantedRiskDate,
        riskGranted,
        riskPendingCollectionDue,
        riskPendingColleectionNotDue,
        riskPendingToServe,
        riskPendingBilling,
        internalRemarks,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES';
  @override
  String get actualTableName => 'CLIENTES';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['CLIENTE_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['NOMBRE']!, _customerNameMeta));
    }
    if (data.containsKey('NIF')) {
      context.handle(
          _nifMeta, nif.isAcceptableOrUnknown(data['NIF']!, _nifMeta));
    }
    if (data.containsKey('NOMBRE_FISCAL')) {
      context.handle(
          _fiscalNameMeta,
          fiscalName.isAcceptableOrUnknown(
              data['NOMBRE_FISCAL']!, _fiscalNameMeta));
    }
    if (data.containsKey('DIRECCION_FISCAL1')) {
      context.handle(
          _fiscalAddress1Meta,
          fiscalAddress1.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL1']!, _fiscalAddress1Meta));
    }
    if (data.containsKey('DIRECCION_FISCAL2')) {
      context.handle(
          _fiscalAddress2Meta,
          fiscalAddress2.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL2']!, _fiscalAddress2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL_FISCAL')) {
      context.handle(
          _fiscalZipCodeMeta,
          fiscalZipCode.isAcceptableOrUnknown(
              data['CODIGO_POSTAL_FISCAL']!, _fiscalZipCodeMeta));
    }
    if (data.containsKey('POBLACION_FISCAL')) {
      context.handle(
          _fiscalCityMeta,
          fiscalCity.isAcceptableOrUnknown(
              data['POBLACION_FISCAL']!, _fiscalCityMeta));
    }
    if (data.containsKey('PROVINCIA_FISCAL')) {
      context.handle(
          _fiscalStateMeta,
          fiscalState.isAcceptableOrUnknown(
              data['PROVINCIA_FISCAL']!, _fiscalStateMeta));
    }
    if (data.containsKey('PAIS_ID_FISCAL')) {
      context.handle(
          _fiscalCountryIdMeta,
          fiscalCountryId.isAcceptableOrUnknown(
              data['PAIS_ID_FISCAL']!, _fiscalCountryIdMeta));
    }
    if (data.containsKey('LATITUD_FISCAL')) {
      context.handle(
          _fiscalLatitudeMeta,
          fiscalLatitude.isAcceptableOrUnknown(
              data['LATITUD_FISCAL']!, _fiscalLatitudeMeta));
    }
    if (data.containsKey('LONGITUD_FISCAL')) {
      context.handle(
          _fiscalLongitudeMeta,
          fiscalLongitude.isAcceptableOrUnknown(
              data['LONGITUD_FISCAL']!, _fiscalLongitudeMeta));
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_companyIdMeta,
          companyId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _companyIdMeta));
    } else if (isInserting) {
      context.missing(_companyIdMeta);
    }
    if (data.containsKey('IVA_ESPECIAL')) {
      context.handle(
          _especialVATMeta,
          especialVAT.isAcceptableOrUnknown(
              data['IVA_ESPECIAL']!, _especialVATMeta));
    }
    if (data.containsKey('IVA_EXENTO')) {
      context.handle(_exemptVatMeta,
          exemptVat.isAcceptableOrUnknown(data['IVA_EXENTO']!, _exemptVatMeta));
    }
    if (data.containsKey('VENTAS_ANYO_ACTUAL')) {
      context.handle(
          _currentYearSalesMeta,
          currentYearSales.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ACTUAL']!, _currentYearSalesMeta));
    }
    if (data.containsKey('VENTAS_ANYO_ANTERIOR')) {
      context.handle(
          _previousYearSalesMeta,
          previousYearSales.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ANTERIOR']!, _previousYearSalesMeta));
    }
    if (data.containsKey('VENTAS_HACE_DOS_ANYOS')) {
      context.handle(
          _salesTwoYearsAgoMeta,
          salesTwoYearsAgo.isAcceptableOrUnknown(
              data['VENTAS_HACE_DOS_ANYOS']!, _salesTwoYearsAgoMeta));
    }
    if (data.containsKey('MARGEN_ANYO_ACTUAL')) {
      context.handle(
          _currentYearMarginMeta,
          currentYearMargin.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ACTUAL']!, _currentYearMarginMeta));
    }
    if (data.containsKey('MARGEN_ANYO_ANTERIOR')) {
      context.handle(
          _previousYearMarginMeta,
          previousYearMargin.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ANTERIOR']!, _previousYearMarginMeta));
    }
    if (data.containsKey('MARGEN_HACE_DOS_ANYOS')) {
      context.handle(
          _marginTwoYearsAgoMeta,
          marginTwoYearsAgo.isAcceptableOrUnknown(
              data['MARGEN_HACE_DOS_ANYOS']!, _marginTwoYearsAgoMeta));
    }
    if (data.containsKey('PORCENTAJE_ABONOS')) {
      context.handle(
          _paymentPercentMeta,
          paymentPercent.isAcceptableOrUnknown(
              data['PORCENTAJE_ABONOS']!, _paymentPercentMeta));
    }
    if (data.containsKey('PORCENTAJE_GARANTIAS')) {
      context.handle(
          _warrantyPercentMeta,
          warrantyPercent.isAcceptableOrUnknown(
              data['PORCENTAJE_GARANTIAS']!, _warrantyPercentMeta));
    }
    if (data.containsKey('CENTRAL_COMPRAS_NOMBRE')) {
      context.handle(
          _shoppingCenterNameMeta,
          shoppingCenterName.isAcceptableOrUnknown(
              data['CENTRAL_COMPRAS_NOMBRE']!, _shoppingCenterNameMeta));
    }
    if (data.containsKey('URL_WEB')) {
      context.handle(_urlWebsiteMeta,
          urlWebsite.isAcceptableOrUnknown(data['URL_WEB']!, _urlWebsiteMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    }
    if (data.containsKey('TARIFA_ID')) {
      context.handle(_rateIdMeta,
          rateId.isAcceptableOrUnknown(data['TARIFA_ID']!, _rateIdMeta));
    }
    if (data.containsKey('TARIFA_DESCRIPCION')) {
      context.handle(
          _rateDescriptionMeta,
          rateDescription.isAcceptableOrUnknown(
              data['TARIFA_DESCRIPCION']!, _rateDescriptionMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_ID')) {
      context.handle(
          _generalDiscountMeta,
          generalDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_ID']!, _generalDiscountMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_DESCRIPCION')) {
      context.handle(
          _generalDiscountDescriptionMeta,
          generalDiscountDescription.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_DESCRIPCION']!,
              _generalDiscountDescriptionMeta));
    }
    if (data.containsKey('TIPO_CALCULO_PRECIO')) {
      context.handle(
          _priceCalculationTypeMeta,
          priceCalculationType.isAcceptableOrUnknown(
              data['TIPO_CALCULO_PRECIO']!, _priceCalculationTypeMeta));
    } else if (isInserting) {
      context.missing(_priceCalculationTypeMeta);
    }
    if (data.containsKey('PLAZO_COBRO_ID')) {
      context.handle(
          _collectionTermIdMeta,
          collectionTermId.isAcceptableOrUnknown(
              data['PLAZO_COBRO_ID']!, _collectionTermIdMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _collectionMethodIdMeta,
          collectionMethodId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _collectionMethodIdMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _promptPaymentDiscountMeta,
          promptPaymentDiscount.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _promptPaymentDiscountMeta));
    } else if (isInserting) {
      context.missing(_promptPaymentDiscountMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO')) {
      context.handle(
          _internalGrantedRiskMeta,
          internalGrantedRisk.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO']!, _internalGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_internalGrantedRiskMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO_FECHA')) {
      context.handle(
          _internalGrantedRiskDateMeta,
          internalGrantedRiskDate.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO_FECHA']!,
              _internalGrantedRiskDateMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE')) {
      context.handle(
          _cofaceGrantedRiskMeta,
          cofaceGrantedRisk.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE']!, _cofaceGrantedRiskMeta));
    } else if (isInserting) {
      context.missing(_cofaceGrantedRiskMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE_FECHA')) {
      context.handle(
          _cofaceGrantedRiskDateMeta,
          cofaceGrantedRiskDate.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE_FECHA']!,
              _cofaceGrantedRiskDateMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO')) {
      context.handle(
          _riskGrantedMeta,
          riskGranted.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO']!, _riskGrantedMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')) {
      context.handle(
          _riskPendingCollectionDueMeta,
          riskPendingCollectionDue.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']!,
              _riskPendingCollectionDueMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')) {
      context.handle(
          _riskPendingColleectionNotDueMeta,
          riskPendingColleectionNotDue.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']!,
              _riskPendingColleectionNotDueMeta));
    }
    if (data.containsKey('RIESGO_PDTE_SERVIR_CLIENTE')) {
      context.handle(
          _riskPendingToServeMeta,
          riskPendingToServe.isAcceptableOrUnknown(
              data['RIESGO_PDTE_SERVIR_CLIENTE']!, _riskPendingToServeMeta));
    }
    if (data.containsKey('RIESGO_PDTE_FACTURAR_CLIENTE')) {
      context.handle(
          _riskPendingBillingMeta,
          riskPendingBilling.isAcceptableOrUnknown(
              data['RIESGO_PDTE_FACTURAR_CLIENTE']!, _riskPendingBillingMeta));
    }
    if (data.containsKey('OBSERVACIONES_INTERNAS')) {
      context.handle(
          _internalRemarksMeta,
          internalRemarks.isAcceptableOrUnknown(
              data['OBSERVACIONES_INTERNAS']!, _internalRemarksMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  CustomerDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      customerName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE']),
      nif: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NIF']),
      fiscalName: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE_FISCAL']),
      fiscalAddress1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_FISCAL1']),
      fiscalAddress2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_FISCAL2']),
      fiscalZipCode: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}CODIGO_POSTAL_FISCAL']),
      fiscalCity: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}POBLACION_FISCAL']),
      fiscalCountryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID_FISCAL']),
      fiscalState: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PROVINCIA_FISCAL']),
      fiscalLatitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LATITUD_FISCAL']),
      fiscalLongitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LONGITUD_FISCAL']),
      companyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}EMPRESA_ID'])!,
      especialVAT: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IVA_ESPECIAL']),
      exemptVat: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IVA_EXENTO']),
      currentYearSales: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}VENTAS_ANYO_ACTUAL']),
      previousYearSales: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}VENTAS_ANYO_ANTERIOR']),
      salesTwoYearsAgo: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}VENTAS_HACE_DOS_ANYOS']),
      currentYearMargin: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}MARGEN_ANYO_ACTUAL']),
      previousYearMargin: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}MARGEN_ANYO_ANTERIOR']),
      marginTwoYearsAgo: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}MARGEN_HACE_DOS_ANYOS']),
      paymentPercent: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PORCENTAJE_ABONOS']),
      warrantyPercent: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}PORCENTAJE_GARANTIAS']),
      shoppingCenterName: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}CENTRAL_COMPRAS_NOMBRE']),
      urlWebsite: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}URL_WEB']),
      divisaId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIVISA_ID']),
      rateId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TARIFA_ID']),
      rateDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}TARIFA_DESCRIPCION']),
      generalDiscount: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}DESCUENTO_GENERAL_ID']),
      generalDiscountDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}DESCUENTO_GENERAL_DESCRIPCION']),
      priceCalculationType: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}TIPO_CALCULO_PRECIO'])!,
      collectionTermId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PLAZO_COBRO_ID']),
      collectionMethodId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}METODO_COBRO_ID']),
      promptPaymentDiscount: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      internalGrantedRisk: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO'])!,
      internalGrantedRiskDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO_FECHA']),
      cofaceGrantedRisk: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE'])!,
      cofaceGrantedRiskDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE_FECHA']),
      riskGranted: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}RIESGO_CONCEDIDO']),
      riskPendingCollectionDue: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']),
      riskPendingColleectionNotDue: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']),
      riskPendingToServe: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_PDTE_SERVIR_CLIENTE']),
      riskPendingBilling: const RealType().mapFromDatabaseResponse(
          data['${effectivePrefix}RIESGO_PDTE_FACTURAR_CLIENTE']),
      internalRemarks: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}OBSERVACIONES_INTERNAS']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerTableTable createAlias(String alias) {
    return $CustomerTableTable(attachedDatabase, alias);
  }
}

class CustomerUserTableCompanion extends UpdateCompanion<CustomerUserDTO> {
  final Value<String> customerId;
  final Value<String> userId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerUserTableCompanion({
    this.customerId = const Value.absent(),
    this.userId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerUserTableCompanion.insert({
    required String customerId,
    required String userId,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        userId = Value(userId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerUserDTO> custom({
    Expression<String>? customerId,
    Expression<String>? userId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (userId != null) 'USUARIO_ID': userId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerUserTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? userId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerUserTableCompanion(
      customerId: customerId ?? this.customerId,
      userId: userId ?? this.userId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (userId.present) {
      map['USUARIO_ID'] = Variable<String>(userId.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerUserTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('userId: $userId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerUserTableTable extends CustomerUserTable
    with TableInfo<$CustomerUserTableTable, CustomerUserDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerUserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String?> userId = GeneratedColumn<String?>(
      'USUARIO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [customerId, userId, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_USUARIO';
  @override
  String get actualTableName => 'CLIENTES_USUARIO';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerUserDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['USUARIO_ID']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, userId};
  @override
  CustomerUserDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerUserDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      userId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}USUARIO_ID'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerUserTableTable createAlias(String alias) {
    return $CustomerUserTableTable(attachedDatabase, alias);
  }
}

class CustomerNetGroupTableCompanion
    extends UpdateCompanion<CustomerNetGroupDTO> {
  final Value<String> customerId;
  final Value<String> netGroupId;
  final Value<String?> netGroupDescription;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerNetGroupTableCompanion({
    this.customerId = const Value.absent(),
    this.netGroupId = const Value.absent(),
    this.netGroupDescription = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerNetGroupTableCompanion.insert({
    required String customerId,
    required String netGroupId,
    this.netGroupDescription = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        netGroupId = Value(netGroupId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerNetGroupDTO> custom({
    Expression<String>? customerId,
    Expression<String>? netGroupId,
    Expression<String?>? netGroupDescription,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (netGroupId != null) 'GRUPO_NETO_ID': netGroupId,
      if (netGroupDescription != null)
        'GRUPO_NETO_DESCRIPCION': netGroupDescription,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerNetGroupTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? netGroupId,
      Value<String?>? netGroupDescription,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerNetGroupTableCompanion(
      customerId: customerId ?? this.customerId,
      netGroupId: netGroupId ?? this.netGroupId,
      netGroupDescription: netGroupDescription ?? this.netGroupDescription,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (netGroupId.present) {
      map['GRUPO_NETO_ID'] = Variable<String>(netGroupId.value);
    }
    if (netGroupDescription.present) {
      map['GRUPO_NETO_DESCRIPCION'] =
          Variable<String?>(netGroupDescription.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerNetGroupTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('netGroupId: $netGroupId, ')
          ..write('netGroupDescription: $netGroupDescription, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerNetGroupTableTable extends CustomerNetGroupTable
    with TableInfo<$CustomerNetGroupTableTable, CustomerNetGroupDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerNetGroupTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _netGroupIdMeta = const VerificationMeta('netGroupId');
  @override
  late final GeneratedColumn<String?> netGroupId = GeneratedColumn<String?>(
      'GRUPO_NETO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _netGroupDescriptionMeta =
      const VerificationMeta('netGroupDescription');
  @override
  late final GeneratedColumn<String?> netGroupDescription =
      GeneratedColumn<String?>('GRUPO_NETO_DESCRIPCION', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [customerId, netGroupId, netGroupDescription, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_GRUPOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_GRUPOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerNetGroupDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_ID')) {
      context.handle(
          _netGroupIdMeta,
          netGroupId.isAcceptableOrUnknown(
              data['GRUPO_NETO_ID']!, _netGroupIdMeta));
    } else if (isInserting) {
      context.missing(_netGroupIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_DESCRIPCION')) {
      context.handle(
          _netGroupDescriptionMeta,
          netGroupDescription.isAcceptableOrUnknown(
              data['GRUPO_NETO_DESCRIPCION']!, _netGroupDescriptionMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, netGroupId};
  @override
  CustomerNetGroupDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerNetGroupDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      netGroupId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}GRUPO_NETO_ID'])!,
      netGroupDescription: const StringType().mapFromDatabaseResponse(
          data['${effectivePrefix}GRUPO_NETO_DESCRIPCION']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerNetGroupTableTable createAlias(String alias) {
    return $CustomerNetGroupTableTable(attachedDatabase, alias);
  }
}

class FamilyTableCompanion extends UpdateCompanion<FamilyDTO> {
  final Value<String> id;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const FamilyTableCompanion({
    this.id = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  FamilyTableCompanion.insert({
    required String id,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<FamilyDTO> custom({
    Expression<String>? id,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'FAMILIA_ID': id,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  FamilyTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return FamilyTableCompanion(
      id: id ?? this.id,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['FAMILIA_ID'] = Variable<String>(id.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FamilyTableCompanion(')
          ..write('id: $id, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $FamilyTableTable extends FamilyTable
    with TableInfo<$FamilyTableTable, FamilyDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamilyTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'FAMILIA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'FAMILIAS';
  @override
  String get actualTableName => 'FAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<FamilyDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['FAMILIA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  FamilyDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamilyDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FAMILIA_ID'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $FamilyTableTable createAlias(String alias) {
    return $FamilyTableTable(attachedDatabase, alias);
  }
}

class SubfamilyTableCompanion extends UpdateCompanion<SubfamilyDTO> {
  final Value<String> id;
  final Value<String> familyId;
  final Value<String> descriptionES;
  final Value<String?> descriptionEN;
  final Value<String?> descriptionFR;
  final Value<String?> descriptionDE;
  final Value<String?> descriptionCA;
  final Value<String?> descriptionGB;
  final Value<String?> descriptionHU;
  final Value<String?> descriptionIT;
  final Value<String?> descriptionNL;
  final Value<String?> descriptionPL;
  final Value<String?> descriptionPT;
  final Value<String?> descriptionRO;
  final Value<String?> descriptionRU;
  final Value<String?> descriptionCN;
  final Value<String?> descriptionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SubfamilyTableCompanion({
    this.id = const Value.absent(),
    this.familyId = const Value.absent(),
    this.descriptionES = const Value.absent(),
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SubfamilyTableCompanion.insert({
    required String id,
    required String familyId,
    required String descriptionES,
    this.descriptionEN = const Value.absent(),
    this.descriptionFR = const Value.absent(),
    this.descriptionDE = const Value.absent(),
    this.descriptionCA = const Value.absent(),
    this.descriptionGB = const Value.absent(),
    this.descriptionHU = const Value.absent(),
    this.descriptionIT = const Value.absent(),
    this.descriptionNL = const Value.absent(),
    this.descriptionPL = const Value.absent(),
    this.descriptionPT = const Value.absent(),
    this.descriptionRO = const Value.absent(),
    this.descriptionRU = const Value.absent(),
    this.descriptionCN = const Value.absent(),
    this.descriptionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        familyId = Value(familyId),
        descriptionES = Value(descriptionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<SubfamilyDTO> custom({
    Expression<String>? id,
    Expression<String>? familyId,
    Expression<String>? descriptionES,
    Expression<String?>? descriptionEN,
    Expression<String?>? descriptionFR,
    Expression<String?>? descriptionDE,
    Expression<String?>? descriptionCA,
    Expression<String?>? descriptionGB,
    Expression<String?>? descriptionHU,
    Expression<String?>? descriptionIT,
    Expression<String?>? descriptionNL,
    Expression<String?>? descriptionPL,
    Expression<String?>? descriptionPT,
    Expression<String?>? descriptionRO,
    Expression<String?>? descriptionRU,
    Expression<String?>? descriptionCN,
    Expression<String?>? descriptionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'SUBFAMILIA_ID': id,
      if (familyId != null) 'FAMILIA_ID': familyId,
      if (descriptionES != null) 'DESCRIPCION_ES': descriptionES,
      if (descriptionEN != null) 'DESCRIPCION_EN': descriptionEN,
      if (descriptionFR != null) 'DESCRIPCION_FR': descriptionFR,
      if (descriptionDE != null) 'DESCRIPCION_DE': descriptionDE,
      if (descriptionCA != null) 'DESCRIPCION_CA': descriptionCA,
      if (descriptionGB != null) 'DESCRIPCION_GB': descriptionGB,
      if (descriptionHU != null) 'DESCRIPCION_HU': descriptionHU,
      if (descriptionIT != null) 'DESCRIPCION_IT': descriptionIT,
      if (descriptionNL != null) 'DESCRIPCION_NL': descriptionNL,
      if (descriptionPL != null) 'DESCRIPCION_PL': descriptionPL,
      if (descriptionPT != null) 'DESCRIPCION_PT': descriptionPT,
      if (descriptionRO != null) 'DESCRIPCION_RO': descriptionRO,
      if (descriptionRU != null) 'DESCRIPCION_RU': descriptionRU,
      if (descriptionCN != null) 'DESCRIPCION_CN': descriptionCN,
      if (descriptionEL != null) 'DESCRIPCION_EL': descriptionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SubfamilyTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? familyId,
      Value<String>? descriptionES,
      Value<String?>? descriptionEN,
      Value<String?>? descriptionFR,
      Value<String?>? descriptionDE,
      Value<String?>? descriptionCA,
      Value<String?>? descriptionGB,
      Value<String?>? descriptionHU,
      Value<String?>? descriptionIT,
      Value<String?>? descriptionNL,
      Value<String?>? descriptionPL,
      Value<String?>? descriptionPT,
      Value<String?>? descriptionRO,
      Value<String?>? descriptionRU,
      Value<String?>? descriptionCN,
      Value<String?>? descriptionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SubfamilyTableCompanion(
      id: id ?? this.id,
      familyId: familyId ?? this.familyId,
      descriptionES: descriptionES ?? this.descriptionES,
      descriptionEN: descriptionEN ?? this.descriptionEN,
      descriptionFR: descriptionFR ?? this.descriptionFR,
      descriptionDE: descriptionDE ?? this.descriptionDE,
      descriptionCA: descriptionCA ?? this.descriptionCA,
      descriptionGB: descriptionGB ?? this.descriptionGB,
      descriptionHU: descriptionHU ?? this.descriptionHU,
      descriptionIT: descriptionIT ?? this.descriptionIT,
      descriptionNL: descriptionNL ?? this.descriptionNL,
      descriptionPL: descriptionPL ?? this.descriptionPL,
      descriptionPT: descriptionPT ?? this.descriptionPT,
      descriptionRO: descriptionRO ?? this.descriptionRO,
      descriptionRU: descriptionRU ?? this.descriptionRU,
      descriptionCN: descriptionCN ?? this.descriptionCN,
      descriptionEL: descriptionEL ?? this.descriptionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(id.value);
    }
    if (familyId.present) {
      map['FAMILIA_ID'] = Variable<String>(familyId.value);
    }
    if (descriptionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descriptionES.value);
    }
    if (descriptionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String?>(descriptionEN.value);
    }
    if (descriptionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String?>(descriptionFR.value);
    }
    if (descriptionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String?>(descriptionDE.value);
    }
    if (descriptionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String?>(descriptionCA.value);
    }
    if (descriptionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String?>(descriptionGB.value);
    }
    if (descriptionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String?>(descriptionHU.value);
    }
    if (descriptionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String?>(descriptionIT.value);
    }
    if (descriptionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String?>(descriptionNL.value);
    }
    if (descriptionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String?>(descriptionPL.value);
    }
    if (descriptionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String?>(descriptionPT.value);
    }
    if (descriptionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String?>(descriptionRO.value);
    }
    if (descriptionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String?>(descriptionRU.value);
    }
    if (descriptionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String?>(descriptionCN.value);
    }
    if (descriptionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String?>(descriptionEL.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SubfamilyTableCompanion(')
          ..write('id: $id, ')
          ..write('familyId: $familyId, ')
          ..write('descriptionES: $descriptionES, ')
          ..write('descriptionEN: $descriptionEN, ')
          ..write('descriptionFR: $descriptionFR, ')
          ..write('descriptionDE: $descriptionDE, ')
          ..write('descriptionCA: $descriptionCA, ')
          ..write('descriptionGB: $descriptionGB, ')
          ..write('descriptionHU: $descriptionHU, ')
          ..write('descriptionIT: $descriptionIT, ')
          ..write('descriptionNL: $descriptionNL, ')
          ..write('descriptionPL: $descriptionPL, ')
          ..write('descriptionPT: $descriptionPT, ')
          ..write('descriptionRO: $descriptionRO, ')
          ..write('descriptionRU: $descriptionRU, ')
          ..write('descriptionCN: $descriptionCN, ')
          ..write('descriptionEL: $descriptionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SubfamilyTableTable extends SubfamilyTable
    with TableInfo<$SubfamilyTableTable, SubfamilyDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubfamilyTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _familyIdMeta = const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String?> familyId = GeneratedColumn<String?>(
      'FAMILIA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionESMeta =
      const VerificationMeta('descriptionES');
  @override
  late final GeneratedColumn<String?> descriptionES = GeneratedColumn<String?>(
      'DESCRIPCION_ES', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionENMeta =
      const VerificationMeta('descriptionEN');
  @override
  late final GeneratedColumn<String?> descriptionEN = GeneratedColumn<String?>(
      'DESCRIPCION_EN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionFRMeta =
      const VerificationMeta('descriptionFR');
  @override
  late final GeneratedColumn<String?> descriptionFR = GeneratedColumn<String?>(
      'DESCRIPCION_FR', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionDEMeta =
      const VerificationMeta('descriptionDE');
  @override
  late final GeneratedColumn<String?> descriptionDE = GeneratedColumn<String?>(
      'DESCRIPCION_DE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCAMeta =
      const VerificationMeta('descriptionCA');
  @override
  late final GeneratedColumn<String?> descriptionCA = GeneratedColumn<String?>(
      'DESCRIPCION_CA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionGBMeta =
      const VerificationMeta('descriptionGB');
  @override
  late final GeneratedColumn<String?> descriptionGB = GeneratedColumn<String?>(
      'DESCRIPCION_GB', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionHUMeta =
      const VerificationMeta('descriptionHU');
  @override
  late final GeneratedColumn<String?> descriptionHU = GeneratedColumn<String?>(
      'DESCRIPCION_HU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionITMeta =
      const VerificationMeta('descriptionIT');
  @override
  late final GeneratedColumn<String?> descriptionIT = GeneratedColumn<String?>(
      'DESCRIPCION_IT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionNLMeta =
      const VerificationMeta('descriptionNL');
  @override
  late final GeneratedColumn<String?> descriptionNL = GeneratedColumn<String?>(
      'DESCRIPCION_NL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPLMeta =
      const VerificationMeta('descriptionPL');
  @override
  late final GeneratedColumn<String?> descriptionPL = GeneratedColumn<String?>(
      'DESCRIPCION_PL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionPTMeta =
      const VerificationMeta('descriptionPT');
  @override
  late final GeneratedColumn<String?> descriptionPT = GeneratedColumn<String?>(
      'DESCRIPCION_PT', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionROMeta =
      const VerificationMeta('descriptionRO');
  @override
  late final GeneratedColumn<String?> descriptionRO = GeneratedColumn<String?>(
      'DESCRIPCION_RO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionRUMeta =
      const VerificationMeta('descriptionRU');
  @override
  late final GeneratedColumn<String?> descriptionRU = GeneratedColumn<String?>(
      'DESCRIPCION_RU', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionCNMeta =
      const VerificationMeta('descriptionCN');
  @override
  late final GeneratedColumn<String?> descriptionCN = GeneratedColumn<String?>(
      'DESCRIPCION_CN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _descriptionELMeta =
      const VerificationMeta('descriptionEL');
  @override
  late final GeneratedColumn<String?> descriptionEL = GeneratedColumn<String?>(
      'DESCRIPCION_EL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        familyId,
        descriptionES,
        descriptionEN,
        descriptionFR,
        descriptionDE,
        descriptionCA,
        descriptionGB,
        descriptionHU,
        descriptionIT,
        descriptionNL,
        descriptionPL,
        descriptionPT,
        descriptionRO,
        descriptionRU,
        descriptionCN,
        descriptionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'FAMILIAS';
  @override
  String get actualTableName => 'FAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<SubfamilyDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['SUBFAMILIA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descriptionESMeta,
          descriptionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descriptionESMeta));
    } else if (isInserting) {
      context.missing(_descriptionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descriptionENMeta,
          descriptionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descriptionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descriptionFRMeta,
          descriptionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descriptionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descriptionDEMeta,
          descriptionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descriptionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descriptionCAMeta,
          descriptionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descriptionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descriptionGBMeta,
          descriptionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descriptionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descriptionHUMeta,
          descriptionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descriptionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descriptionITMeta,
          descriptionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descriptionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descriptionNLMeta,
          descriptionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descriptionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descriptionPLMeta,
          descriptionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descriptionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descriptionPTMeta,
          descriptionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descriptionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descriptionROMeta,
          descriptionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descriptionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descriptionRUMeta,
          descriptionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descriptionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descriptionCNMeta,
          descriptionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descriptionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descriptionELMeta,
          descriptionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descriptionELMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id, familyId};
  @override
  SubfamilyDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubfamilyDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}SUBFAMILIA_ID'])!,
      familyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FAMILIA_ID'])!,
      descriptionES: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_ES'])!,
      descriptionEN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EN']),
      descriptionFR: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_FR']),
      descriptionDE: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_DE']),
      descriptionCA: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CA']),
      descriptionGB: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_GB']),
      descriptionHU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_HU']),
      descriptionIT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_IT']),
      descriptionNL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_NL']),
      descriptionPL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PL']),
      descriptionPT: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_PT']),
      descriptionRO: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RO']),
      descriptionRU: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_RU']),
      descriptionCN: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_CN']),
      descriptionEL: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SubfamilyTableTable createAlias(String alias) {
    return $SubfamilyTableTable(attachedDatabase, alias);
  }
}

class CustomerDiscountTableCompanion
    extends UpdateCompanion<CustomerDiscountDTO> {
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<String> familyId;
  final Value<String> subfamilyId;
  final Value<double> quantityFrom;
  final Value<double> discount;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerDiscountTableCompanion({
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.familyId = const Value.absent(),
    this.subfamilyId = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.discount = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerDiscountTableCompanion.insert({
    required String customerId,
    required String articleId,
    required String familyId,
    required String subfamilyId,
    required double quantityFrom,
    required double discount,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        articleId = Value(articleId),
        familyId = Value(familyId),
        subfamilyId = Value(subfamilyId),
        quantityFrom = Value(quantityFrom),
        discount = Value(discount),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerDiscountDTO> custom({
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<String>? familyId,
    Expression<String>? subfamilyId,
    Expression<double>? quantityFrom,
    Expression<double>? discount,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (familyId != null) 'FAMILIA_ID': familyId,
      if (subfamilyId != null) 'SUBFAMILIA_ID': subfamilyId,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (discount != null) 'DESCUENTO': discount,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerDiscountTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? articleId,
      Value<String>? familyId,
      Value<String>? subfamilyId,
      Value<double>? quantityFrom,
      Value<double>? discount,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerDiscountTableCompanion(
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      familyId: familyId ?? this.familyId,
      subfamilyId: subfamilyId ?? this.subfamilyId,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      discount: discount ?? this.discount,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (familyId.present) {
      map['FAMILIA_ID'] = Variable<String>(familyId.value);
    }
    if (subfamilyId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamilyId.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (discount.present) {
      map['DESCUENTO'] = Variable<double>(discount.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerDiscountTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('familyId: $familyId, ')
          ..write('subfamilyId: $subfamilyId, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('discount: $discount, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerDiscountTableTable extends CustomerDiscountTable
    with TableInfo<$CustomerDiscountTableTable, CustomerDiscountDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerDiscountTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String?> articleId = GeneratedColumn<String?>(
      'ARTICULO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _familyIdMeta = const VerificationMeta('familyId');
  @override
  late final GeneratedColumn<String?> familyId = GeneratedColumn<String?>(
      'FAMILIA_ID', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES FAMILIAS (FAMILIA_ID)');
  final VerificationMeta _subfamilyIdMeta =
      const VerificationMeta('subfamilyId');
  @override
  late final GeneratedColumn<String?> subfamilyId = GeneratedColumn<String?>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES FAMILIAS (SUBFAMILIA_ID)');
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double?> quantityFrom = GeneratedColumn<double?>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _discountMeta = const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double?> discount = GeneratedColumn<double?>(
      'DESCUENTO', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        articleId,
        familyId,
        subfamilyId,
        quantityFrom,
        discount,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DESCUENTOS';
  @override
  String get actualTableName => 'CLIENTES_DESCUENTOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerDiscountDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familyIdMeta,
          familyId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familyIdMeta));
    } else if (isInserting) {
      context.missing(_familyIdMeta);
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamilyIdMeta,
          subfamilyId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamilyIdMeta));
    } else if (isInserting) {
      context.missing(_subfamilyIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('DESCUENTO')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['DESCUENTO']!, _discountMeta));
    } else if (isInserting) {
      context.missing(_discountMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {customerId, articleId, familyId, subfamilyId, quantityFrom};
  @override
  CustomerDiscountDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerDiscountDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ARTICULO_ID'])!,
      familyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FAMILIA_ID'])!,
      subfamilyId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}SUBFAMILIA_ID'])!,
      quantityFrom: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CANTIDAD_DESDE'])!,
      discount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCUENTO'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerDiscountTableTable createAlias(String alias) {
    return $CustomerDiscountTableTable(attachedDatabase, alias);
  }
}

class CustomerContactTableCompanion
    extends UpdateCompanion<CustomerContactDTO> {
  final Value<String> customerId;
  final Value<String> contactId;
  final Value<String?> remarks;
  final Value<String?> name;
  final Value<String?> lastName1;
  final Value<String?> lastName2;
  final Value<String?> phone1;
  final Value<String?> phone2;
  final Value<String?> email;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerContactTableCompanion({
    this.customerId = const Value.absent(),
    this.contactId = const Value.absent(),
    this.remarks = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName1 = const Value.absent(),
    this.lastName2 = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    this.email = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerContactTableCompanion.insert({
    required String customerId,
    required String contactId,
    this.remarks = const Value.absent(),
    this.name = const Value.absent(),
    this.lastName1 = const Value.absent(),
    this.lastName2 = const Value.absent(),
    this.phone1 = const Value.absent(),
    this.phone2 = const Value.absent(),
    this.email = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        contactId = Value(contactId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerContactDTO> custom({
    Expression<String>? customerId,
    Expression<String>? contactId,
    Expression<String?>? remarks,
    Expression<String?>? name,
    Expression<String?>? lastName1,
    Expression<String?>? lastName2,
    Expression<String?>? phone1,
    Expression<String?>? phone2,
    Expression<String?>? email,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (contactId != null) 'CONTACTO_ID': contactId,
      if (remarks != null) 'OBSERVACIONES': remarks,
      if (name != null) 'NOMBRE': name,
      if (lastName1 != null) 'APELLIDO1': lastName1,
      if (lastName2 != null) 'APELLIDO12': lastName2,
      if (phone1 != null) 'TELEFONO1': phone1,
      if (phone2 != null) 'TELEFONO2': phone2,
      if (email != null) 'EMAIL': email,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerContactTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? contactId,
      Value<String?>? remarks,
      Value<String?>? name,
      Value<String?>? lastName1,
      Value<String?>? lastName2,
      Value<String?>? phone1,
      Value<String?>? phone2,
      Value<String?>? email,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerContactTableCompanion(
      customerId: customerId ?? this.customerId,
      contactId: contactId ?? this.contactId,
      remarks: remarks ?? this.remarks,
      name: name ?? this.name,
      lastName1: lastName1 ?? this.lastName1,
      lastName2: lastName2 ?? this.lastName2,
      phone1: phone1 ?? this.phone1,
      phone2: phone2 ?? this.phone2,
      email: email ?? this.email,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (contactId.present) {
      map['CONTACTO_ID'] = Variable<String>(contactId.value);
    }
    if (remarks.present) {
      map['OBSERVACIONES'] = Variable<String?>(remarks.value);
    }
    if (name.present) {
      map['NOMBRE'] = Variable<String?>(name.value);
    }
    if (lastName1.present) {
      map['APELLIDO1'] = Variable<String?>(lastName1.value);
    }
    if (lastName2.present) {
      map['APELLIDO12'] = Variable<String?>(lastName2.value);
    }
    if (phone1.present) {
      map['TELEFONO1'] = Variable<String?>(phone1.value);
    }
    if (phone2.present) {
      map['TELEFONO2'] = Variable<String?>(phone2.value);
    }
    if (email.present) {
      map['EMAIL'] = Variable<String?>(email.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerContactTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('contactId: $contactId, ')
          ..write('remarks: $remarks, ')
          ..write('name: $name, ')
          ..write('lastName1: $lastName1, ')
          ..write('lastName2: $lastName2, ')
          ..write('phone1: $phone1, ')
          ..write('phone2: $phone2, ')
          ..write('email: $email, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerContactTableTable extends CustomerContactTable
    with TableInfo<$CustomerContactTableTable, CustomerContactDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerContactTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contactIdMeta = const VerificationMeta('contactId');
  @override
  late final GeneratedColumn<String?> contactId = GeneratedColumn<String?>(
      'CONTACTO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _remarksMeta = const VerificationMeta('remarks');
  @override
  late final GeneratedColumn<String?> remarks = GeneratedColumn<String?>(
      'OBSERVACIONES', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'NOMBRE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastName1Meta = const VerificationMeta('lastName1');
  @override
  late final GeneratedColumn<String?> lastName1 = GeneratedColumn<String?>(
      'APELLIDO1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastName2Meta = const VerificationMeta('lastName2');
  @override
  late final GeneratedColumn<String?> lastName2 = GeneratedColumn<String?>(
      'APELLIDO12', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _phone1Meta = const VerificationMeta('phone1');
  @override
  late final GeneratedColumn<String?> phone1 = GeneratedColumn<String?>(
      'TELEFONO1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _phone2Meta = const VerificationMeta('phone2');
  @override
  late final GeneratedColumn<String?> phone2 = GeneratedColumn<String?>(
      'TELEFONO2', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String?> email = GeneratedColumn<String?>(
      'EMAIL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        contactId,
        remarks,
        name,
        lastName1,
        lastName2,
        phone1,
        phone2,
        email,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_CONTACTOS';
  @override
  String get actualTableName => 'CLIENTES_CONTACTOS';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerContactDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('CONTACTO_ID')) {
      context.handle(
          _contactIdMeta,
          contactId.isAcceptableOrUnknown(
              data['CONTACTO_ID']!, _contactIdMeta));
    } else if (isInserting) {
      context.missing(_contactIdMeta);
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(_remarksMeta,
          remarks.isAcceptableOrUnknown(data['OBSERVACIONES']!, _remarksMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['NOMBRE']!, _nameMeta));
    }
    if (data.containsKey('APELLIDO1')) {
      context.handle(_lastName1Meta,
          lastName1.isAcceptableOrUnknown(data['APELLIDO1']!, _lastName1Meta));
    }
    if (data.containsKey('APELLIDO12')) {
      context.handle(_lastName2Meta,
          lastName2.isAcceptableOrUnknown(data['APELLIDO12']!, _lastName2Meta));
    }
    if (data.containsKey('TELEFONO1')) {
      context.handle(_phone1Meta,
          phone1.isAcceptableOrUnknown(data['TELEFONO1']!, _phone1Meta));
    }
    if (data.containsKey('TELEFONO2')) {
      context.handle(_phone2Meta,
          phone2.isAcceptableOrUnknown(data['TELEFONO2']!, _phone2Meta));
    }
    if (data.containsKey('EMAIL')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['EMAIL']!, _emailMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, contactId};
  @override
  CustomerContactDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerContactDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      contactId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CONTACTO_ID'])!,
      remarks: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}OBSERVACIONES']),
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE']),
      lastName1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}APELLIDO1']),
      lastName2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}APELLIDO12']),
      phone1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TELEFONO1']),
      phone2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TELEFONO2']),
      email: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}EMAIL']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerContactTableTable createAlias(String alias) {
    return $CustomerContactTableTable(attachedDatabase, alias);
  }
}

class CustomerAddressTableCompanion
    extends UpdateCompanion<CustomerAddressDTO> {
  final Value<String> customerId;
  final Value<String> addressId;
  final Value<String?> name;
  final Value<String?> address1;
  final Value<String?> address2;
  final Value<String?> zipCode;
  final Value<String?> city;
  final Value<String?> state;
  final Value<String?> countryId;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerAddressTableCompanion({
    this.customerId = const Value.absent(),
    this.addressId = const Value.absent(),
    this.name = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerAddressTableCompanion.insert({
    required String customerId,
    required String addressId,
    this.name = const Value.absent(),
    this.address1 = const Value.absent(),
    this.address2 = const Value.absent(),
    this.zipCode = const Value.absent(),
    this.city = const Value.absent(),
    this.state = const Value.absent(),
    this.countryId = const Value.absent(),
    required double latitude,
    required double longitude,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        addressId = Value(addressId),
        latitude = Value(latitude),
        longitude = Value(longitude),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerAddressDTO> custom({
    Expression<String>? customerId,
    Expression<String>? addressId,
    Expression<String?>? name,
    Expression<String?>? address1,
    Expression<String?>? address2,
    Expression<String?>? zipCode,
    Expression<String?>? city,
    Expression<String?>? state,
    Expression<String?>? countryId,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (addressId != null) 'DIRECCION_ID': addressId,
      if (name != null) 'NOMBRE': name,
      if (address1 != null) 'DIRECCION1': address1,
      if (address2 != null) 'DIRECCION2': address2,
      if (zipCode != null) 'CODIGO_POSTAL': zipCode,
      if (city != null) 'POBLACION': city,
      if (state != null) 'PROVINCIA': state,
      if (countryId != null) 'PAIS_ID': countryId,
      if (latitude != null) 'LATITUD': latitude,
      if (longitude != null) 'LONGITUD': longitude,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerAddressTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? addressId,
      Value<String?>? name,
      Value<String?>? address1,
      Value<String?>? address2,
      Value<String?>? zipCode,
      Value<String?>? city,
      Value<String?>? state,
      Value<String?>? countryId,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerAddressTableCompanion(
      customerId: customerId ?? this.customerId,
      addressId: addressId ?? this.addressId,
      name: name ?? this.name,
      address1: address1 ?? this.address1,
      address2: address2 ?? this.address2,
      zipCode: zipCode ?? this.zipCode,
      city: city ?? this.city,
      state: state ?? this.state,
      countryId: countryId ?? this.countryId,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (addressId.present) {
      map['DIRECCION_ID'] = Variable<String>(addressId.value);
    }
    if (name.present) {
      map['NOMBRE'] = Variable<String?>(name.value);
    }
    if (address1.present) {
      map['DIRECCION1'] = Variable<String?>(address1.value);
    }
    if (address2.present) {
      map['DIRECCION2'] = Variable<String?>(address2.value);
    }
    if (zipCode.present) {
      map['CODIGO_POSTAL'] = Variable<String?>(zipCode.value);
    }
    if (city.present) {
      map['POBLACION'] = Variable<String?>(city.value);
    }
    if (state.present) {
      map['PROVINCIA'] = Variable<String?>(state.value);
    }
    if (countryId.present) {
      map['PAIS_ID'] = Variable<String?>(countryId.value);
    }
    if (latitude.present) {
      map['LATITUD'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['LONGITUD'] = Variable<double>(longitude.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerAddressTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('addressId: $addressId, ')
          ..write('name: $name, ')
          ..write('address1: $address1, ')
          ..write('address2: $address2, ')
          ..write('zipCode: $zipCode, ')
          ..write('city: $city, ')
          ..write('state: $state, ')
          ..write('countryId: $countryId, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerAddressTableTable extends CustomerAddressTable
    with TableInfo<$CustomerAddressTableTable, CustomerAddressDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerAddressTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _addressIdMeta = const VerificationMeta('addressId');
  @override
  late final GeneratedColumn<String?> addressId = GeneratedColumn<String?>(
      'DIRECCION_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String?> name = GeneratedColumn<String?>(
      'NOMBRE', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _address1Meta = const VerificationMeta('address1');
  @override
  late final GeneratedColumn<String?> address1 = GeneratedColumn<String?>(
      'DIRECCION1', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _address2Meta = const VerificationMeta('address2');
  @override
  late final GeneratedColumn<String?> address2 = GeneratedColumn<String?>(
      'DIRECCION2', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _zipCodeMeta = const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String?> zipCode = GeneratedColumn<String?>(
      'CODIGO_POSTAL', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _cityMeta = const VerificationMeta('city');
  @override
  late final GeneratedColumn<String?> city = GeneratedColumn<String?>(
      'POBLACION', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String?> state = GeneratedColumn<String?>(
      'PROVINCIA', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _countryIdMeta = const VerificationMeta('countryId');
  @override
  late final GeneratedColumn<String?> countryId = GeneratedColumn<String?>(
      'PAIS_ID', aliasedName, true,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'LATITUD', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'LONGITUD', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        addressId,
        name,
        address1,
        address2,
        zipCode,
        city,
        state,
        countryId,
        latitude,
        longitude,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  String get actualTableName => 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerAddressDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _addressIdMeta,
          addressId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _addressIdMeta));
    } else if (isInserting) {
      context.missing(_addressIdMeta);
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['NOMBRE']!, _nameMeta));
    }
    if (data.containsKey('DIRECCION1')) {
      context.handle(_address1Meta,
          address1.isAcceptableOrUnknown(data['DIRECCION1']!, _address1Meta));
    }
    if (data.containsKey('DIRECCION2')) {
      context.handle(_address2Meta,
          address2.isAcceptableOrUnknown(data['DIRECCION2']!, _address2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['CODIGO_POSTAL']!, _zipCodeMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(
          _cityMeta, city.isAcceptableOrUnknown(data['POBLACION']!, _cityMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_stateMeta,
          state.isAcceptableOrUnknown(data['PROVINCIA']!, _stateMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_countryIdMeta,
          countryId.isAcceptableOrUnknown(data['PAIS_ID']!, _countryIdMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['LATITUD']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['LONGITUD']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, addressId};
  @override
  CustomerAddressDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerAddressDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      addressId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION_ID'])!,
      name: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NOMBRE']),
      address1: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION1']),
      address2: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DIRECCION2']),
      zipCode: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CODIGO_POSTAL']),
      city: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}POBLACION']),
      state: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PROVINCIA']),
      countryId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PAIS_ID']),
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LATITUD'])!,
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LONGITUD'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerAddressTableTable createAlias(String alias) {
    return $CustomerAddressTableTable(attachedDatabase, alias);
  }
}

class CustomerPendingPaymentTableCompanion
    extends UpdateCompanion<CustomerPendingPaymentDTO> {
  final Value<String> customerId;
  final Value<String> effectId;
  final Value<String?> invoiceId;
  final Value<DateTime?> invoiceDate;
  final Value<DateTime?> expirationDate;
  final Value<String?> collectionMethodId;
  final Value<String?> collectionStatusId;
  final Value<double?> amount;
  final Value<DateTime?> initialExpirationDate;
  final Value<String?> expirationJBM;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerPendingPaymentTableCompanion({
    this.customerId = const Value.absent(),
    this.effectId = const Value.absent(),
    this.invoiceId = const Value.absent(),
    this.invoiceDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.collectionStatusId = const Value.absent(),
    this.amount = const Value.absent(),
    this.initialExpirationDate = const Value.absent(),
    this.expirationJBM = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerPendingPaymentTableCompanion.insert({
    required String customerId,
    required String effectId,
    this.invoiceId = const Value.absent(),
    this.invoiceDate = const Value.absent(),
    this.expirationDate = const Value.absent(),
    this.collectionMethodId = const Value.absent(),
    this.collectionStatusId = const Value.absent(),
    this.amount = const Value.absent(),
    this.initialExpirationDate = const Value.absent(),
    this.expirationJBM = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        effectId = Value(effectId),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerPendingPaymentDTO> custom({
    Expression<String>? customerId,
    Expression<String>? effectId,
    Expression<String?>? invoiceId,
    Expression<DateTime?>? invoiceDate,
    Expression<DateTime?>? expirationDate,
    Expression<String?>? collectionMethodId,
    Expression<String?>? collectionStatusId,
    Expression<double?>? amount,
    Expression<DateTime?>? initialExpirationDate,
    Expression<String?>? expirationJBM,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (effectId != null) 'ARTICULO_ID': effectId,
      if (invoiceId != null) 'FACTURA_ID': invoiceId,
      if (invoiceDate != null) 'FECHA_FACTURA': invoiceDate,
      if (expirationDate != null) 'FECHA_VENCIMIENTO': expirationDate,
      if (collectionMethodId != null) 'METODO_COBRO_ID': collectionMethodId,
      if (collectionStatusId != null) 'ESTADO_COBRO_ID': collectionStatusId,
      if (amount != null) 'IMPORTE': amount,
      if (initialExpirationDate != null)
        'FECHA_VENCIMIENTO_INICIAL': initialExpirationDate,
      if (expirationJBM != null) 'VENCIDO_JBM': expirationJBM,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerPendingPaymentTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? effectId,
      Value<String?>? invoiceId,
      Value<DateTime?>? invoiceDate,
      Value<DateTime?>? expirationDate,
      Value<String?>? collectionMethodId,
      Value<String?>? collectionStatusId,
      Value<double?>? amount,
      Value<DateTime?>? initialExpirationDate,
      Value<String?>? expirationJBM,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerPendingPaymentTableCompanion(
      customerId: customerId ?? this.customerId,
      effectId: effectId ?? this.effectId,
      invoiceId: invoiceId ?? this.invoiceId,
      invoiceDate: invoiceDate ?? this.invoiceDate,
      expirationDate: expirationDate ?? this.expirationDate,
      collectionMethodId: collectionMethodId ?? this.collectionMethodId,
      collectionStatusId: collectionStatusId ?? this.collectionStatusId,
      amount: amount ?? this.amount,
      initialExpirationDate:
          initialExpirationDate ?? this.initialExpirationDate,
      expirationJBM: expirationJBM ?? this.expirationJBM,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (effectId.present) {
      map['ARTICULO_ID'] = Variable<String>(effectId.value);
    }
    if (invoiceId.present) {
      map['FACTURA_ID'] = Variable<String?>(invoiceId.value);
    }
    if (invoiceDate.present) {
      map['FECHA_FACTURA'] = Variable<DateTime?>(invoiceDate.value);
    }
    if (expirationDate.present) {
      map['FECHA_VENCIMIENTO'] = Variable<DateTime?>(expirationDate.value);
    }
    if (collectionMethodId.present) {
      map['METODO_COBRO_ID'] = Variable<String?>(collectionMethodId.value);
    }
    if (collectionStatusId.present) {
      map['ESTADO_COBRO_ID'] = Variable<String?>(collectionStatusId.value);
    }
    if (amount.present) {
      map['IMPORTE'] = Variable<double?>(amount.value);
    }
    if (initialExpirationDate.present) {
      map['FECHA_VENCIMIENTO_INICIAL'] =
          Variable<DateTime?>(initialExpirationDate.value);
    }
    if (expirationJBM.present) {
      map['VENCIDO_JBM'] = Variable<String?>(expirationJBM.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerPendingPaymentTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('effectId: $effectId, ')
          ..write('invoiceId: $invoiceId, ')
          ..write('invoiceDate: $invoiceDate, ')
          ..write('expirationDate: $expirationDate, ')
          ..write('collectionMethodId: $collectionMethodId, ')
          ..write('collectionStatusId: $collectionStatusId, ')
          ..write('amount: $amount, ')
          ..write('initialExpirationDate: $initialExpirationDate, ')
          ..write('expirationJBM: $expirationJBM, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerPendingPaymentTableTable extends CustomerPendingPaymentTable
    with
        TableInfo<$CustomerPendingPaymentTableTable,
            CustomerPendingPaymentDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerPendingPaymentTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _effectIdMeta = const VerificationMeta('effectId');
  @override
  late final GeneratedColumn<String?> effectId = GeneratedColumn<String?>(
      'ARTICULO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _invoiceIdMeta = const VerificationMeta('invoiceId');
  @override
  late final GeneratedColumn<String?> invoiceId = GeneratedColumn<String?>(
      'FACTURA_ID', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _invoiceDateMeta =
      const VerificationMeta('invoiceDate');
  @override
  late final GeneratedColumn<DateTime?> invoiceDate =
      GeneratedColumn<DateTime?>('FECHA_FACTURA', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _expirationDateMeta =
      const VerificationMeta('expirationDate');
  @override
  late final GeneratedColumn<DateTime?> expirationDate =
      GeneratedColumn<DateTime?>('FECHA_VENCIMIENTO', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _collectionMethodIdMeta =
      const VerificationMeta('collectionMethodId');
  @override
  late final GeneratedColumn<String?> collectionMethodId =
      GeneratedColumn<String?>('METODO_COBRO_ID', aliasedName, true,
          type: const StringType(),
          requiredDuringInsert: false,
          defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _collectionStatusIdMeta =
      const VerificationMeta('collectionStatusId');
  @override
  late final GeneratedColumn<String?> collectionStatusId =
      GeneratedColumn<String?>('ESTADO_COBRO_ID', aliasedName, true,
          type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double?> amount = GeneratedColumn<double?>(
      'IMPORTE', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _initialExpirationDateMeta =
      const VerificationMeta('initialExpirationDate');
  @override
  late final GeneratedColumn<DateTime?> initialExpirationDate =
      GeneratedColumn<DateTime?>('FECHA_VENCIMIENTO_INICIAL', aliasedName, true,
          type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _expirationJBMMeta =
      const VerificationMeta('expirationJBM');
  @override
  late final GeneratedColumn<String?> expirationJBM = GeneratedColumn<String?>(
      'VENCIDO_JBM', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        effectId,
        invoiceId,
        invoiceDate,
        expirationDate,
        collectionMethodId,
        collectionStatusId,
        amount,
        initialExpirationDate,
        expirationJBM,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PAGOS_PENDIENTES';
  @override
  String get actualTableName => 'CLIENTES_PAGOS_PENDIENTES';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerPendingPaymentDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(_effectIdMeta,
          effectId.isAcceptableOrUnknown(data['ARTICULO_ID']!, _effectIdMeta));
    } else if (isInserting) {
      context.missing(_effectIdMeta);
    }
    if (data.containsKey('FACTURA_ID')) {
      context.handle(_invoiceIdMeta,
          invoiceId.isAcceptableOrUnknown(data['FACTURA_ID']!, _invoiceIdMeta));
    }
    if (data.containsKey('FECHA_FACTURA')) {
      context.handle(
          _invoiceDateMeta,
          invoiceDate.isAcceptableOrUnknown(
              data['FECHA_FACTURA']!, _invoiceDateMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO')) {
      context.handle(
          _expirationDateMeta,
          expirationDate.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO']!, _expirationDateMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _collectionMethodIdMeta,
          collectionMethodId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _collectionMethodIdMeta));
    }
    if (data.containsKey('ESTADO_COBRO_ID')) {
      context.handle(
          _collectionStatusIdMeta,
          collectionStatusId.isAcceptableOrUnknown(
              data['ESTADO_COBRO_ID']!, _collectionStatusIdMeta));
    }
    if (data.containsKey('IMPORTE')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['IMPORTE']!, _amountMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO_INICIAL')) {
      context.handle(
          _initialExpirationDateMeta,
          initialExpirationDate.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO_INICIAL']!, _initialExpirationDateMeta));
    }
    if (data.containsKey('VENCIDO_JBM')) {
      context.handle(
          _expirationJBMMeta,
          expirationJBM.isAcceptableOrUnknown(
              data['VENCIDO_JBM']!, _expirationJBMMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, effectId};
  @override
  CustomerPendingPaymentDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerPendingPaymentDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      effectId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ARTICULO_ID'])!,
      invoiceId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FACTURA_ID']),
      invoiceDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_FACTURA']),
      expirationDate: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_VENCIMIENTO']),
      collectionMethodId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}METODO_COBRO_ID']),
      collectionStatusId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ESTADO_COBRO_ID']),
      amount: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}IMPORTE']),
      initialExpirationDate: const DateTimeType().mapFromDatabaseResponse(
          data['${effectivePrefix}FECHA_VENCIMIENTO_INICIAL']),
      expirationJBM: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}VENCIDO_JBM']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerPendingPaymentTableTable createAlias(String alias) {
    return $CustomerPendingPaymentTableTable(attachedDatabase, alias);
  }
}

class CustomerNetPriceTableCompanion
    extends UpdateCompanion<CustomerNetPriceDTO> {
  final Value<String> customerId;
  final Value<String> articleId;
  final Value<double> quantityFrom;
  final Value<double> price;
  final Value<double?> priceType;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerNetPriceTableCompanion({
    this.customerId = const Value.absent(),
    this.articleId = const Value.absent(),
    this.quantityFrom = const Value.absent(),
    this.price = const Value.absent(),
    this.priceType = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerNetPriceTableCompanion.insert({
    required String customerId,
    required String articleId,
    required double quantityFrom,
    required double price,
    this.priceType = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        articleId = Value(articleId),
        quantityFrom = Value(quantityFrom),
        price = Value(price),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerNetPriceDTO> custom({
    Expression<String>? customerId,
    Expression<String>? articleId,
    Expression<double>? quantityFrom,
    Expression<double>? price,
    Expression<double?>? priceType,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (articleId != null) 'ARTICULO_ID': articleId,
      if (quantityFrom != null) 'CANTIDAD_DESDE': quantityFrom,
      if (price != null) 'PRECIO': price,
      if (priceType != null) 'TIPO_PRECIO': priceType,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerNetPriceTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? articleId,
      Value<double>? quantityFrom,
      Value<double>? price,
      Value<double?>? priceType,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerNetPriceTableCompanion(
      customerId: customerId ?? this.customerId,
      articleId: articleId ?? this.articleId,
      quantityFrom: quantityFrom ?? this.quantityFrom,
      price: price ?? this.price,
      priceType: priceType ?? this.priceType,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (articleId.present) {
      map['ARTICULO_ID'] = Variable<String>(articleId.value);
    }
    if (quantityFrom.present) {
      map['CANTIDAD_DESDE'] = Variable<double>(quantityFrom.value);
    }
    if (price.present) {
      map['PRECIO'] = Variable<double>(price.value);
    }
    if (priceType.present) {
      map['TIPO_PRECIO'] = Variable<double?>(priceType.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerNetPriceTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('articleId: $articleId, ')
          ..write('quantityFrom: $quantityFrom, ')
          ..write('price: $price, ')
          ..write('priceType: $priceType, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerNetPriceTableTable extends CustomerNetPriceTable
    with TableInfo<$CustomerNetPriceTableTable, CustomerNetPriceDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerNetPriceTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _articleIdMeta = const VerificationMeta('articleId');
  @override
  late final GeneratedColumn<String?> articleId = GeneratedColumn<String?>(
      'ARTICULO_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _quantityFromMeta =
      const VerificationMeta('quantityFrom');
  @override
  late final GeneratedColumn<double?> quantityFrom = GeneratedColumn<double?>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double?> price = GeneratedColumn<double?>(
      'PRECIO', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _priceTypeMeta = const VerificationMeta('priceType');
  @override
  late final GeneratedColumn<double?> priceType = GeneratedColumn<double?>(
      'TIPO_PRECIO', aliasedName, true,
      type: const RealType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        articleId,
        quantityFrom,
        price,
        priceType,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PRECIOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_PRECIOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<CustomerNetPriceDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articleIdMeta,
          articleId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articleIdMeta));
    } else if (isInserting) {
      context.missing(_articleIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _quantityFromMeta,
          quantityFrom.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _quantityFromMeta));
    } else if (isInserting) {
      context.missing(_quantityFromMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['PRECIO']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _priceTypeMeta,
          priceType.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _priceTypeMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, articleId, quantityFrom};
  @override
  CustomerNetPriceDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerNetPriceDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      articleId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}ARTICULO_ID'])!,
      quantityFrom: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CANTIDAD_DESDE'])!,
      price: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}PRECIO'])!,
      priceType: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}TIPO_PRECIO']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerNetPriceTableTable createAlias(String alias) {
    return $CustomerNetPriceTableTable(attachedDatabase, alias);
  }
}

class CustomerRappelTableCompanion extends UpdateCompanion<CustomerRappelDTO> {
  final Value<String> customerId;
  final Value<String> rappelId;
  final Value<String> description;
  final Value<DateTime> dateFrom;
  final Value<DateTime?> dateTo;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const CustomerRappelTableCompanion({
    this.customerId = const Value.absent(),
    this.rappelId = const Value.absent(),
    this.description = const Value.absent(),
    this.dateFrom = const Value.absent(),
    this.dateTo = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  CustomerRappelTableCompanion.insert({
    required String customerId,
    required String rappelId,
    required String description,
    required DateTime dateFrom,
    this.dateTo = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : customerId = Value(customerId),
        rappelId = Value(rappelId),
        description = Value(description),
        dateFrom = Value(dateFrom),
        lastUpdated = Value(lastUpdated);
  static Insertable<CustomerRappelDTO> custom({
    Expression<String>? customerId,
    Expression<String>? rappelId,
    Expression<String>? description,
    Expression<DateTime>? dateFrom,
    Expression<DateTime?>? dateTo,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (rappelId != null) 'RAPPEL_ID': rappelId,
      if (description != null) 'DESCRIPCION': description,
      if (dateFrom != null) 'FECHA_DESDE': dateFrom,
      if (dateTo != null) 'FECHA_HASTA': dateTo,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  CustomerRappelTableCompanion copyWith(
      {Value<String>? customerId,
      Value<String>? rappelId,
      Value<String>? description,
      Value<DateTime>? dateFrom,
      Value<DateTime?>? dateTo,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return CustomerRappelTableCompanion(
      customerId: customerId ?? this.customerId,
      rappelId: rappelId ?? this.rappelId,
      description: description ?? this.description,
      dateFrom: dateFrom ?? this.dateFrom,
      dateTo: dateTo ?? this.dateTo,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (rappelId.present) {
      map['RAPPEL_ID'] = Variable<String>(rappelId.value);
    }
    if (description.present) {
      map['DESCRIPCION'] = Variable<String>(description.value);
    }
    if (dateFrom.present) {
      map['FECHA_DESDE'] = Variable<DateTime>(dateFrom.value);
    }
    if (dateTo.present) {
      map['FECHA_HASTA'] = Variable<DateTime?>(dateTo.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomerRappelTableCompanion(')
          ..write('customerId: $customerId, ')
          ..write('rappelId: $rappelId, ')
          ..write('description: $description, ')
          ..write('dateFrom: $dateFrom, ')
          ..write('dateTo: $dateTo, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $CustomerRappelTableTable extends CustomerRappelTable
    with TableInfo<$CustomerRappelTableTable, CustomerRappelDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomerRappelTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _rappelIdMeta = const VerificationMeta('rappelId');
  @override
  late final GeneratedColumn<String?> rappelId = GeneratedColumn<String?>(
      'RAPPEL_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'DESCRIPCION', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateFromMeta = const VerificationMeta('dateFrom');
  @override
  late final GeneratedColumn<DateTime?> dateFrom = GeneratedColumn<DateTime?>(
      'FECHA_DESDE', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _dateToMeta = const VerificationMeta('dateTo');
  @override
  late final GeneratedColumn<DateTime?> dateTo = GeneratedColumn<DateTime?>(
      'FECHA_HASTA', aliasedName, true,
      type: const IntType(), requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        customerId,
        rappelId,
        description,
        dateFrom,
        dateTo,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_RAPPELS';
  @override
  String get actualTableName => 'CLIENTES_RAPPELS';
  @override
  VerificationContext validateIntegrity(Insertable<CustomerRappelDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('RAPPEL_ID')) {
      context.handle(_rappelIdMeta,
          rappelId.isAcceptableOrUnknown(data['RAPPEL_ID']!, _rappelIdMeta));
    } else if (isInserting) {
      context.missing(_rappelIdMeta);
    }
    if (data.containsKey('DESCRIPCION')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['DESCRIPCION']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('FECHA_DESDE')) {
      context.handle(_dateFromMeta,
          dateFrom.isAcceptableOrUnknown(data['FECHA_DESDE']!, _dateFromMeta));
    } else if (isInserting) {
      context.missing(_dateFromMeta);
    }
    if (data.containsKey('FECHA_HASTA')) {
      context.handle(_dateToMeta,
          dateTo.isAcceptableOrUnknown(data['FECHA_HASTA']!, _dateToMeta));
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {customerId, rappelId};
  @override
  CustomerRappelDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return CustomerRappelDTO(
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      rappelId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}RAPPEL_ID'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DESCRIPCION'])!,
      dateFrom: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_DESDE'])!,
      dateTo: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA_HASTA']),
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $CustomerRappelTableTable createAlias(String alias) {
    return $CustomerRappelTableTable(attachedDatabase, alias);
  }
}

class VisitTableCompanion extends UpdateCompanion<VisitDTO> {
  final Value<String> id;
  final Value<String> customerId;
  final Value<DateTime> date;
  final Value<String> numEmpl;
  final Value<String?> contact;
  final Value<String?> summary;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const VisitTableCompanion({
    this.id = const Value.absent(),
    this.customerId = const Value.absent(),
    this.date = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contact = const Value.absent(),
    this.summary = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  VisitTableCompanion.insert({
    required String id,
    required String customerId,
    required DateTime date,
    required String numEmpl,
    this.contact = const Value.absent(),
    this.summary = const Value.absent(),
    required double latitude,
    required double longitude,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        customerId = Value(customerId),
        date = Value(date),
        numEmpl = Value(numEmpl),
        latitude = Value(latitude),
        longitude = Value(longitude),
        lastUpdated = Value(lastUpdated);
  static Insertable<VisitDTO> custom({
    Expression<String>? id,
    Expression<String>? customerId,
    Expression<DateTime>? date,
    Expression<String>? numEmpl,
    Expression<String?>? contact,
    Expression<String?>? summary,
    Expression<double>? latitude,
    Expression<double>? longitude,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'VISITA_ID': id,
      if (customerId != null) 'CLIENTE_ID': customerId,
      if (date != null) 'FECHA': date,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contact != null) 'CONTACTO': contact,
      if (summary != null) 'RESUMEN': summary,
      if (latitude != null) 'LATITUD': latitude,
      if (longitude != null) 'LONGITUD': longitude,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  VisitTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? customerId,
      Value<DateTime>? date,
      Value<String>? numEmpl,
      Value<String?>? contact,
      Value<String?>? summary,
      Value<double>? latitude,
      Value<double>? longitude,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return VisitTableCompanion(
      id: id ?? this.id,
      customerId: customerId ?? this.customerId,
      date: date ?? this.date,
      numEmpl: numEmpl ?? this.numEmpl,
      contact: contact ?? this.contact,
      summary: summary ?? this.summary,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['VISITA_ID'] = Variable<String>(id.value);
    }
    if (customerId.present) {
      map['CLIENTE_ID'] = Variable<String>(customerId.value);
    }
    if (date.present) {
      map['FECHA'] = Variable<DateTime>(date.value);
    }
    if (numEmpl.present) {
      map['NUM_EMPL'] = Variable<String>(numEmpl.value);
    }
    if (contact.present) {
      map['CONTACTO'] = Variable<String?>(contact.value);
    }
    if (summary.present) {
      map['RESUMEN'] = Variable<String?>(summary.value);
    }
    if (latitude.present) {
      map['LATITUD'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['LONGITUD'] = Variable<double>(longitude.value);
    }
    if (lastUpdated.present) {
      map['LAST_UPDATED'] = Variable<DateTime>(lastUpdated.value);
    }
    if (deleted.present) {
      map['DELETED'] = Variable<String>(deleted.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitTableCompanion(')
          ..write('id: $id, ')
          ..write('customerId: $customerId, ')
          ..write('date: $date, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contact: $contact, ')
          ..write('summary: $summary, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $VisitTableTable extends VisitTable
    with TableInfo<$VisitTableTable, VisitDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String?> id = GeneratedColumn<String?>(
      'VISITA_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _customerIdMeta = const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String?> customerId = GeneratedColumn<String?>(
      'CLIENTE_ID', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dateMeta = const VerificationMeta('date');
  @override
  late final GeneratedColumn<DateTime?> date = GeneratedColumn<DateTime?>(
      'FECHA', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _numEmplMeta = const VerificationMeta('numEmpl');
  @override
  late final GeneratedColumn<String?> numEmpl = GeneratedColumn<String?>(
      'NUM_EMPL', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _contactMeta = const VerificationMeta('contact');
  @override
  late final GeneratedColumn<String?> contact = GeneratedColumn<String?>(
      'CONTACTO', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _summaryMeta = const VerificationMeta('summary');
  @override
  late final GeneratedColumn<String?> summary = GeneratedColumn<String?>(
      'RESUMEN', aliasedName, true,
      type: const StringType(), requiredDuringInsert: false);
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  @override
  late final GeneratedColumn<double?> latitude = GeneratedColumn<double?>(
      'LATITUD', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  @override
  late final GeneratedColumn<double?> longitude = GeneratedColumn<double?>(
      'LONGITUD', aliasedName, false,
      type: const RealType(), requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime?> lastUpdated =
      GeneratedColumn<DateTime?>('LAST_UPDATED', aliasedName, false,
          type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String?> deleted = GeneratedColumn<String?>(
      'DELETED', aliasedName, false,
      type: const StringType(),
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        customerId,
        date,
        numEmpl,
        contact,
        summary,
        latitude,
        longitude,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'VISITAS';
  @override
  String get actualTableName => 'VISITAS';
  @override
  VerificationContext validateIntegrity(Insertable<VisitDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('VISITA_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['VISITA_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['CLIENTE_ID']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['FECHA']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('NUM_EMPL')) {
      context.handle(_numEmplMeta,
          numEmpl.isAcceptableOrUnknown(data['NUM_EMPL']!, _numEmplMeta));
    } else if (isInserting) {
      context.missing(_numEmplMeta);
    }
    if (data.containsKey('CONTACTO')) {
      context.handle(_contactMeta,
          contact.isAcceptableOrUnknown(data['CONTACTO']!, _contactMeta));
    }
    if (data.containsKey('RESUMEN')) {
      context.handle(_summaryMeta,
          summary.isAcceptableOrUnknown(data['RESUMEN']!, _summaryMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudeMeta,
          latitude.isAcceptableOrUnknown(data['LATITUD']!, _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudeMeta,
          longitude.isAcceptableOrUnknown(data['LONGITUD']!, _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('LAST_UPDATED')) {
      context.handle(
          _lastUpdatedMeta,
          lastUpdated.isAcceptableOrUnknown(
              data['LAST_UPDATED']!, _lastUpdatedMeta));
    } else if (isInserting) {
      context.missing(_lastUpdatedMeta);
    }
    if (data.containsKey('DELETED')) {
      context.handle(_deletedMeta,
          deleted.isAcceptableOrUnknown(data['DELETED']!, _deletedMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  VisitDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VisitDTO(
      id: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}VISITA_ID'])!,
      customerId: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CLIENTE_ID'])!,
      date: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}FECHA'])!,
      numEmpl: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}NUM_EMPL'])!,
      contact: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}CONTACTO']),
      summary: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}RESUMEN']),
      latitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LATITUD'])!,
      longitude: const RealType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LONGITUD'])!,
      lastUpdated: const DateTimeType()
          .mapFromDatabaseResponse(data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $VisitTableTable createAlias(String alias) {
    return $VisitTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  late final $CountryTableTable countryTable = $CountryTableTable(this);
  late final $DivisaTableTable divisaTable = $DivisaTableTable(this);
  late final $SalesOrderStatusTableTable salesOrderStatusTable =
      $SalesOrderStatusTableTable(this);
  late final $SalesOrderTableTable salesOrderTable =
      $SalesOrderTableTable(this);
  late final $SalesOrderLineTableTable salesOrderLineTable =
      $SalesOrderLineTableTable(this);
  late final $LastSyncDateTableTable lastSyncDateTable =
      $LastSyncDateTableTable(this);
  late final $CollectionMethodTableTable collectionMethodTable =
      $CollectionMethodTableTable(this);
  late final $CollectionTermTableTable collectionTermTable =
      $CollectionTermTableTable(this);
  late final $CustomerTableTable customerTable = $CustomerTableTable(this);
  late final $CustomerUserTableTable customerUserTable =
      $CustomerUserTableTable(this);
  late final $CustomerNetGroupTableTable customerNetGroupTable =
      $CustomerNetGroupTableTable(this);
  late final $FamilyTableTable familyTable = $FamilyTableTable(this);
  late final $SubfamilyTableTable subfamilyTable = $SubfamilyTableTable(this);
  late final $CustomerDiscountTableTable customerDiscountTable =
      $CustomerDiscountTableTable(this);
  late final $CustomerContactTableTable customerContactTable =
      $CustomerContactTableTable(this);
  late final $CustomerAddressTableTable customerAddressTable =
      $CustomerAddressTableTable(this);
  late final $CustomerPendingPaymentTableTable customerPendingPaymentTable =
      $CustomerPendingPaymentTableTable(this);
  late final $CustomerNetPriceTableTable customerNetPriceTable =
      $CustomerNetPriceTableTable(this);
  late final $CustomerRappelTableTable customerRappelTable =
      $CustomerRappelTableTable(this);
  late final $VisitTableTable visitTable = $VisitTableTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        countryTable,
        divisaTable,
        salesOrderStatusTable,
        salesOrderTable,
        salesOrderLineTable,
        lastSyncDateTable,
        collectionMethodTable,
        collectionTermTable,
        customerTable,
        customerUserTable,
        customerNetGroupTable,
        familyTable,
        subfamilyTable,
        customerDiscountTable,
        customerContactTable,
        customerAddressTable,
        customerPendingPaymentTable,
        customerNetPriceTable,
        customerRappelTable,
        visitTable
      ];
}
