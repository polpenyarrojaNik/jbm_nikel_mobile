// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class PaisTableCompanion extends UpdateCompanion<PaisDTO> {
  final Value<String> id;
  final Value<String?> isoCode;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PaisTableCompanion({
    this.id = const Value.absent(),
    this.isoCode = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PaisTableCompanion.insert({
    required String id,
    this.isoCode = const Value.absent(),
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<PaisDTO> custom({
    Expression<String>? id,
    Expression<String>? isoCode,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PAIS_ID': id,
      if (isoCode != null) 'CODIGO_ISO': isoCode,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PaisTableCompanion copyWith(
      {Value<String>? id,
      Value<String?>? isoCode,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PaisTableCompanion(
      id: id ?? this.id,
      isoCode: isoCode ?? this.isoCode,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
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
      map['CODIGO_ISO'] = Variable<String>(isoCode.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('PaisTableCompanion(')
          ..write('id: $id, ')
          ..write('isoCode: $isoCode, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PaisTableTable extends PaisTable
    with TableInfo<$PaisTableTable, PaisDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaisTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _isoCodeMeta = const VerificationMeta('isoCode');
  @override
  late final GeneratedColumn<String> isoCode = GeneratedColumn<String>(
      'CODIGO_ISO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        isoCode,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PAISES';
  @override
  String get actualTableName => 'PAISES';
  @override
  VerificationContext validateIntegrity(Insertable<PaisDTO> instance,
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
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  PaisDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaisDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID'])!,
      isoCode: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_ISO']),
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PaisTableTable createAlias(String alias) {
    return $PaisTableTable(attachedDatabase, alias);
  }
}

class DivisaTableCompanion extends UpdateCompanion<DivisaDTO> {
  final Value<String> id;
  final Value<String> abv;
  final Value<String?> simbolo;
  final Value<double?> redondeo;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const DivisaTableCompanion({
    this.id = const Value.absent(),
    this.abv = const Value.absent(),
    this.simbolo = const Value.absent(),
    this.redondeo = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  DivisaTableCompanion.insert({
    required String id,
    required String abv,
    this.simbolo = const Value.absent(),
    this.redondeo = const Value.absent(),
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        abv = Value(abv),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<DivisaDTO> custom({
    Expression<String>? id,
    Expression<String>? abv,
    Expression<String>? simbolo,
    Expression<double>? redondeo,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'DIVISA_ID': id,
      if (abv != null) 'ABREVIACION': abv,
      if (simbolo != null) 'SIMBOLO': simbolo,
      if (redondeo != null) 'REDONDEO': redondeo,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  DivisaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? abv,
      Value<String?>? simbolo,
      Value<double?>? redondeo,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return DivisaTableCompanion(
      id: id ?? this.id,
      abv: abv ?? this.abv,
      simbolo: simbolo ?? this.simbolo,
      redondeo: redondeo ?? this.redondeo,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
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
    if (simbolo.present) {
      map['SIMBOLO'] = Variable<String>(simbolo.value);
    }
    if (redondeo.present) {
      map['REDONDEO'] = Variable<double>(redondeo.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
          ..write('simbolo: $simbolo, ')
          ..write('redondeo: $redondeo, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
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
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _abvMeta = const VerificationMeta('abv');
  @override
  late final GeneratedColumn<String> abv = GeneratedColumn<String>(
      'ABREVIACION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _simboloMeta = const VerificationMeta('simbolo');
  @override
  late final GeneratedColumn<String> simbolo = GeneratedColumn<String>(
      'SIMBOLO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _redondeoMeta = const VerificationMeta('redondeo');
  @override
  late final GeneratedColumn<double> redondeo = GeneratedColumn<double>(
      'REDONDEO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        abv,
        simbolo,
        redondeo,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
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
      context.handle(_simboloMeta,
          simbolo.isAcceptableOrUnknown(data['SIMBOLO']!, _simboloMeta));
    }
    if (data.containsKey('REDONDEO')) {
      context.handle(_redondeoMeta,
          redondeo.isAcceptableOrUnknown(data['REDONDEO']!, _redondeoMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      abv: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ABREVIACION'])!,
      simbolo: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SIMBOLO']),
      redondeo: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}REDONDEO']),
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $DivisaTableTable createAlias(String alias) {
    return $DivisaTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaEstadoTableCompanion
    extends UpdateCompanion<PedidoVentaEstadoDTO> {
  final Value<int> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PedidoVentaEstadoTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PedidoVentaEstadoTableCompanion.insert({
    this.id = const Value.absent(),
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<PedidoVentaEstadoDTO> custom({
    Expression<int>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ESTADO_PEDIDO_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PedidoVentaEstadoTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PedidoVentaEstadoTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(id.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('PedidoVentaEstadoTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaEstadoTableTable extends PedidoVentaEstadoTable
    with TableInfo<$PedidoVentaEstadoTableTable, PedidoVentaEstadoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaEstadoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_ESTADOS';
  @override
  String get actualTableName => 'PEDIDOS_ESTADOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaEstadoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(_idMeta,
          id.isAcceptableOrUnknown(data['ESTADO_PEDIDO_ID']!, _idMeta));
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  PedidoVentaEstadoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaEstadoDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PedidoVentaEstadoTableTable createAlias(String alias) {
    return $PedidoVentaEstadoTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaTableCompanion extends UpdateCompanion<PedidoVentaDTO> {
  final Value<String> empresaId;
  final Value<String> pedidoVentaId;
  final Value<DateTime> pedidoVentaDate;
  final Value<String> tipoVenta;
  final Value<String> clienteId;
  final Value<String> nombreCliente;
  final Value<String?> direccionId;
  final Value<String?> direccionEntrga1;
  final Value<String?> direccionEntrga2;
  final Value<String?> codigoPostal;
  final Value<String?> poblacion;
  final Value<String?> provincia;
  final Value<String?> paisId;
  final Value<String> divisaId;
  final Value<double> baseImponible;
  final Value<double> totalLineas;
  final Value<double> importePortes;
  final Value<double> importeIva;
  final Value<double> total;
  final Value<int> pedidoVentaEstadoId;
  final Value<String> oferta;
  final Value<String?> pedidoVentaAppId;
  final Value<double> iva;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PedidoVentaTableCompanion({
    this.empresaId = const Value.absent(),
    this.pedidoVentaId = const Value.absent(),
    this.pedidoVentaDate = const Value.absent(),
    this.tipoVenta = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.direccionId = const Value.absent(),
    this.direccionEntrga1 = const Value.absent(),
    this.direccionEntrga2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.baseImponible = const Value.absent(),
    this.totalLineas = const Value.absent(),
    this.importePortes = const Value.absent(),
    this.importeIva = const Value.absent(),
    this.total = const Value.absent(),
    this.pedidoVentaEstadoId = const Value.absent(),
    this.oferta = const Value.absent(),
    this.pedidoVentaAppId = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PedidoVentaTableCompanion.insert({
    required String empresaId,
    required String pedidoVentaId,
    required DateTime pedidoVentaDate,
    required String tipoVenta,
    required String clienteId,
    required String nombreCliente,
    this.direccionId = const Value.absent(),
    this.direccionEntrga1 = const Value.absent(),
    this.direccionEntrga2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    required String divisaId,
    this.baseImponible = const Value.absent(),
    this.totalLineas = const Value.absent(),
    this.importePortes = const Value.absent(),
    this.importeIva = const Value.absent(),
    this.total = const Value.absent(),
    this.pedidoVentaEstadoId = const Value.absent(),
    this.oferta = const Value.absent(),
    this.pedidoVentaAppId = const Value.absent(),
    this.iva = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : empresaId = Value(empresaId),
        pedidoVentaId = Value(pedidoVentaId),
        pedidoVentaDate = Value(pedidoVentaDate),
        tipoVenta = Value(tipoVenta),
        clienteId = Value(clienteId),
        nombreCliente = Value(nombreCliente),
        divisaId = Value(divisaId),
        lastUpdated = Value(lastUpdated);
  static Insertable<PedidoVentaDTO> custom({
    Expression<String>? empresaId,
    Expression<String>? pedidoVentaId,
    Expression<DateTime>? pedidoVentaDate,
    Expression<String>? tipoVenta,
    Expression<String>? clienteId,
    Expression<String>? nombreCliente,
    Expression<String>? direccionId,
    Expression<String>? direccionEntrga1,
    Expression<String>? direccionEntrga2,
    Expression<String>? codigoPostal,
    Expression<String>? poblacion,
    Expression<String>? provincia,
    Expression<String>? paisId,
    Expression<String>? divisaId,
    Expression<double>? baseImponible,
    Expression<double>? totalLineas,
    Expression<double>? importePortes,
    Expression<double>? importeIva,
    Expression<double>? total,
    Expression<int>? pedidoVentaEstadoId,
    Expression<String>? oferta,
    Expression<String>? pedidoVentaAppId,
    Expression<double>? iva,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (pedidoVentaId != null) 'PEDIDO_ID': pedidoVentaId,
      if (pedidoVentaDate != null) 'FECHA_PEDIDO': pedidoVentaDate,
      if (tipoVenta != null) 'TIPO_VENTA': tipoVenta,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (nombreCliente != null) 'NOMRE_CLIENTE': nombreCliente,
      if (direccionId != null) 'DIRECCION_ID': direccionId,
      if (direccionEntrga1 != null) 'DIRECCION_ENVIO1': direccionEntrga1,
      if (direccionEntrga2 != null) 'DIRECCION_ENVIO2': direccionEntrga2,
      if (codigoPostal != null) 'CODIGO_POSTAL': codigoPostal,
      if (poblacion != null) 'POBLACION': poblacion,
      if (provincia != null) 'PROVINCIA': provincia,
      if (paisId != null) 'PAIS_ID': paisId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (baseImponible != null) 'BASE_IMPONIBLE': baseImponible,
      if (totalLineas != null) 'TOTAL_LINEAS': totalLineas,
      if (importePortes != null) 'IMPORTE_PORTES': importePortes,
      if (importeIva != null) 'IMPORTE_IVA': importeIva,
      if (total != null) 'TOTAL': total,
      if (pedidoVentaEstadoId != null) 'ESTADO_PEDIDO_ID': pedidoVentaEstadoId,
      if (oferta != null) 'OFERTA_SN': oferta,
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (iva != null) 'IVA': iva,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PedidoVentaTableCompanion copyWith(
      {Value<String>? empresaId,
      Value<String>? pedidoVentaId,
      Value<DateTime>? pedidoVentaDate,
      Value<String>? tipoVenta,
      Value<String>? clienteId,
      Value<String>? nombreCliente,
      Value<String?>? direccionId,
      Value<String?>? direccionEntrga1,
      Value<String?>? direccionEntrga2,
      Value<String?>? codigoPostal,
      Value<String?>? poblacion,
      Value<String?>? provincia,
      Value<String?>? paisId,
      Value<String>? divisaId,
      Value<double>? baseImponible,
      Value<double>? totalLineas,
      Value<double>? importePortes,
      Value<double>? importeIva,
      Value<double>? total,
      Value<int>? pedidoVentaEstadoId,
      Value<String>? oferta,
      Value<String?>? pedidoVentaAppId,
      Value<double>? iva,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PedidoVentaTableCompanion(
      empresaId: empresaId ?? this.empresaId,
      pedidoVentaId: pedidoVentaId ?? this.pedidoVentaId,
      pedidoVentaDate: pedidoVentaDate ?? this.pedidoVentaDate,
      tipoVenta: tipoVenta ?? this.tipoVenta,
      clienteId: clienteId ?? this.clienteId,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      direccionId: direccionId ?? this.direccionId,
      direccionEntrga1: direccionEntrga1 ?? this.direccionEntrga1,
      direccionEntrga2: direccionEntrga2 ?? this.direccionEntrga2,
      codigoPostal: codigoPostal ?? this.codigoPostal,
      poblacion: poblacion ?? this.poblacion,
      provincia: provincia ?? this.provincia,
      paisId: paisId ?? this.paisId,
      divisaId: divisaId ?? this.divisaId,
      baseImponible: baseImponible ?? this.baseImponible,
      totalLineas: totalLineas ?? this.totalLineas,
      importePortes: importePortes ?? this.importePortes,
      importeIva: importeIva ?? this.importeIva,
      total: total ?? this.total,
      pedidoVentaEstadoId: pedidoVentaEstadoId ?? this.pedidoVentaEstadoId,
      oferta: oferta ?? this.oferta,
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      iva: iva ?? this.iva,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (pedidoVentaId.present) {
      map['PEDIDO_ID'] = Variable<String>(pedidoVentaId.value);
    }
    if (pedidoVentaDate.present) {
      map['FECHA_PEDIDO'] = Variable<DateTime>(pedidoVentaDate.value);
    }
    if (tipoVenta.present) {
      map['TIPO_VENTA'] = Variable<String>(tipoVenta.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (nombreCliente.present) {
      map['NOMRE_CLIENTE'] = Variable<String>(nombreCliente.value);
    }
    if (direccionId.present) {
      map['DIRECCION_ID'] = Variable<String>(direccionId.value);
    }
    if (direccionEntrga1.present) {
      map['DIRECCION_ENVIO1'] = Variable<String>(direccionEntrga1.value);
    }
    if (direccionEntrga2.present) {
      map['DIRECCION_ENVIO2'] = Variable<String>(direccionEntrga2.value);
    }
    if (codigoPostal.present) {
      map['CODIGO_POSTAL'] = Variable<String>(codigoPostal.value);
    }
    if (poblacion.present) {
      map['POBLACION'] = Variable<String>(poblacion.value);
    }
    if (provincia.present) {
      map['PROVINCIA'] = Variable<String>(provincia.value);
    }
    if (paisId.present) {
      map['PAIS_ID'] = Variable<String>(paisId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (baseImponible.present) {
      map['BASE_IMPONIBLE'] = Variable<double>(baseImponible.value);
    }
    if (totalLineas.present) {
      map['TOTAL_LINEAS'] = Variable<double>(totalLineas.value);
    }
    if (importePortes.present) {
      map['IMPORTE_PORTES'] = Variable<double>(importePortes.value);
    }
    if (importeIva.present) {
      map['IMPORTE_IVA'] = Variable<double>(importeIva.value);
    }
    if (total.present) {
      map['TOTAL'] = Variable<double>(total.value);
    }
    if (pedidoVentaEstadoId.present) {
      map['ESTADO_PEDIDO_ID'] = Variable<int>(pedidoVentaEstadoId.value);
    }
    if (oferta.present) {
      map['OFERTA_SN'] = Variable<String>(oferta.value);
    }
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
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
    return (StringBuffer('PedidoVentaTableCompanion(')
          ..write('empresaId: $empresaId, ')
          ..write('pedidoVentaId: $pedidoVentaId, ')
          ..write('pedidoVentaDate: $pedidoVentaDate, ')
          ..write('tipoVenta: $tipoVenta, ')
          ..write('clienteId: $clienteId, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('direccionId: $direccionId, ')
          ..write('direccionEntrga1: $direccionEntrga1, ')
          ..write('direccionEntrga2: $direccionEntrga2, ')
          ..write('codigoPostal: $codigoPostal, ')
          ..write('poblacion: $poblacion, ')
          ..write('provincia: $provincia, ')
          ..write('paisId: $paisId, ')
          ..write('divisaId: $divisaId, ')
          ..write('baseImponible: $baseImponible, ')
          ..write('totalLineas: $totalLineas, ')
          ..write('importePortes: $importePortes, ')
          ..write('importeIva: $importeIva, ')
          ..write('total: $total, ')
          ..write('pedidoVentaEstadoId: $pedidoVentaEstadoId, ')
          ..write('oferta: $oferta, ')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('iva: $iva, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaTableTable extends PedidoVentaTable
    with TableInfo<$PedidoVentaTableTable, PedidoVentaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaIdMeta =
      const VerificationMeta('pedidoVentaId');
  @override
  late final GeneratedColumn<String> pedidoVentaId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaDateMeta =
      const VerificationMeta('pedidoVentaDate');
  @override
  late final GeneratedColumn<DateTime> pedidoVentaDate =
      GeneratedColumn<DateTime>('FECHA_PEDIDO', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _tipoVentaMeta = const VerificationMeta('tipoVenta');
  @override
  late final GeneratedColumn<String> tipoVenta = GeneratedColumn<String>(
      'TIPO_VENTA', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 1),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 6),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _nombreClienteMeta =
      const VerificationMeta('nombreCliente');
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
      'NOMRE_CLIENTE', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  final VerificationMeta _direccionIdMeta =
      const VerificationMeta('direccionId');
  @override
  late final GeneratedColumn<String> direccionId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _direccionEntrga1Meta =
      const VerificationMeta('direccionEntrga1');
  @override
  late final GeneratedColumn<String> direccionEntrga1 = GeneratedColumn<String>(
      'DIRECCION_ENVIO1', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _direccionEntrga2Meta =
      const VerificationMeta('direccionEntrga2');
  @override
  late final GeneratedColumn<String> direccionEntrga2 = GeneratedColumn<String>(
      'DIRECCION_ENVIO2', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 100),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _codigoPostalMeta =
      const VerificationMeta('codigoPostal');
  @override
  late final GeneratedColumn<String> codigoPostal = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 10),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _poblacionMeta = const VerificationMeta('poblacion');
  @override
  late final GeneratedColumn<String> poblacion = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 60),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _provinciaMeta = const VerificationMeta('provincia');
  @override
  late final GeneratedColumn<String> provincia = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: false);
  final VerificationMeta _paisIdMeta = const VerificationMeta('paisId');
  @override
  late final GeneratedColumn<String> paisId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 3),
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      additionalChecks: GeneratedColumn.checkTextLength(maxTextLength: 2),
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _baseImponibleMeta =
      const VerificationMeta('baseImponible');
  @override
  late final GeneratedColumn<double> baseImponible = GeneratedColumn<double>(
      'BASE_IMPONIBLE', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _totalLineasMeta =
      const VerificationMeta('totalLineas');
  @override
  late final GeneratedColumn<double> totalLineas = GeneratedColumn<double>(
      'TOTAL_LINEAS', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _importePortesMeta =
      const VerificationMeta('importePortes');
  @override
  late final GeneratedColumn<double> importePortes = GeneratedColumn<double>(
      'IMPORTE_PORTES', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _importeIvaMeta = const VerificationMeta('importeIva');
  @override
  late final GeneratedColumn<double> importeIva = GeneratedColumn<double>(
      'IMPORTE_IVA', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'TOTAL', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _pedidoVentaEstadoIdMeta =
      const VerificationMeta('pedidoVentaEstadoId');
  @override
  late final GeneratedColumn<int> pedidoVentaEstadoId = GeneratedColumn<int>(
      'ESTADO_PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PEDIDOS_ESTADOS (ESTADO_PEDIDO_ID)',
      defaultValue: const Constant(0));
  final VerificationMeta _ofertaMeta = const VerificationMeta('oferta');
  @override
  late final GeneratedColumn<String> oferta = GeneratedColumn<String>(
      'OFERTA_SN', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _pedidoVentaAppIdMeta =
      const VerificationMeta('pedidoVentaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaAppId = GeneratedColumn<String>(
      'PEDIDO_APP_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0.0));
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        empresaId,
        pedidoVentaId,
        pedidoVentaDate,
        tipoVenta,
        clienteId,
        nombreCliente,
        direccionId,
        direccionEntrga1,
        direccionEntrga2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        divisaId,
        baseImponible,
        totalLineas,
        importePortes,
        importeIva,
        total,
        pedidoVentaEstadoId,
        oferta,
        pedidoVentaAppId,
        iva,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS';
  @override
  String get actualTableName => 'PEDIDOS';
  @override
  VerificationContext validateIntegrity(Insertable<PedidoVentaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _pedidoVentaIdMeta,
          pedidoVentaId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _pedidoVentaIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaIdMeta);
    }
    if (data.containsKey('FECHA_PEDIDO')) {
      context.handle(
          _pedidoVentaDateMeta,
          pedidoVentaDate.isAcceptableOrUnknown(
              data['FECHA_PEDIDO']!, _pedidoVentaDateMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaDateMeta);
    }
    if (data.containsKey('TIPO_VENTA')) {
      context.handle(_tipoVentaMeta,
          tipoVenta.isAcceptableOrUnknown(data['TIPO_VENTA']!, _tipoVentaMeta));
    } else if (isInserting) {
      context.missing(_tipoVentaMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('NOMRE_CLIENTE')) {
      context.handle(
          _nombreClienteMeta,
          nombreCliente.isAcceptableOrUnknown(
              data['NOMRE_CLIENTE']!, _nombreClienteMeta));
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _direccionIdMeta,
          direccionId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _direccionIdMeta));
    }
    if (data.containsKey('DIRECCION_ENVIO1')) {
      context.handle(
          _direccionEntrga1Meta,
          direccionEntrga1.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO1']!, _direccionEntrga1Meta));
    }
    if (data.containsKey('DIRECCION_ENVIO2')) {
      context.handle(
          _direccionEntrga2Meta,
          direccionEntrga2.isAcceptableOrUnknown(
              data['DIRECCION_ENVIO2']!, _direccionEntrga2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(
          _codigoPostalMeta,
          codigoPostal.isAcceptableOrUnknown(
              data['CODIGO_POSTAL']!, _codigoPostalMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(_poblacionMeta,
          poblacion.isAcceptableOrUnknown(data['POBLACION']!, _poblacionMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_provinciaMeta,
          provincia.isAcceptableOrUnknown(data['PROVINCIA']!, _provinciaMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_paisIdMeta,
          paisId.isAcceptableOrUnknown(data['PAIS_ID']!, _paisIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('BASE_IMPONIBLE')) {
      context.handle(
          _baseImponibleMeta,
          baseImponible.isAcceptableOrUnknown(
              data['BASE_IMPONIBLE']!, _baseImponibleMeta));
    }
    if (data.containsKey('TOTAL_LINEAS')) {
      context.handle(
          _totalLineasMeta,
          totalLineas.isAcceptableOrUnknown(
              data['TOTAL_LINEAS']!, _totalLineasMeta));
    }
    if (data.containsKey('IMPORTE_PORTES')) {
      context.handle(
          _importePortesMeta,
          importePortes.isAcceptableOrUnknown(
              data['IMPORTE_PORTES']!, _importePortesMeta));
    }
    if (data.containsKey('IMPORTE_IVA')) {
      context.handle(
          _importeIvaMeta,
          importeIva.isAcceptableOrUnknown(
              data['IMPORTE_IVA']!, _importeIvaMeta));
    }
    if (data.containsKey('TOTAL')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['TOTAL']!, _totalMeta));
    }
    if (data.containsKey('ESTADO_PEDIDO_ID')) {
      context.handle(
          _pedidoVentaEstadoIdMeta,
          pedidoVentaEstadoId.isAcceptableOrUnknown(
              data['ESTADO_PEDIDO_ID']!, _pedidoVentaEstadoIdMeta));
    }
    if (data.containsKey('OFERTA_SN')) {
      context.handle(_ofertaMeta,
          oferta.isAcceptableOrUnknown(data['OFERTA_SN']!, _ofertaMeta));
    }
    if (data.containsKey('PEDIDO_APP_ID')) {
      context.handle(
          _pedidoVentaAppIdMeta,
          pedidoVentaAppId.isAcceptableOrUnknown(
              data['PEDIDO_APP_ID']!, _pedidoVentaAppIdMeta));
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
  Set<GeneratedColumn> get $primaryKey => {pedidoVentaId, empresaId};
  @override
  PedidoVentaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaDTO(
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      pedidoVentaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID'])!,
      pedidoVentaDate: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_PEDIDO'])!,
      tipoVenta: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TIPO_VENTA'])!,
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      direccionId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID']),
      nombreCliente: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMRE_CLIENTE'])!,
      direccionEntrga1: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_ENVIO1']),
      direccionEntrga2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_ENVIO2']),
      codigoPostal: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      poblacion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      provincia: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      paisId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      baseImponible: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}BASE_IMPONIBLE'])!,
      totalLineas: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TOTAL_LINEAS'])!,
      importePortes: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE_PORTES'])!,
      importeIva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE_IVA'])!,
      total: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TOTAL'])!,
      pedidoVentaEstadoId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ESTADO_PEDIDO_ID'])!,
      oferta: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}OFERTA_SN'])!,
      pedidoVentaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID']),
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PedidoVentaTableTable createAlias(String alias) {
    return $PedidoVentaTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaLineaTableCompanion
    extends UpdateCompanion<PedidoVentaLineaDTO> {
  final Value<String> empresaId;
  final Value<String> pedidoVentaId;
  final Value<String> pedidoVentaLineaId;
  final Value<String> articuloId;
  final Value<String> articuloDescription;
  final Value<int> cantidad;
  final Value<double> precioDivisa;
  final Value<int> tipoPrecio;
  final Value<double> descuento1;
  final Value<double> descuento2;
  final Value<double> descuento3;
  final Value<String?> pedidoLineaIdComponente;
  final Value<double?> importeLinea;
  final Value<int> cantidadServida;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PedidoVentaLineaTableCompanion({
    this.empresaId = const Value.absent(),
    this.pedidoVentaId = const Value.absent(),
    this.pedidoVentaLineaId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.articuloDescription = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.precioDivisa = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.descuento1 = const Value.absent(),
    this.descuento2 = const Value.absent(),
    this.descuento3 = const Value.absent(),
    this.pedidoLineaIdComponente = const Value.absent(),
    this.importeLinea = const Value.absent(),
    this.cantidadServida = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PedidoVentaLineaTableCompanion.insert({
    required String empresaId,
    required String pedidoVentaId,
    required String pedidoVentaLineaId,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required double precioDivisa,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    this.pedidoLineaIdComponente = const Value.absent(),
    this.importeLinea = const Value.absent(),
    required int cantidadServida,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : empresaId = Value(empresaId),
        pedidoVentaId = Value(pedidoVentaId),
        pedidoVentaLineaId = Value(pedidoVentaLineaId),
        articuloId = Value(articuloId),
        articuloDescription = Value(articuloDescription),
        cantidad = Value(cantidad),
        precioDivisa = Value(precioDivisa),
        tipoPrecio = Value(tipoPrecio),
        descuento1 = Value(descuento1),
        descuento2 = Value(descuento2),
        descuento3 = Value(descuento3),
        cantidadServida = Value(cantidadServida),
        lastUpdated = Value(lastUpdated);
  static Insertable<PedidoVentaLineaDTO> custom({
    Expression<String>? empresaId,
    Expression<String>? pedidoVentaId,
    Expression<String>? pedidoVentaLineaId,
    Expression<String>? articuloId,
    Expression<String>? articuloDescription,
    Expression<int>? cantidad,
    Expression<double>? precioDivisa,
    Expression<int>? tipoPrecio,
    Expression<double>? descuento1,
    Expression<double>? descuento2,
    Expression<double>? descuento3,
    Expression<String>? pedidoLineaIdComponente,
    Expression<double>? importeLinea,
    Expression<int>? cantidadServida,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (pedidoVentaId != null) 'PEDIDO_ID': pedidoVentaId,
      if (pedidoVentaLineaId != null) 'PEDIDO_LINEA_ID': pedidoVentaLineaId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (articuloDescription != null)
        'ARTICULO_DESCRIPCION': articuloDescription,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (precioDivisa != null) 'PRECIO_DIVISA': precioDivisa,
      if (tipoPrecio != null) 'TIPO_PRECIO': tipoPrecio,
      if (descuento1 != null) 'DESCUENTO1': descuento1,
      if (descuento2 != null) 'DESCUENTO2': descuento2,
      if (descuento3 != null) 'DESCUENTO3': descuento3,
      if (pedidoLineaIdComponente != null)
        'PEDIDO_LINEA_ID_COMPONENTE': pedidoLineaIdComponente,
      if (importeLinea != null) 'TOTAL_LINEA': importeLinea,
      if (cantidadServida != null) 'CANTIDAD_SERVIDA': cantidadServida,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PedidoVentaLineaTableCompanion copyWith(
      {Value<String>? empresaId,
      Value<String>? pedidoVentaId,
      Value<String>? pedidoVentaLineaId,
      Value<String>? articuloId,
      Value<String>? articuloDescription,
      Value<int>? cantidad,
      Value<double>? precioDivisa,
      Value<int>? tipoPrecio,
      Value<double>? descuento1,
      Value<double>? descuento2,
      Value<double>? descuento3,
      Value<String?>? pedidoLineaIdComponente,
      Value<double?>? importeLinea,
      Value<int>? cantidadServida,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PedidoVentaLineaTableCompanion(
      empresaId: empresaId ?? this.empresaId,
      pedidoVentaId: pedidoVentaId ?? this.pedidoVentaId,
      pedidoVentaLineaId: pedidoVentaLineaId ?? this.pedidoVentaLineaId,
      articuloId: articuloId ?? this.articuloId,
      articuloDescription: articuloDescription ?? this.articuloDescription,
      cantidad: cantidad ?? this.cantidad,
      precioDivisa: precioDivisa ?? this.precioDivisa,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      descuento1: descuento1 ?? this.descuento1,
      descuento2: descuento2 ?? this.descuento2,
      descuento3: descuento3 ?? this.descuento3,
      pedidoLineaIdComponente:
          pedidoLineaIdComponente ?? this.pedidoLineaIdComponente,
      importeLinea: importeLinea ?? this.importeLinea,
      cantidadServida: cantidadServida ?? this.cantidadServida,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (pedidoVentaId.present) {
      map['PEDIDO_ID'] = Variable<String>(pedidoVentaId.value);
    }
    if (pedidoVentaLineaId.present) {
      map['PEDIDO_LINEA_ID'] = Variable<String>(pedidoVentaLineaId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (articuloDescription.present) {
      map['ARTICULO_DESCRIPCION'] = Variable<String>(articuloDescription.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
    }
    if (precioDivisa.present) {
      map['PRECIO_DIVISA'] = Variable<double>(precioDivisa.value);
    }
    if (tipoPrecio.present) {
      map['TIPO_PRECIO'] = Variable<int>(tipoPrecio.value);
    }
    if (descuento1.present) {
      map['DESCUENTO1'] = Variable<double>(descuento1.value);
    }
    if (descuento2.present) {
      map['DESCUENTO2'] = Variable<double>(descuento2.value);
    }
    if (descuento3.present) {
      map['DESCUENTO3'] = Variable<double>(descuento3.value);
    }
    if (pedidoLineaIdComponente.present) {
      map['PEDIDO_LINEA_ID_COMPONENTE'] =
          Variable<String>(pedidoLineaIdComponente.value);
    }
    if (importeLinea.present) {
      map['TOTAL_LINEA'] = Variable<double>(importeLinea.value);
    }
    if (cantidadServida.present) {
      map['CANTIDAD_SERVIDA'] = Variable<int>(cantidadServida.value);
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
    return (StringBuffer('PedidoVentaLineaTableCompanion(')
          ..write('empresaId: $empresaId, ')
          ..write('pedidoVentaId: $pedidoVentaId, ')
          ..write('pedidoVentaLineaId: $pedidoVentaLineaId, ')
          ..write('articuloId: $articuloId, ')
          ..write('articuloDescription: $articuloDescription, ')
          ..write('cantidad: $cantidad, ')
          ..write('precioDivisa: $precioDivisa, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('descuento1: $descuento1, ')
          ..write('descuento2: $descuento2, ')
          ..write('descuento3: $descuento3, ')
          ..write('pedidoLineaIdComponente: $pedidoLineaIdComponente, ')
          ..write('importeLinea: $importeLinea, ')
          ..write('cantidadServida: $cantidadServida, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaLineaTableTable extends PedidoVentaLineaTable
    with TableInfo<$PedidoVentaLineaTableTable, PedidoVentaLineaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaLineaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaIdMeta =
      const VerificationMeta('pedidoVentaId');
  @override
  late final GeneratedColumn<String> pedidoVentaId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaLineaIdMeta =
      const VerificationMeta('pedidoVentaLineaId');
  @override
  late final GeneratedColumn<String> pedidoVentaLineaId =
      GeneratedColumn<String>('PEDIDO_LINEA_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloDescriptionMeta =
      const VerificationMeta('articuloDescription');
  @override
  late final GeneratedColumn<String> articuloDescription =
      GeneratedColumn<String>('ARTICULO_DESCRIPCION', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadMeta = const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _precioDivisaMeta =
      const VerificationMeta('precioDivisa');
  @override
  late final GeneratedColumn<double> precioDivisa = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _descuento1Meta = const VerificationMeta('descuento1');
  @override
  late final GeneratedColumn<double> descuento1 = GeneratedColumn<double>(
      'DESCUENTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento2Meta = const VerificationMeta('descuento2');
  @override
  late final GeneratedColumn<double> descuento2 = GeneratedColumn<double>(
      'DESCUENTO2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento3Meta = const VerificationMeta('descuento3');
  @override
  late final GeneratedColumn<double> descuento3 = GeneratedColumn<double>(
      'DESCUENTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _pedidoLineaIdComponenteMeta =
      const VerificationMeta('pedidoLineaIdComponente');
  @override
  late final GeneratedColumn<String> pedidoLineaIdComponente =
      GeneratedColumn<String>('PEDIDO_LINEA_ID_COMPONENTE', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _importeLineaMeta =
      const VerificationMeta('importeLinea');
  @override
  late final GeneratedColumn<double> importeLinea = GeneratedColumn<double>(
      'TOTAL_LINEA', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _cantidadServidaMeta =
      const VerificationMeta('cantidadServida');
  @override
  late final GeneratedColumn<int> cantidadServida = GeneratedColumn<int>(
      'CANTIDAD_SERVIDA', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        empresaId,
        pedidoVentaId,
        pedidoVentaLineaId,
        articuloId,
        articuloDescription,
        cantidad,
        precioDivisa,
        tipoPrecio,
        descuento1,
        descuento2,
        descuento3,
        pedidoLineaIdComponente,
        importeLinea,
        cantidadServida,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LINEAS';
  @override
  String get actualTableName => 'PEDIDOS_LINEAS';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaLineaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _pedidoVentaIdMeta,
          pedidoVentaId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _pedidoVentaIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaIdMeta);
    }
    if (data.containsKey('PEDIDO_LINEA_ID')) {
      context.handle(
          _pedidoVentaLineaIdMeta,
          pedidoVentaLineaId.isAcceptableOrUnknown(
              data['PEDIDO_LINEA_ID']!, _pedidoVentaLineaIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaLineaIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('ARTICULO_DESCRIPCION')) {
      context.handle(
          _articuloDescriptionMeta,
          articuloDescription.isAcceptableOrUnknown(
              data['ARTICULO_DESCRIPCION']!, _articuloDescriptionMeta));
    } else if (isInserting) {
      context.missing(_articuloDescriptionMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _precioDivisaMeta,
          precioDivisa.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _precioDivisaMeta));
    } else if (isInserting) {
      context.missing(_precioDivisaMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(
          _descuento1Meta,
          descuento1.isAcceptableOrUnknown(
              data['DESCUENTO1']!, _descuento1Meta));
    } else if (isInserting) {
      context.missing(_descuento1Meta);
    }
    if (data.containsKey('DESCUENTO2')) {
      context.handle(
          _descuento2Meta,
          descuento2.isAcceptableOrUnknown(
              data['DESCUENTO2']!, _descuento2Meta));
    } else if (isInserting) {
      context.missing(_descuento2Meta);
    }
    if (data.containsKey('DESCUENTO3')) {
      context.handle(
          _descuento3Meta,
          descuento3.isAcceptableOrUnknown(
              data['DESCUENTO3']!, _descuento3Meta));
    } else if (isInserting) {
      context.missing(_descuento3Meta);
    }
    if (data.containsKey('PEDIDO_LINEA_ID_COMPONENTE')) {
      context.handle(
          _pedidoLineaIdComponenteMeta,
          pedidoLineaIdComponente.isAcceptableOrUnknown(
              data['PEDIDO_LINEA_ID_COMPONENTE']!,
              _pedidoLineaIdComponenteMeta));
    }
    if (data.containsKey('TOTAL_LINEA')) {
      context.handle(
          _importeLineaMeta,
          importeLinea.isAcceptableOrUnknown(
              data['TOTAL_LINEA']!, _importeLineaMeta));
    }
    if (data.containsKey('CANTIDAD_SERVIDA')) {
      context.handle(
          _cantidadServidaMeta,
          cantidadServida.isAcceptableOrUnknown(
              data['CANTIDAD_SERVIDA']!, _cantidadServidaMeta));
    } else if (isInserting) {
      context.missing(_cantidadServidaMeta);
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
      {pedidoVentaId, empresaId, pedidoVentaLineaId};
  @override
  PedidoVentaLineaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaLineaDTO(
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      pedidoVentaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID'])!,
      pedidoVentaLineaId: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PEDIDO_LINEA_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articuloDescription: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}ARTICULO_DESCRIPCION'])!,
      cantidad: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      precioDivisa: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TIPO_PRECIO'])!,
      descuento1: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO1'])!,
      descuento2: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO2'])!,
      descuento3: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO3'])!,
      pedidoLineaIdComponente: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}PEDIDO_LINEA_ID_COMPONENTE']),
      importeLinea: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}TOTAL_LINEA']),
      cantidadServida: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_SERVIDA'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PedidoVentaLineaTableTable createAlias(String alias) {
    return $PedidoVentaLineaTableTable(attachedDatabase, alias);
  }
}

class PlazoDeCobroTableCompanion extends UpdateCompanion<PlazoDeCobroDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PlazoDeCobroTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PlazoDeCobroTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<PlazoDeCobroDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'PLAZO_COBRO_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PlazoDeCobroTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PlazoDeCobroTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['PLAZO_COBRO_ID'] = Variable<String>(id.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('PlazoDeCobroTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PlazoDeCobroTableTable extends PlazoDeCobroTable
    with TableInfo<$PlazoDeCobroTableTable, PlazoDeCobroDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PlazoDeCobroTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'PLAZO_COBRO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PLAZOS_COBRO';
  @override
  String get actualTableName => 'PLAZOS_COBRO';
  @override
  VerificationContext validateIntegrity(Insertable<PlazoDeCobroDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PLAZO_COBRO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['PLAZO_COBRO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  PlazoDeCobroDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PlazoDeCobroDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PLAZO_COBRO_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PlazoDeCobroTableTable createAlias(String alias) {
    return $PlazoDeCobroTableTable(attachedDatabase, alias);
  }
}

class MetodoDeCobroTableCompanion extends UpdateCompanion<MetodoDeCobroDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const MetodoDeCobroTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  MetodoDeCobroTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<MetodoDeCobroDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'METODO_COBRO_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  MetodoDeCobroTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return MetodoDeCobroTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
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
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('MetodoDeCobroTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $MetodoDeCobroTableTable extends MetodoDeCobroTable
    with TableInfo<$MetodoDeCobroTableTable, MetodoDeCobroDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MetodoDeCobroTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'METODO_COBRO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'METODOS_COBRO';
  @override
  String get actualTableName => 'METODOS_COBRO';
  @override
  VerificationContext validateIntegrity(Insertable<MetodoDeCobroDTO> instance,
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
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  MetodoDeCobroDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MetodoDeCobroDTO(
      id: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $MetodoDeCobroTableTable createAlias(String alias) {
    return $MetodoDeCobroTableTable(attachedDatabase, alias);
  }
}

class ClienteTableCompanion extends UpdateCompanion<ClienteDTO> {
  final Value<String> id;
  final Value<String> nombreCliente;
  final Value<String?> nif;
  final Value<String> nombreFiscal;
  final Value<String?> direccionFiscal1;
  final Value<String?> direccionFiscal2;
  final Value<String?> codigoPostalFiscal;
  final Value<String?> poblacionFiscal;
  final Value<String?> provinciaFiscal;
  final Value<String?> paisFiscalId;
  final Value<double> latitudFiscal;
  final Value<double> longitudFiscal;
  final Value<String> empresaId;
  final Value<double> iva;
  final Value<double> ventasAnyoActual;
  final Value<double> ventasAnyoAnterior;
  final Value<double> ventasHaceDosAnyos;
  final Value<double> margenAnyoActual;
  final Value<double> margenAnyoAnterior;
  final Value<double> margenHaceDosAnyos;
  final Value<double> porcentajeAbonos;
  final Value<double> porcentajeGarantias;
  final Value<String?> centralCompras;
  final Value<String?> urlWeb;
  final Value<String?> divisaId;
  final Value<String?> tarifaId;
  final Value<String?> tarifaDescripcion;
  final Value<String?> descuentoGeneralId;
  final Value<String?> descripcionDescuentoGeneral;
  final Value<String> tipoCalculoPrecio;
  final Value<String?> plazoDeCobroId;
  final Value<String?> metodoDeCobroId;
  final Value<double> descuentoProntoPago;
  final Value<double> riesgoConcedidoInterno;
  final Value<DateTime?> riesgoConcedidoInternoDate;
  final Value<double> riesgoConcedidoCoafe;
  final Value<DateTime?> riesgoConcedidoCoafeFecha;
  final Value<double?> riesgoConcedido;
  final Value<double?> riesgoPendienteCobroVencido;
  final Value<double?> riesgoPendienteCobroNoVencido;
  final Value<double?> riesgoPendienteServir;
  final Value<double?> riesgoPendienteFacturar;
  final Value<String?> obvservacionesInternas;
  final Value<String?> clientePotencial;
  final Value<String?> clienteEstadoPotencialId;
  final Value<String?> clienteTipoPotencialId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteTableCompanion({
    this.id = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.nif = const Value.absent(),
    this.nombreFiscal = const Value.absent(),
    this.direccionFiscal1 = const Value.absent(),
    this.direccionFiscal2 = const Value.absent(),
    this.codigoPostalFiscal = const Value.absent(),
    this.poblacionFiscal = const Value.absent(),
    this.provinciaFiscal = const Value.absent(),
    this.paisFiscalId = const Value.absent(),
    this.latitudFiscal = const Value.absent(),
    this.longitudFiscal = const Value.absent(),
    this.empresaId = const Value.absent(),
    this.iva = const Value.absent(),
    this.ventasAnyoActual = const Value.absent(),
    this.ventasAnyoAnterior = const Value.absent(),
    this.ventasHaceDosAnyos = const Value.absent(),
    this.margenAnyoActual = const Value.absent(),
    this.margenAnyoAnterior = const Value.absent(),
    this.margenHaceDosAnyos = const Value.absent(),
    this.porcentajeAbonos = const Value.absent(),
    this.porcentajeGarantias = const Value.absent(),
    this.centralCompras = const Value.absent(),
    this.urlWeb = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.tarifaId = const Value.absent(),
    this.tarifaDescripcion = const Value.absent(),
    this.descuentoGeneralId = const Value.absent(),
    this.descripcionDescuentoGeneral = const Value.absent(),
    this.tipoCalculoPrecio = const Value.absent(),
    this.plazoDeCobroId = const Value.absent(),
    this.metodoDeCobroId = const Value.absent(),
    this.descuentoProntoPago = const Value.absent(),
    this.riesgoConcedidoInterno = const Value.absent(),
    this.riesgoConcedidoInternoDate = const Value.absent(),
    this.riesgoConcedidoCoafe = const Value.absent(),
    this.riesgoConcedidoCoafeFecha = const Value.absent(),
    this.riesgoConcedido = const Value.absent(),
    this.riesgoPendienteCobroVencido = const Value.absent(),
    this.riesgoPendienteCobroNoVencido = const Value.absent(),
    this.riesgoPendienteServir = const Value.absent(),
    this.riesgoPendienteFacturar = const Value.absent(),
    this.obvservacionesInternas = const Value.absent(),
    this.clientePotencial = const Value.absent(),
    this.clienteEstadoPotencialId = const Value.absent(),
    this.clienteTipoPotencialId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteTableCompanion.insert({
    required String id,
    required String nombreCliente,
    this.nif = const Value.absent(),
    required String nombreFiscal,
    this.direccionFiscal1 = const Value.absent(),
    this.direccionFiscal2 = const Value.absent(),
    this.codigoPostalFiscal = const Value.absent(),
    this.poblacionFiscal = const Value.absent(),
    this.provinciaFiscal = const Value.absent(),
    this.paisFiscalId = const Value.absent(),
    required double latitudFiscal,
    required double longitudFiscal,
    required String empresaId,
    required double iva,
    required double ventasAnyoActual,
    required double ventasAnyoAnterior,
    required double ventasHaceDosAnyos,
    required double margenAnyoActual,
    required double margenAnyoAnterior,
    required double margenHaceDosAnyos,
    required double porcentajeAbonos,
    required double porcentajeGarantias,
    this.centralCompras = const Value.absent(),
    this.urlWeb = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.tarifaId = const Value.absent(),
    this.tarifaDescripcion = const Value.absent(),
    this.descuentoGeneralId = const Value.absent(),
    this.descripcionDescuentoGeneral = const Value.absent(),
    required String tipoCalculoPrecio,
    this.plazoDeCobroId = const Value.absent(),
    this.metodoDeCobroId = const Value.absent(),
    required double descuentoProntoPago,
    required double riesgoConcedidoInterno,
    this.riesgoConcedidoInternoDate = const Value.absent(),
    required double riesgoConcedidoCoafe,
    this.riesgoConcedidoCoafeFecha = const Value.absent(),
    this.riesgoConcedido = const Value.absent(),
    this.riesgoPendienteCobroVencido = const Value.absent(),
    this.riesgoPendienteCobroNoVencido = const Value.absent(),
    this.riesgoPendienteServir = const Value.absent(),
    this.riesgoPendienteFacturar = const Value.absent(),
    this.obvservacionesInternas = const Value.absent(),
    this.clientePotencial = const Value.absent(),
    this.clienteEstadoPotencialId = const Value.absent(),
    this.clienteTipoPotencialId = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        nombreCliente = Value(nombreCliente),
        nombreFiscal = Value(nombreFiscal),
        latitudFiscal = Value(latitudFiscal),
        longitudFiscal = Value(longitudFiscal),
        empresaId = Value(empresaId),
        iva = Value(iva),
        ventasAnyoActual = Value(ventasAnyoActual),
        ventasAnyoAnterior = Value(ventasAnyoAnterior),
        ventasHaceDosAnyos = Value(ventasHaceDosAnyos),
        margenAnyoActual = Value(margenAnyoActual),
        margenAnyoAnterior = Value(margenAnyoAnterior),
        margenHaceDosAnyos = Value(margenHaceDosAnyos),
        porcentajeAbonos = Value(porcentajeAbonos),
        porcentajeGarantias = Value(porcentajeGarantias),
        tipoCalculoPrecio = Value(tipoCalculoPrecio),
        descuentoProntoPago = Value(descuentoProntoPago),
        riesgoConcedidoInterno = Value(riesgoConcedidoInterno),
        riesgoConcedidoCoafe = Value(riesgoConcedidoCoafe),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteDTO> custom({
    Expression<String>? id,
    Expression<String>? nombreCliente,
    Expression<String>? nif,
    Expression<String>? nombreFiscal,
    Expression<String>? direccionFiscal1,
    Expression<String>? direccionFiscal2,
    Expression<String>? codigoPostalFiscal,
    Expression<String>? poblacionFiscal,
    Expression<String>? provinciaFiscal,
    Expression<String>? paisFiscalId,
    Expression<double>? latitudFiscal,
    Expression<double>? longitudFiscal,
    Expression<String>? empresaId,
    Expression<double>? iva,
    Expression<double>? ventasAnyoActual,
    Expression<double>? ventasAnyoAnterior,
    Expression<double>? ventasHaceDosAnyos,
    Expression<double>? margenAnyoActual,
    Expression<double>? margenAnyoAnterior,
    Expression<double>? margenHaceDosAnyos,
    Expression<double>? porcentajeAbonos,
    Expression<double>? porcentajeGarantias,
    Expression<String>? centralCompras,
    Expression<String>? urlWeb,
    Expression<String>? divisaId,
    Expression<String>? tarifaId,
    Expression<String>? tarifaDescripcion,
    Expression<String>? descuentoGeneralId,
    Expression<String>? descripcionDescuentoGeneral,
    Expression<String>? tipoCalculoPrecio,
    Expression<String>? plazoDeCobroId,
    Expression<String>? metodoDeCobroId,
    Expression<double>? descuentoProntoPago,
    Expression<double>? riesgoConcedidoInterno,
    Expression<DateTime>? riesgoConcedidoInternoDate,
    Expression<double>? riesgoConcedidoCoafe,
    Expression<DateTime>? riesgoConcedidoCoafeFecha,
    Expression<double>? riesgoConcedido,
    Expression<double>? riesgoPendienteCobroVencido,
    Expression<double>? riesgoPendienteCobroNoVencido,
    Expression<double>? riesgoPendienteServir,
    Expression<double>? riesgoPendienteFacturar,
    Expression<String>? obvservacionesInternas,
    Expression<String>? clientePotencial,
    Expression<String>? clienteEstadoPotencialId,
    Expression<String>? clienteTipoPotencialId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'CLIENTE_ID': id,
      if (nombreCliente != null) 'NOMBRE': nombreCliente,
      if (nif != null) 'NIF': nif,
      if (nombreFiscal != null) 'NOMBRE_FISCAL': nombreFiscal,
      if (direccionFiscal1 != null) 'DIRECCION_FISCAL1': direccionFiscal1,
      if (direccionFiscal2 != null) 'DIRECCION_FISCAL2': direccionFiscal2,
      if (codigoPostalFiscal != null)
        'CODIGO_POSTAL_FISCAL': codigoPostalFiscal,
      if (poblacionFiscal != null) 'POBLACION_FISCAL': poblacionFiscal,
      if (provinciaFiscal != null) 'PROVINCIA_FISCAL': provinciaFiscal,
      if (paisFiscalId != null) 'PAIS_ID_FISCAL': paisFiscalId,
      if (latitudFiscal != null) 'LATITUD_FISCAL': latitudFiscal,
      if (longitudFiscal != null) 'LONGITUD_FISCAL': longitudFiscal,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (iva != null) 'IVA': iva,
      if (ventasAnyoActual != null) 'VENTAS_ANYO_ACTUAL': ventasAnyoActual,
      if (ventasAnyoAnterior != null)
        'VENTAS_ANYO_ANTERIOR': ventasAnyoAnterior,
      if (ventasHaceDosAnyos != null)
        'VENTAS_HACE_DOS_ANYOS': ventasHaceDosAnyos,
      if (margenAnyoActual != null) 'MARGEN_ANYO_ACTUAL': margenAnyoActual,
      if (margenAnyoAnterior != null)
        'MARGEN_ANYO_ANTERIOR': margenAnyoAnterior,
      if (margenHaceDosAnyos != null)
        'MARGEN_HACE_DOS_ANYOS': margenHaceDosAnyos,
      if (porcentajeAbonos != null) 'PORCENTAJE_ABONOS': porcentajeAbonos,
      if (porcentajeGarantias != null)
        'PORCENTAJE_GARANTIAS': porcentajeGarantias,
      if (centralCompras != null) 'CENTRAL_COMPRAS_NOMBRE': centralCompras,
      if (urlWeb != null) 'URL_WEB': urlWeb,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (tarifaId != null) 'TARIFA_ID': tarifaId,
      if (tarifaDescripcion != null) 'TARIFA_DESCRIPCION': tarifaDescripcion,
      if (descuentoGeneralId != null)
        'DESCUENTO_GENERAL_ID': descuentoGeneralId,
      if (descripcionDescuentoGeneral != null)
        'DESCUENTO_GENERAL_DESCRIPCION': descripcionDescuentoGeneral,
      if (tipoCalculoPrecio != null) 'TIPO_CALCULO_PRECIO': tipoCalculoPrecio,
      if (plazoDeCobroId != null) 'PLAZO_COBRO_ID': plazoDeCobroId,
      if (metodoDeCobroId != null) 'METODO_COBRO_ID': metodoDeCobroId,
      if (descuentoProntoPago != null)
        'DESCUENTO_PRONTO_PAGO': descuentoProntoPago,
      if (riesgoConcedidoInterno != null)
        'RIESGO_CONCEDIDO_INTERNO': riesgoConcedidoInterno,
      if (riesgoConcedidoInternoDate != null)
        'RIESGO_CONCEDIDO_INTERNO_FECHA': riesgoConcedidoInternoDate,
      if (riesgoConcedidoCoafe != null)
        'RIESGO_CONCEDIDO_COFACE': riesgoConcedidoCoafe,
      if (riesgoConcedidoCoafeFecha != null)
        'RIESGO_CONCEDIDO_COFACE_FECHA': riesgoConcedidoCoafeFecha,
      if (riesgoConcedido != null) 'RIESGO_CONCEDIDO': riesgoConcedido,
      if (riesgoPendienteCobroVencido != null)
        'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE': riesgoPendienteCobroVencido,
      if (riesgoPendienteCobroNoVencido != null)
        'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE': riesgoPendienteCobroNoVencido,
      if (riesgoPendienteServir != null)
        'RIESGO_PDTE_SERVIR_CLIENTE': riesgoPendienteServir,
      if (riesgoPendienteFacturar != null)
        'RIESGO_PDTE_FACTURAR_CLIENTE': riesgoPendienteFacturar,
      if (obvservacionesInternas != null)
        'OBSERVACIONES_INTERNAS': obvservacionesInternas,
      if (clientePotencial != null) 'CLIENTE_POTENCIAL': clientePotencial,
      if (clienteEstadoPotencialId != null)
        'ESTADO_POTENCIAL_ID': clienteEstadoPotencialId,
      if (clienteTipoPotencialId != null)
        'TIPO_POTENCIAL_ID': clienteTipoPotencialId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? nombreCliente,
      Value<String?>? nif,
      Value<String>? nombreFiscal,
      Value<String?>? direccionFiscal1,
      Value<String?>? direccionFiscal2,
      Value<String?>? codigoPostalFiscal,
      Value<String?>? poblacionFiscal,
      Value<String?>? provinciaFiscal,
      Value<String?>? paisFiscalId,
      Value<double>? latitudFiscal,
      Value<double>? longitudFiscal,
      Value<String>? empresaId,
      Value<double>? iva,
      Value<double>? ventasAnyoActual,
      Value<double>? ventasAnyoAnterior,
      Value<double>? ventasHaceDosAnyos,
      Value<double>? margenAnyoActual,
      Value<double>? margenAnyoAnterior,
      Value<double>? margenHaceDosAnyos,
      Value<double>? porcentajeAbonos,
      Value<double>? porcentajeGarantias,
      Value<String?>? centralCompras,
      Value<String?>? urlWeb,
      Value<String?>? divisaId,
      Value<String?>? tarifaId,
      Value<String?>? tarifaDescripcion,
      Value<String?>? descuentoGeneralId,
      Value<String?>? descripcionDescuentoGeneral,
      Value<String>? tipoCalculoPrecio,
      Value<String?>? plazoDeCobroId,
      Value<String?>? metodoDeCobroId,
      Value<double>? descuentoProntoPago,
      Value<double>? riesgoConcedidoInterno,
      Value<DateTime?>? riesgoConcedidoInternoDate,
      Value<double>? riesgoConcedidoCoafe,
      Value<DateTime?>? riesgoConcedidoCoafeFecha,
      Value<double?>? riesgoConcedido,
      Value<double?>? riesgoPendienteCobroVencido,
      Value<double?>? riesgoPendienteCobroNoVencido,
      Value<double?>? riesgoPendienteServir,
      Value<double?>? riesgoPendienteFacturar,
      Value<String?>? obvservacionesInternas,
      Value<String?>? clientePotencial,
      Value<String?>? clienteEstadoPotencialId,
      Value<String?>? clienteTipoPotencialId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteTableCompanion(
      id: id ?? this.id,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      nif: nif ?? this.nif,
      nombreFiscal: nombreFiscal ?? this.nombreFiscal,
      direccionFiscal1: direccionFiscal1 ?? this.direccionFiscal1,
      direccionFiscal2: direccionFiscal2 ?? this.direccionFiscal2,
      codigoPostalFiscal: codigoPostalFiscal ?? this.codigoPostalFiscal,
      poblacionFiscal: poblacionFiscal ?? this.poblacionFiscal,
      provinciaFiscal: provinciaFiscal ?? this.provinciaFiscal,
      paisFiscalId: paisFiscalId ?? this.paisFiscalId,
      latitudFiscal: latitudFiscal ?? this.latitudFiscal,
      longitudFiscal: longitudFiscal ?? this.longitudFiscal,
      empresaId: empresaId ?? this.empresaId,
      iva: iva ?? this.iva,
      ventasAnyoActual: ventasAnyoActual ?? this.ventasAnyoActual,
      ventasAnyoAnterior: ventasAnyoAnterior ?? this.ventasAnyoAnterior,
      ventasHaceDosAnyos: ventasHaceDosAnyos ?? this.ventasHaceDosAnyos,
      margenAnyoActual: margenAnyoActual ?? this.margenAnyoActual,
      margenAnyoAnterior: margenAnyoAnterior ?? this.margenAnyoAnterior,
      margenHaceDosAnyos: margenHaceDosAnyos ?? this.margenHaceDosAnyos,
      porcentajeAbonos: porcentajeAbonos ?? this.porcentajeAbonos,
      porcentajeGarantias: porcentajeGarantias ?? this.porcentajeGarantias,
      centralCompras: centralCompras ?? this.centralCompras,
      urlWeb: urlWeb ?? this.urlWeb,
      divisaId: divisaId ?? this.divisaId,
      tarifaId: tarifaId ?? this.tarifaId,
      tarifaDescripcion: tarifaDescripcion ?? this.tarifaDescripcion,
      descuentoGeneralId: descuentoGeneralId ?? this.descuentoGeneralId,
      descripcionDescuentoGeneral:
          descripcionDescuentoGeneral ?? this.descripcionDescuentoGeneral,
      tipoCalculoPrecio: tipoCalculoPrecio ?? this.tipoCalculoPrecio,
      plazoDeCobroId: plazoDeCobroId ?? this.plazoDeCobroId,
      metodoDeCobroId: metodoDeCobroId ?? this.metodoDeCobroId,
      descuentoProntoPago: descuentoProntoPago ?? this.descuentoProntoPago,
      riesgoConcedidoInterno:
          riesgoConcedidoInterno ?? this.riesgoConcedidoInterno,
      riesgoConcedidoInternoDate:
          riesgoConcedidoInternoDate ?? this.riesgoConcedidoInternoDate,
      riesgoConcedidoCoafe: riesgoConcedidoCoafe ?? this.riesgoConcedidoCoafe,
      riesgoConcedidoCoafeFecha:
          riesgoConcedidoCoafeFecha ?? this.riesgoConcedidoCoafeFecha,
      riesgoConcedido: riesgoConcedido ?? this.riesgoConcedido,
      riesgoPendienteCobroVencido:
          riesgoPendienteCobroVencido ?? this.riesgoPendienteCobroVencido,
      riesgoPendienteCobroNoVencido:
          riesgoPendienteCobroNoVencido ?? this.riesgoPendienteCobroNoVencido,
      riesgoPendienteServir:
          riesgoPendienteServir ?? this.riesgoPendienteServir,
      riesgoPendienteFacturar:
          riesgoPendienteFacturar ?? this.riesgoPendienteFacturar,
      obvservacionesInternas:
          obvservacionesInternas ?? this.obvservacionesInternas,
      clientePotencial: clientePotencial ?? this.clientePotencial,
      clienteEstadoPotencialId:
          clienteEstadoPotencialId ?? this.clienteEstadoPotencialId,
      clienteTipoPotencialId:
          clienteTipoPotencialId ?? this.clienteTipoPotencialId,
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
    if (nombreCliente.present) {
      map['NOMBRE'] = Variable<String>(nombreCliente.value);
    }
    if (nif.present) {
      map['NIF'] = Variable<String>(nif.value);
    }
    if (nombreFiscal.present) {
      map['NOMBRE_FISCAL'] = Variable<String>(nombreFiscal.value);
    }
    if (direccionFiscal1.present) {
      map['DIRECCION_FISCAL1'] = Variable<String>(direccionFiscal1.value);
    }
    if (direccionFiscal2.present) {
      map['DIRECCION_FISCAL2'] = Variable<String>(direccionFiscal2.value);
    }
    if (codigoPostalFiscal.present) {
      map['CODIGO_POSTAL_FISCAL'] = Variable<String>(codigoPostalFiscal.value);
    }
    if (poblacionFiscal.present) {
      map['POBLACION_FISCAL'] = Variable<String>(poblacionFiscal.value);
    }
    if (provinciaFiscal.present) {
      map['PROVINCIA_FISCAL'] = Variable<String>(provinciaFiscal.value);
    }
    if (paisFiscalId.present) {
      map['PAIS_ID_FISCAL'] = Variable<String>(paisFiscalId.value);
    }
    if (latitudFiscal.present) {
      map['LATITUD_FISCAL'] = Variable<double>(latitudFiscal.value);
    }
    if (longitudFiscal.present) {
      map['LONGITUD_FISCAL'] = Variable<double>(longitudFiscal.value);
    }
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (ventasAnyoActual.present) {
      map['VENTAS_ANYO_ACTUAL'] = Variable<double>(ventasAnyoActual.value);
    }
    if (ventasAnyoAnterior.present) {
      map['VENTAS_ANYO_ANTERIOR'] = Variable<double>(ventasAnyoAnterior.value);
    }
    if (ventasHaceDosAnyos.present) {
      map['VENTAS_HACE_DOS_ANYOS'] = Variable<double>(ventasHaceDosAnyos.value);
    }
    if (margenAnyoActual.present) {
      map['MARGEN_ANYO_ACTUAL'] = Variable<double>(margenAnyoActual.value);
    }
    if (margenAnyoAnterior.present) {
      map['MARGEN_ANYO_ANTERIOR'] = Variable<double>(margenAnyoAnterior.value);
    }
    if (margenHaceDosAnyos.present) {
      map['MARGEN_HACE_DOS_ANYOS'] = Variable<double>(margenHaceDosAnyos.value);
    }
    if (porcentajeAbonos.present) {
      map['PORCENTAJE_ABONOS'] = Variable<double>(porcentajeAbonos.value);
    }
    if (porcentajeGarantias.present) {
      map['PORCENTAJE_GARANTIAS'] = Variable<double>(porcentajeGarantias.value);
    }
    if (centralCompras.present) {
      map['CENTRAL_COMPRAS_NOMBRE'] = Variable<String>(centralCompras.value);
    }
    if (urlWeb.present) {
      map['URL_WEB'] = Variable<String>(urlWeb.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (tarifaId.present) {
      map['TARIFA_ID'] = Variable<String>(tarifaId.value);
    }
    if (tarifaDescripcion.present) {
      map['TARIFA_DESCRIPCION'] = Variable<String>(tarifaDescripcion.value);
    }
    if (descuentoGeneralId.present) {
      map['DESCUENTO_GENERAL_ID'] = Variable<String>(descuentoGeneralId.value);
    }
    if (descripcionDescuentoGeneral.present) {
      map['DESCUENTO_GENERAL_DESCRIPCION'] =
          Variable<String>(descripcionDescuentoGeneral.value);
    }
    if (tipoCalculoPrecio.present) {
      map['TIPO_CALCULO_PRECIO'] = Variable<String>(tipoCalculoPrecio.value);
    }
    if (plazoDeCobroId.present) {
      map['PLAZO_COBRO_ID'] = Variable<String>(plazoDeCobroId.value);
    }
    if (metodoDeCobroId.present) {
      map['METODO_COBRO_ID'] = Variable<String>(metodoDeCobroId.value);
    }
    if (descuentoProntoPago.present) {
      map['DESCUENTO_PRONTO_PAGO'] =
          Variable<double>(descuentoProntoPago.value);
    }
    if (riesgoConcedidoInterno.present) {
      map['RIESGO_CONCEDIDO_INTERNO'] =
          Variable<double>(riesgoConcedidoInterno.value);
    }
    if (riesgoConcedidoInternoDate.present) {
      map['RIESGO_CONCEDIDO_INTERNO_FECHA'] =
          Variable<DateTime>(riesgoConcedidoInternoDate.value);
    }
    if (riesgoConcedidoCoafe.present) {
      map['RIESGO_CONCEDIDO_COFACE'] =
          Variable<double>(riesgoConcedidoCoafe.value);
    }
    if (riesgoConcedidoCoafeFecha.present) {
      map['RIESGO_CONCEDIDO_COFACE_FECHA'] =
          Variable<DateTime>(riesgoConcedidoCoafeFecha.value);
    }
    if (riesgoConcedido.present) {
      map['RIESGO_CONCEDIDO'] = Variable<double>(riesgoConcedido.value);
    }
    if (riesgoPendienteCobroVencido.present) {
      map['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE'] =
          Variable<double>(riesgoPendienteCobroVencido.value);
    }
    if (riesgoPendienteCobroNoVencido.present) {
      map['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE'] =
          Variable<double>(riesgoPendienteCobroNoVencido.value);
    }
    if (riesgoPendienteServir.present) {
      map['RIESGO_PDTE_SERVIR_CLIENTE'] =
          Variable<double>(riesgoPendienteServir.value);
    }
    if (riesgoPendienteFacturar.present) {
      map['RIESGO_PDTE_FACTURAR_CLIENTE'] =
          Variable<double>(riesgoPendienteFacturar.value);
    }
    if (obvservacionesInternas.present) {
      map['OBSERVACIONES_INTERNAS'] =
          Variable<String>(obvservacionesInternas.value);
    }
    if (clientePotencial.present) {
      map['CLIENTE_POTENCIAL'] = Variable<String>(clientePotencial.value);
    }
    if (clienteEstadoPotencialId.present) {
      map['ESTADO_POTENCIAL_ID'] =
          Variable<String>(clienteEstadoPotencialId.value);
    }
    if (clienteTipoPotencialId.present) {
      map['TIPO_POTENCIAL_ID'] = Variable<String>(clienteTipoPotencialId.value);
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
    return (StringBuffer('ClienteTableCompanion(')
          ..write('id: $id, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('nif: $nif, ')
          ..write('nombreFiscal: $nombreFiscal, ')
          ..write('direccionFiscal1: $direccionFiscal1, ')
          ..write('direccionFiscal2: $direccionFiscal2, ')
          ..write('codigoPostalFiscal: $codigoPostalFiscal, ')
          ..write('poblacionFiscal: $poblacionFiscal, ')
          ..write('provinciaFiscal: $provinciaFiscal, ')
          ..write('paisFiscalId: $paisFiscalId, ')
          ..write('latitudFiscal: $latitudFiscal, ')
          ..write('longitudFiscal: $longitudFiscal, ')
          ..write('empresaId: $empresaId, ')
          ..write('iva: $iva, ')
          ..write('ventasAnyoActual: $ventasAnyoActual, ')
          ..write('ventasAnyoAnterior: $ventasAnyoAnterior, ')
          ..write('ventasHaceDosAnyos: $ventasHaceDosAnyos, ')
          ..write('margenAnyoActual: $margenAnyoActual, ')
          ..write('margenAnyoAnterior: $margenAnyoAnterior, ')
          ..write('margenHaceDosAnyos: $margenHaceDosAnyos, ')
          ..write('porcentajeAbonos: $porcentajeAbonos, ')
          ..write('porcentajeGarantias: $porcentajeGarantias, ')
          ..write('centralCompras: $centralCompras, ')
          ..write('urlWeb: $urlWeb, ')
          ..write('divisaId: $divisaId, ')
          ..write('tarifaId: $tarifaId, ')
          ..write('tarifaDescripcion: $tarifaDescripcion, ')
          ..write('descuentoGeneralId: $descuentoGeneralId, ')
          ..write('descripcionDescuentoGeneral: $descripcionDescuentoGeneral, ')
          ..write('tipoCalculoPrecio: $tipoCalculoPrecio, ')
          ..write('plazoDeCobroId: $plazoDeCobroId, ')
          ..write('metodoDeCobroId: $metodoDeCobroId, ')
          ..write('descuentoProntoPago: $descuentoProntoPago, ')
          ..write('riesgoConcedidoInterno: $riesgoConcedidoInterno, ')
          ..write('riesgoConcedidoInternoDate: $riesgoConcedidoInternoDate, ')
          ..write('riesgoConcedidoCoafe: $riesgoConcedidoCoafe, ')
          ..write('riesgoConcedidoCoafeFecha: $riesgoConcedidoCoafeFecha, ')
          ..write('riesgoConcedido: $riesgoConcedido, ')
          ..write('riesgoPendienteCobroVencido: $riesgoPendienteCobroVencido, ')
          ..write(
              'riesgoPendienteCobroNoVencido: $riesgoPendienteCobroNoVencido, ')
          ..write('riesgoPendienteServir: $riesgoPendienteServir, ')
          ..write('riesgoPendienteFacturar: $riesgoPendienteFacturar, ')
          ..write('obvservacionesInternas: $obvservacionesInternas, ')
          ..write('clientePotencial: $clientePotencial, ')
          ..write('clienteEstadoPotencialId: $clienteEstadoPotencialId, ')
          ..write('clienteTipoPotencialId: $clienteTipoPotencialId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteTableTable extends ClienteTable
    with TableInfo<$ClienteTableTable, ClienteDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nombreClienteMeta =
      const VerificationMeta('nombreCliente');
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
      'NOMBRE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nifMeta = const VerificationMeta('nif');
  @override
  late final GeneratedColumn<String> nif = GeneratedColumn<String>(
      'NIF', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _nombreFiscalMeta =
      const VerificationMeta('nombreFiscal');
  @override
  late final GeneratedColumn<String> nombreFiscal = GeneratedColumn<String>(
      'NOMBRE_FISCAL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _direccionFiscal1Meta =
      const VerificationMeta('direccionFiscal1');
  @override
  late final GeneratedColumn<String> direccionFiscal1 = GeneratedColumn<String>(
      'DIRECCION_FISCAL1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _direccionFiscal2Meta =
      const VerificationMeta('direccionFiscal2');
  @override
  late final GeneratedColumn<String> direccionFiscal2 = GeneratedColumn<String>(
      'DIRECCION_FISCAL2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _codigoPostalFiscalMeta =
      const VerificationMeta('codigoPostalFiscal');
  @override
  late final GeneratedColumn<String> codigoPostalFiscal =
      GeneratedColumn<String>('CODIGO_POSTAL_FISCAL', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _poblacionFiscalMeta =
      const VerificationMeta('poblacionFiscal');
  @override
  late final GeneratedColumn<String> poblacionFiscal = GeneratedColumn<String>(
      'POBLACION_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _provinciaFiscalMeta =
      const VerificationMeta('provinciaFiscal');
  @override
  late final GeneratedColumn<String> provinciaFiscal = GeneratedColumn<String>(
      'PROVINCIA_FISCAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _paisFiscalIdMeta =
      const VerificationMeta('paisFiscalId');
  @override
  late final GeneratedColumn<String> paisFiscalId = GeneratedColumn<String>(
      'PAIS_ID_FISCAL', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _latitudFiscalMeta =
      const VerificationMeta('latitudFiscal');
  @override
  late final GeneratedColumn<double> latitudFiscal = GeneratedColumn<double>(
      'LATITUD_FISCAL', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudFiscalMeta =
      const VerificationMeta('longitudFiscal');
  @override
  late final GeneratedColumn<double> longitudFiscal = GeneratedColumn<double>(
      'LONGITUD_FISCAL', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _ventasAnyoActualMeta =
      const VerificationMeta('ventasAnyoActual');
  @override
  late final GeneratedColumn<double> ventasAnyoActual = GeneratedColumn<double>(
      'VENTAS_ANYO_ACTUAL', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _ventasAnyoAnteriorMeta =
      const VerificationMeta('ventasAnyoAnterior');
  @override
  late final GeneratedColumn<double> ventasAnyoAnterior =
      GeneratedColumn<double>('VENTAS_ANYO_ANTERIOR', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _ventasHaceDosAnyosMeta =
      const VerificationMeta('ventasHaceDosAnyos');
  @override
  late final GeneratedColumn<double> ventasHaceDosAnyos =
      GeneratedColumn<double>('VENTAS_HACE_DOS_ANYOS', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _margenAnyoActualMeta =
      const VerificationMeta('margenAnyoActual');
  @override
  late final GeneratedColumn<double> margenAnyoActual = GeneratedColumn<double>(
      'MARGEN_ANYO_ACTUAL', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _margenAnyoAnteriorMeta =
      const VerificationMeta('margenAnyoAnterior');
  @override
  late final GeneratedColumn<double> margenAnyoAnterior =
      GeneratedColumn<double>('MARGEN_ANYO_ANTERIOR', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _margenHaceDosAnyosMeta =
      const VerificationMeta('margenHaceDosAnyos');
  @override
  late final GeneratedColumn<double> margenHaceDosAnyos =
      GeneratedColumn<double>('MARGEN_HACE_DOS_ANYOS', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _porcentajeAbonosMeta =
      const VerificationMeta('porcentajeAbonos');
  @override
  late final GeneratedColumn<double> porcentajeAbonos = GeneratedColumn<double>(
      'PORCENTAJE_ABONOS', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _porcentajeGarantiasMeta =
      const VerificationMeta('porcentajeGarantias');
  @override
  late final GeneratedColumn<double> porcentajeGarantias =
      GeneratedColumn<double>('PORCENTAJE_GARANTIAS', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _centralComprasMeta =
      const VerificationMeta('centralCompras');
  @override
  late final GeneratedColumn<String> centralCompras = GeneratedColumn<String>(
      'CENTRAL_COMPRAS_NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _urlWebMeta = const VerificationMeta('urlWeb');
  @override
  late final GeneratedColumn<String> urlWeb = GeneratedColumn<String>(
      'URL_WEB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _tarifaIdMeta = const VerificationMeta('tarifaId');
  @override
  late final GeneratedColumn<String> tarifaId = GeneratedColumn<String>(
      'TARIFA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _tarifaDescripcionMeta =
      const VerificationMeta('tarifaDescripcion');
  @override
  late final GeneratedColumn<String> tarifaDescripcion =
      GeneratedColumn<String>('TARIFA_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descuentoGeneralIdMeta =
      const VerificationMeta('descuentoGeneralId');
  @override
  late final GeneratedColumn<String> descuentoGeneralId =
      GeneratedColumn<String>('DESCUENTO_GENERAL_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDescuentoGeneralMeta =
      const VerificationMeta('descripcionDescuentoGeneral');
  @override
  late final GeneratedColumn<String> descripcionDescuentoGeneral =
      GeneratedColumn<String>(
          'DESCUENTO_GENERAL_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _tipoCalculoPrecioMeta =
      const VerificationMeta('tipoCalculoPrecio');
  @override
  late final GeneratedColumn<String> tipoCalculoPrecio =
      GeneratedColumn<String>('TIPO_CALCULO_PRECIO', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _plazoDeCobroIdMeta =
      const VerificationMeta('plazoDeCobroId');
  @override
  late final GeneratedColumn<String> plazoDeCobroId = GeneratedColumn<String>(
      'PLAZO_COBRO_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PLAZOS_COBRO (PLAZO_COBRO_ID)');
  final VerificationMeta _metodoDeCobroIdMeta =
      const VerificationMeta('metodoDeCobroId');
  @override
  late final GeneratedColumn<String> metodoDeCobroId = GeneratedColumn<String>(
      'METODO_COBRO_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _descuentoProntoPagoMeta =
      const VerificationMeta('descuentoProntoPago');
  @override
  late final GeneratedColumn<double> descuentoProntoPago =
      GeneratedColumn<double>('DESCUENTO_PRONTO_PAGO', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _riesgoConcedidoInternoMeta =
      const VerificationMeta('riesgoConcedidoInterno');
  @override
  late final GeneratedColumn<double> riesgoConcedidoInterno =
      GeneratedColumn<double>('RIESGO_CONCEDIDO_INTERNO', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _riesgoConcedidoInternoDateMeta =
      const VerificationMeta('riesgoConcedidoInternoDate');
  @override
  late final GeneratedColumn<DateTime> riesgoConcedidoInternoDate =
      GeneratedColumn<DateTime>(
          'RIESGO_CONCEDIDO_INTERNO_FECHA', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _riesgoConcedidoCoafeMeta =
      const VerificationMeta('riesgoConcedidoCoafe');
  @override
  late final GeneratedColumn<double> riesgoConcedidoCoafe =
      GeneratedColumn<double>('RIESGO_CONCEDIDO_COFACE', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _riesgoConcedidoCoafeFechaMeta =
      const VerificationMeta('riesgoConcedidoCoafeFecha');
  @override
  late final GeneratedColumn<DateTime> riesgoConcedidoCoafeFecha =
      GeneratedColumn<DateTime>(
          'RIESGO_CONCEDIDO_COFACE_FECHA', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _riesgoConcedidoMeta =
      const VerificationMeta('riesgoConcedido');
  @override
  late final GeneratedColumn<double> riesgoConcedido = GeneratedColumn<double>(
      'RIESGO_CONCEDIDO', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riesgoPendienteCobroVencidoMeta =
      const VerificationMeta('riesgoPendienteCobroVencido');
  @override
  late final GeneratedColumn<double> riesgoPendienteCobroVencido =
      GeneratedColumn<double>(
          'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riesgoPendienteCobroNoVencidoMeta =
      const VerificationMeta('riesgoPendienteCobroNoVencido');
  @override
  late final GeneratedColumn<double> riesgoPendienteCobroNoVencido =
      GeneratedColumn<double>(
          'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riesgoPendienteServirMeta =
      const VerificationMeta('riesgoPendienteServir');
  @override
  late final GeneratedColumn<double> riesgoPendienteServir =
      GeneratedColumn<double>('RIESGO_PDTE_SERVIR_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _riesgoPendienteFacturarMeta =
      const VerificationMeta('riesgoPendienteFacturar');
  @override
  late final GeneratedColumn<double> riesgoPendienteFacturar =
      GeneratedColumn<double>('RIESGO_PDTE_FACTURAR_CLIENTE', aliasedName, true,
          type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _obvservacionesInternasMeta =
      const VerificationMeta('obvservacionesInternas');
  @override
  late final GeneratedColumn<String> obvservacionesInternas =
      GeneratedColumn<String>('OBSERVACIONES_INTERNAS', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _clientePotencialMeta =
      const VerificationMeta('clientePotencial');
  @override
  late final GeneratedColumn<String> clientePotencial = GeneratedColumn<String>(
      'CLIENTE_POTENCIAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _clienteEstadoPotencialIdMeta =
      const VerificationMeta('clienteEstadoPotencialId');
  @override
  late final GeneratedColumn<String> clienteEstadoPotencialId =
      GeneratedColumn<String>('ESTADO_POTENCIAL_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _clienteTipoPotencialIdMeta =
      const VerificationMeta('clienteTipoPotencialId');
  @override
  late final GeneratedColumn<String> clienteTipoPotencialId =
      GeneratedColumn<String>('TIPO_POTENCIAL_ID', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        nombreCliente,
        nif,
        nombreFiscal,
        direccionFiscal1,
        direccionFiscal2,
        codigoPostalFiscal,
        poblacionFiscal,
        provinciaFiscal,
        paisFiscalId,
        latitudFiscal,
        longitudFiscal,
        empresaId,
        iva,
        ventasAnyoActual,
        ventasAnyoAnterior,
        ventasHaceDosAnyos,
        margenAnyoActual,
        margenAnyoAnterior,
        margenHaceDosAnyos,
        porcentajeAbonos,
        porcentajeGarantias,
        centralCompras,
        urlWeb,
        divisaId,
        tarifaId,
        tarifaDescripcion,
        descuentoGeneralId,
        descripcionDescuentoGeneral,
        tipoCalculoPrecio,
        plazoDeCobroId,
        metodoDeCobroId,
        descuentoProntoPago,
        riesgoConcedidoInterno,
        riesgoConcedidoInternoDate,
        riesgoConcedidoCoafe,
        riesgoConcedidoCoafeFecha,
        riesgoConcedido,
        riesgoPendienteCobroVencido,
        riesgoPendienteCobroNoVencido,
        riesgoPendienteServir,
        riesgoPendienteFacturar,
        obvservacionesInternas,
        clientePotencial,
        clienteEstadoPotencialId,
        clienteTipoPotencialId,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES';
  @override
  String get actualTableName => 'CLIENTES';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteDTO> instance,
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
          _nombreClienteMeta,
          nombreCliente.isAcceptableOrUnknown(
              data['NOMBRE']!, _nombreClienteMeta));
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('NIF')) {
      context.handle(
          _nifMeta, nif.isAcceptableOrUnknown(data['NIF']!, _nifMeta));
    }
    if (data.containsKey('NOMBRE_FISCAL')) {
      context.handle(
          _nombreFiscalMeta,
          nombreFiscal.isAcceptableOrUnknown(
              data['NOMBRE_FISCAL']!, _nombreFiscalMeta));
    } else if (isInserting) {
      context.missing(_nombreFiscalMeta);
    }
    if (data.containsKey('DIRECCION_FISCAL1')) {
      context.handle(
          _direccionFiscal1Meta,
          direccionFiscal1.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL1']!, _direccionFiscal1Meta));
    }
    if (data.containsKey('DIRECCION_FISCAL2')) {
      context.handle(
          _direccionFiscal2Meta,
          direccionFiscal2.isAcceptableOrUnknown(
              data['DIRECCION_FISCAL2']!, _direccionFiscal2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL_FISCAL')) {
      context.handle(
          _codigoPostalFiscalMeta,
          codigoPostalFiscal.isAcceptableOrUnknown(
              data['CODIGO_POSTAL_FISCAL']!, _codigoPostalFiscalMeta));
    }
    if (data.containsKey('POBLACION_FISCAL')) {
      context.handle(
          _poblacionFiscalMeta,
          poblacionFiscal.isAcceptableOrUnknown(
              data['POBLACION_FISCAL']!, _poblacionFiscalMeta));
    }
    if (data.containsKey('PROVINCIA_FISCAL')) {
      context.handle(
          _provinciaFiscalMeta,
          provinciaFiscal.isAcceptableOrUnknown(
              data['PROVINCIA_FISCAL']!, _provinciaFiscalMeta));
    }
    if (data.containsKey('PAIS_ID_FISCAL')) {
      context.handle(
          _paisFiscalIdMeta,
          paisFiscalId.isAcceptableOrUnknown(
              data['PAIS_ID_FISCAL']!, _paisFiscalIdMeta));
    }
    if (data.containsKey('LATITUD_FISCAL')) {
      context.handle(
          _latitudFiscalMeta,
          latitudFiscal.isAcceptableOrUnknown(
              data['LATITUD_FISCAL']!, _latitudFiscalMeta));
    } else if (isInserting) {
      context.missing(_latitudFiscalMeta);
    }
    if (data.containsKey('LONGITUD_FISCAL')) {
      context.handle(
          _longitudFiscalMeta,
          longitudFiscal.isAcceptableOrUnknown(
              data['LONGITUD_FISCAL']!, _longitudFiscalMeta));
    } else if (isInserting) {
      context.missing(_longitudFiscalMeta);
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
    }
    if (data.containsKey('VENTAS_ANYO_ACTUAL')) {
      context.handle(
          _ventasAnyoActualMeta,
          ventasAnyoActual.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ACTUAL']!, _ventasAnyoActualMeta));
    } else if (isInserting) {
      context.missing(_ventasAnyoActualMeta);
    }
    if (data.containsKey('VENTAS_ANYO_ANTERIOR')) {
      context.handle(
          _ventasAnyoAnteriorMeta,
          ventasAnyoAnterior.isAcceptableOrUnknown(
              data['VENTAS_ANYO_ANTERIOR']!, _ventasAnyoAnteriorMeta));
    } else if (isInserting) {
      context.missing(_ventasAnyoAnteriorMeta);
    }
    if (data.containsKey('VENTAS_HACE_DOS_ANYOS')) {
      context.handle(
          _ventasHaceDosAnyosMeta,
          ventasHaceDosAnyos.isAcceptableOrUnknown(
              data['VENTAS_HACE_DOS_ANYOS']!, _ventasHaceDosAnyosMeta));
    } else if (isInserting) {
      context.missing(_ventasHaceDosAnyosMeta);
    }
    if (data.containsKey('MARGEN_ANYO_ACTUAL')) {
      context.handle(
          _margenAnyoActualMeta,
          margenAnyoActual.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ACTUAL']!, _margenAnyoActualMeta));
    } else if (isInserting) {
      context.missing(_margenAnyoActualMeta);
    }
    if (data.containsKey('MARGEN_ANYO_ANTERIOR')) {
      context.handle(
          _margenAnyoAnteriorMeta,
          margenAnyoAnterior.isAcceptableOrUnknown(
              data['MARGEN_ANYO_ANTERIOR']!, _margenAnyoAnteriorMeta));
    } else if (isInserting) {
      context.missing(_margenAnyoAnteriorMeta);
    }
    if (data.containsKey('MARGEN_HACE_DOS_ANYOS')) {
      context.handle(
          _margenHaceDosAnyosMeta,
          margenHaceDosAnyos.isAcceptableOrUnknown(
              data['MARGEN_HACE_DOS_ANYOS']!, _margenHaceDosAnyosMeta));
    } else if (isInserting) {
      context.missing(_margenHaceDosAnyosMeta);
    }
    if (data.containsKey('PORCENTAJE_ABONOS')) {
      context.handle(
          _porcentajeAbonosMeta,
          porcentajeAbonos.isAcceptableOrUnknown(
              data['PORCENTAJE_ABONOS']!, _porcentajeAbonosMeta));
    } else if (isInserting) {
      context.missing(_porcentajeAbonosMeta);
    }
    if (data.containsKey('PORCENTAJE_GARANTIAS')) {
      context.handle(
          _porcentajeGarantiasMeta,
          porcentajeGarantias.isAcceptableOrUnknown(
              data['PORCENTAJE_GARANTIAS']!, _porcentajeGarantiasMeta));
    } else if (isInserting) {
      context.missing(_porcentajeGarantiasMeta);
    }
    if (data.containsKey('CENTRAL_COMPRAS_NOMBRE')) {
      context.handle(
          _centralComprasMeta,
          centralCompras.isAcceptableOrUnknown(
              data['CENTRAL_COMPRAS_NOMBRE']!, _centralComprasMeta));
    }
    if (data.containsKey('URL_WEB')) {
      context.handle(_urlWebMeta,
          urlWeb.isAcceptableOrUnknown(data['URL_WEB']!, _urlWebMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    }
    if (data.containsKey('TARIFA_ID')) {
      context.handle(_tarifaIdMeta,
          tarifaId.isAcceptableOrUnknown(data['TARIFA_ID']!, _tarifaIdMeta));
    }
    if (data.containsKey('TARIFA_DESCRIPCION')) {
      context.handle(
          _tarifaDescripcionMeta,
          tarifaDescripcion.isAcceptableOrUnknown(
              data['TARIFA_DESCRIPCION']!, _tarifaDescripcionMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_ID')) {
      context.handle(
          _descuentoGeneralIdMeta,
          descuentoGeneralId.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_ID']!, _descuentoGeneralIdMeta));
    }
    if (data.containsKey('DESCUENTO_GENERAL_DESCRIPCION')) {
      context.handle(
          _descripcionDescuentoGeneralMeta,
          descripcionDescuentoGeneral.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_DESCRIPCION']!,
              _descripcionDescuentoGeneralMeta));
    }
    if (data.containsKey('TIPO_CALCULO_PRECIO')) {
      context.handle(
          _tipoCalculoPrecioMeta,
          tipoCalculoPrecio.isAcceptableOrUnknown(
              data['TIPO_CALCULO_PRECIO']!, _tipoCalculoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoCalculoPrecioMeta);
    }
    if (data.containsKey('PLAZO_COBRO_ID')) {
      context.handle(
          _plazoDeCobroIdMeta,
          plazoDeCobroId.isAcceptableOrUnknown(
              data['PLAZO_COBRO_ID']!, _plazoDeCobroIdMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _metodoDeCobroIdMeta,
          metodoDeCobroId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _metodoDeCobroIdMeta));
    }
    if (data.containsKey('DESCUENTO_PRONTO_PAGO')) {
      context.handle(
          _descuentoProntoPagoMeta,
          descuentoProntoPago.isAcceptableOrUnknown(
              data['DESCUENTO_PRONTO_PAGO']!, _descuentoProntoPagoMeta));
    } else if (isInserting) {
      context.missing(_descuentoProntoPagoMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO')) {
      context.handle(
          _riesgoConcedidoInternoMeta,
          riesgoConcedidoInterno.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO']!, _riesgoConcedidoInternoMeta));
    } else if (isInserting) {
      context.missing(_riesgoConcedidoInternoMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_INTERNO_FECHA')) {
      context.handle(
          _riesgoConcedidoInternoDateMeta,
          riesgoConcedidoInternoDate.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_INTERNO_FECHA']!,
              _riesgoConcedidoInternoDateMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE')) {
      context.handle(
          _riesgoConcedidoCoafeMeta,
          riesgoConcedidoCoafe.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE']!, _riesgoConcedidoCoafeMeta));
    } else if (isInserting) {
      context.missing(_riesgoConcedidoCoafeMeta);
    }
    if (data.containsKey('RIESGO_CONCEDIDO_COFACE_FECHA')) {
      context.handle(
          _riesgoConcedidoCoafeFechaMeta,
          riesgoConcedidoCoafeFecha.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO_COFACE_FECHA']!,
              _riesgoConcedidoCoafeFechaMeta));
    }
    if (data.containsKey('RIESGO_CONCEDIDO')) {
      context.handle(
          _riesgoConcedidoMeta,
          riesgoConcedido.isAcceptableOrUnknown(
              data['RIESGO_CONCEDIDO']!, _riesgoConcedidoMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')) {
      context.handle(
          _riesgoPendienteCobroVencidoMeta,
          riesgoPendienteCobroVencido.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']!,
              _riesgoPendienteCobroVencidoMeta));
    }
    if (data.containsKey('RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')) {
      context.handle(
          _riesgoPendienteCobroNoVencidoMeta,
          riesgoPendienteCobroNoVencido.isAcceptableOrUnknown(
              data['RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']!,
              _riesgoPendienteCobroNoVencidoMeta));
    }
    if (data.containsKey('RIESGO_PDTE_SERVIR_CLIENTE')) {
      context.handle(
          _riesgoPendienteServirMeta,
          riesgoPendienteServir.isAcceptableOrUnknown(
              data['RIESGO_PDTE_SERVIR_CLIENTE']!, _riesgoPendienteServirMeta));
    }
    if (data.containsKey('RIESGO_PDTE_FACTURAR_CLIENTE')) {
      context.handle(
          _riesgoPendienteFacturarMeta,
          riesgoPendienteFacturar.isAcceptableOrUnknown(
              data['RIESGO_PDTE_FACTURAR_CLIENTE']!,
              _riesgoPendienteFacturarMeta));
    }
    if (data.containsKey('OBSERVACIONES_INTERNAS')) {
      context.handle(
          _obvservacionesInternasMeta,
          obvservacionesInternas.isAcceptableOrUnknown(
              data['OBSERVACIONES_INTERNAS']!, _obvservacionesInternasMeta));
    }
    if (data.containsKey('CLIENTE_POTENCIAL')) {
      context.handle(
          _clientePotencialMeta,
          clientePotencial.isAcceptableOrUnknown(
              data['CLIENTE_POTENCIAL']!, _clientePotencialMeta));
    }
    if (data.containsKey('ESTADO_POTENCIAL_ID')) {
      context.handle(
          _clienteEstadoPotencialIdMeta,
          clienteEstadoPotencialId.isAcceptableOrUnknown(
              data['ESTADO_POTENCIAL_ID']!, _clienteEstadoPotencialIdMeta));
    }
    if (data.containsKey('TIPO_POTENCIAL_ID')) {
      context.handle(
          _clienteTipoPotencialIdMeta,
          clienteTipoPotencialId.isAcceptableOrUnknown(
              data['TIPO_POTENCIAL_ID']!, _clienteTipoPotencialIdMeta));
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
  ClienteDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      nombreCliente: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE'])!,
      nif: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NIF']),
      nombreFiscal: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE_FISCAL'])!,
      direccionFiscal1: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_FISCAL1']),
      direccionFiscal2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DIRECCION_FISCAL2']),
      codigoPostalFiscal: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL_FISCAL']),
      poblacionFiscal: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}POBLACION_FISCAL']),
      paisFiscalId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID_FISCAL']),
      provinciaFiscal: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PROVINCIA_FISCAL']),
      latitudFiscal: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD_FISCAL'])!,
      longitudFiscal: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}LONGITUD_FISCAL'])!,
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      ventasAnyoActual: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_ANYO_ACTUAL'])!,
      ventasAnyoAnterior: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_ANYO_ANTERIOR'])!,
      ventasHaceDosAnyos: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}VENTAS_HACE_DOS_ANYOS'])!,
      margenAnyoActual: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}MARGEN_ANYO_ACTUAL'])!,
      margenAnyoAnterior: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}MARGEN_ANYO_ANTERIOR'])!,
      margenHaceDosAnyos: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}MARGEN_HACE_DOS_ANYOS'])!,
      porcentajeAbonos: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}PORCENTAJE_ABONOS'])!,
      porcentajeGarantias: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}PORCENTAJE_GARANTIAS'])!,
      centralCompras: attachedDatabase.options.types.read(DriftSqlType.string,
          data['${effectivePrefix}CENTRAL_COMPRAS_NOMBRE']),
      urlWeb: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}URL_WEB']),
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID']),
      tarifaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TARIFA_ID']),
      tarifaDescripcion: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TARIFA_DESCRIPCION']),
      descuentoGeneralId: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DESCUENTO_GENERAL_ID']),
      descripcionDescuentoGeneral: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}DESCUENTO_GENERAL_DESCRIPCION']),
      tipoCalculoPrecio: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TIPO_CALCULO_PRECIO'])!,
      plazoDeCobroId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PLAZO_COBRO_ID']),
      metodoDeCobroId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID']),
      descuentoProntoPago: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}DESCUENTO_PRONTO_PAGO'])!,
      riesgoConcedidoInterno: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO'])!,
      riesgoConcedidoInternoDate: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}RIESGO_CONCEDIDO_INTERNO_FECHA']),
      riesgoConcedidoCoafe: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE'])!,
      riesgoConcedidoCoafeFecha: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}RIESGO_CONCEDIDO_COFACE_FECHA']),
      riesgoConcedido: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}RIESGO_CONCEDIDO']),
      riesgoPendienteCobroVencido: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_COBRO_VENCIDO_CLIENTE']),
      riesgoPendienteCobroNoVencido: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE']),
      riesgoPendienteServir: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_SERVIR_CLIENTE']),
      riesgoPendienteFacturar: attachedDatabase.options.types.read(
          DriftSqlType.double,
          data['${effectivePrefix}RIESGO_PDTE_FACTURAR_CLIENTE']),
      obvservacionesInternas: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}OBSERVACIONES_INTERNAS']),
      clientePotencial: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}CLIENTE_POTENCIAL']),
      clienteEstadoPotencialId: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}ESTADO_POTENCIAL_ID']),
      clienteTipoPotencialId: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TIPO_POTENCIAL_ID']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteTableTable createAlias(String alias) {
    return $ClienteTableTable(attachedDatabase, alias);
  }
}

class ClienteUsuarioTableCompanion extends UpdateCompanion<ClienteUsuarioDTO> {
  final Value<String> clienteId;
  final Value<String> usuarioId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteUsuarioTableCompanion({
    this.clienteId = const Value.absent(),
    this.usuarioId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteUsuarioTableCompanion.insert({
    required String clienteId,
    required String usuarioId,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        usuarioId = Value(usuarioId),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteUsuarioDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? usuarioId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteUsuarioTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? usuarioId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteUsuarioTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      usuarioId: usuarioId ?? this.usuarioId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (usuarioId.present) {
      map['USUARIO_ID'] = Variable<String>(usuarioId.value);
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
    return (StringBuffer('ClienteUsuarioTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('usuarioId: $usuarioId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteUsuarioTableTable extends ClienteUsuarioTable
    with TableInfo<$ClienteUsuarioTableTable, ClienteUsuarioDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteUsuarioTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [clienteId, usuarioId, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_USUARIO';
  @override
  String get actualTableName => 'CLIENTES_USUARIO';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteUsuarioDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['USUARIO_ID']!, _usuarioIdMeta));
    } else if (isInserting) {
      context.missing(_usuarioIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, usuarioId};
  @override
  ClienteUsuarioDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteUsuarioDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      usuarioId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteUsuarioTableTable createAlias(String alias) {
    return $ClienteUsuarioTableTable(attachedDatabase, alias);
  }
}

class ClienteGrupoNetoTableCompanion
    extends UpdateCompanion<ClienteGrupoNetoDTO> {
  final Value<String> clienteId;
  final Value<String> grupoNetoId;
  final Value<String> grupoNetoDescripcion;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteGrupoNetoTableCompanion({
    this.clienteId = const Value.absent(),
    this.grupoNetoId = const Value.absent(),
    this.grupoNetoDescripcion = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteGrupoNetoTableCompanion.insert({
    required String clienteId,
    required String grupoNetoId,
    required String grupoNetoDescripcion,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        grupoNetoId = Value(grupoNetoId),
        grupoNetoDescripcion = Value(grupoNetoDescripcion),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteGrupoNetoDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? grupoNetoId,
    Expression<String>? grupoNetoDescripcion,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (grupoNetoId != null) 'GRUPO_NETO_ID': grupoNetoId,
      if (grupoNetoDescripcion != null)
        'GRUPO_NETO_DESCRIPCION': grupoNetoDescripcion,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteGrupoNetoTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? grupoNetoId,
      Value<String>? grupoNetoDescripcion,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteGrupoNetoTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      grupoNetoId: grupoNetoId ?? this.grupoNetoId,
      grupoNetoDescripcion: grupoNetoDescripcion ?? this.grupoNetoDescripcion,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (grupoNetoId.present) {
      map['GRUPO_NETO_ID'] = Variable<String>(grupoNetoId.value);
    }
    if (grupoNetoDescripcion.present) {
      map['GRUPO_NETO_DESCRIPCION'] =
          Variable<String>(grupoNetoDescripcion.value);
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
    return (StringBuffer('ClienteGrupoNetoTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('grupoNetoId: $grupoNetoId, ')
          ..write('grupoNetoDescripcion: $grupoNetoDescripcion, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteGrupoNetoTableTable extends ClienteGrupoNetoTable
    with TableInfo<$ClienteGrupoNetoTableTable, ClienteGrupoNetoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteGrupoNetoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _grupoNetoIdMeta =
      const VerificationMeta('grupoNetoId');
  @override
  late final GeneratedColumn<String> grupoNetoId = GeneratedColumn<String>(
      'GRUPO_NETO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _grupoNetoDescripcionMeta =
      const VerificationMeta('grupoNetoDescripcion');
  @override
  late final GeneratedColumn<String> grupoNetoDescripcion =
      GeneratedColumn<String>('GRUPO_NETO_DESCRIPCION', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [clienteId, grupoNetoId, grupoNetoDescripcion, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_GRUPOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_GRUPOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteGrupoNetoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_ID')) {
      context.handle(
          _grupoNetoIdMeta,
          grupoNetoId.isAcceptableOrUnknown(
              data['GRUPO_NETO_ID']!, _grupoNetoIdMeta));
    } else if (isInserting) {
      context.missing(_grupoNetoIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_DESCRIPCION')) {
      context.handle(
          _grupoNetoDescripcionMeta,
          grupoNetoDescripcion.isAcceptableOrUnknown(
              data['GRUPO_NETO_DESCRIPCION']!, _grupoNetoDescripcionMeta));
    } else if (isInserting) {
      context.missing(_grupoNetoDescripcionMeta);
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, grupoNetoId};
  @override
  ClienteGrupoNetoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteGrupoNetoDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      grupoNetoId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}GRUPO_NETO_ID'])!,
      grupoNetoDescripcion: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}GRUPO_NETO_DESCRIPCION'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteGrupoNetoTableTable createAlias(String alias) {
    return $ClienteGrupoNetoTableTable(attachedDatabase, alias);
  }
}

class FamiliaTableCompanion extends UpdateCompanion<FamiliaDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const FamiliaTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  FamiliaTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<FamiliaDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'FAMILIA_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  FamiliaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return FamiliaTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
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
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('FamiliaTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $FamiliaTableTable extends FamiliaTable
    with TableInfo<$FamiliaTableTable, FamiliaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FamiliaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'FAMILIAS';
  @override
  String get actualTableName => 'FAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<FamiliaDTO> instance,
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
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  FamiliaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FamiliaDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $FamiliaTableTable createAlias(String alias) {
    return $FamiliaTableTable(attachedDatabase, alias);
  }
}

class SubfamiliaTableCompanion extends UpdateCompanion<SubfamiliaDTO> {
  final Value<String> id;
  final Value<String> familiaId;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const SubfamiliaTableCompanion({
    this.id = const Value.absent(),
    this.familiaId = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  SubfamiliaTableCompanion.insert({
    required String id,
    required String familiaId,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        familiaId = Value(familiaId),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<SubfamiliaDTO> custom({
    Expression<String>? id,
    Expression<String>? familiaId,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'SUBFAMILIA_ID': id,
      if (familiaId != null) 'FAMILIA_ID': familiaId,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  SubfamiliaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? familiaId,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return SubfamiliaTableCompanion(
      id: id ?? this.id,
      familiaId: familiaId ?? this.familiaId,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
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
    if (familiaId.present) {
      map['FAMILIA_ID'] = Variable<String>(familiaId.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('SubfamiliaTableCompanion(')
          ..write('id: $id, ')
          ..write('familiaId: $familiaId, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $SubfamiliaTableTable extends SubfamiliaTable
    with TableInfo<$SubfamiliaTableTable, SubfamiliaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SubfamiliaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _familiaIdMeta = const VerificationMeta('familiaId');
  @override
  late final GeneratedColumn<String> familiaId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        familiaId,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'SUBFAMILIAS';
  @override
  String get actualTableName => 'SUBFAMILIAS';
  @override
  VerificationContext validateIntegrity(Insertable<SubfamiliaDTO> instance,
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
      context.handle(_familiaIdMeta,
          familiaId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familiaIdMeta));
    } else if (isInserting) {
      context.missing(_familiaIdMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  Set<GeneratedColumn> get $primaryKey => {id, familiaId};
  @override
  SubfamiliaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SubfamiliaDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID'])!,
      familiaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $SubfamiliaTableTable createAlias(String alias) {
    return $SubfamiliaTableTable(attachedDatabase, alias);
  }
}

class ClienteDescuentoTableCompanion
    extends UpdateCompanion<ClienteDescuentoDTO> {
  final Value<String> clienteId;
  final Value<String> articuloId;
  final Value<String> familiaId;
  final Value<String> subfamiliaId;
  final Value<int> cantidadDesde;
  final Value<double> descuento;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteDescuentoTableCompanion({
    this.clienteId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.familiaId = const Value.absent(),
    this.subfamiliaId = const Value.absent(),
    this.cantidadDesde = const Value.absent(),
    this.descuento = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteDescuentoTableCompanion.insert({
    required String clienteId,
    required String articuloId,
    required String familiaId,
    required String subfamiliaId,
    required int cantidadDesde,
    required double descuento,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        articuloId = Value(articuloId),
        familiaId = Value(familiaId),
        subfamiliaId = Value(subfamiliaId),
        cantidadDesde = Value(cantidadDesde),
        descuento = Value(descuento),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteDescuentoDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? articuloId,
    Expression<String>? familiaId,
    Expression<String>? subfamiliaId,
    Expression<int>? cantidadDesde,
    Expression<double>? descuento,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (familiaId != null) 'FAMILIA_ID': familiaId,
      if (subfamiliaId != null) 'SUBFAMILIA_ID': subfamiliaId,
      if (cantidadDesde != null) 'CANTIDAD_DESDE': cantidadDesde,
      if (descuento != null) 'DESCUENTO': descuento,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteDescuentoTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? articuloId,
      Value<String>? familiaId,
      Value<String>? subfamiliaId,
      Value<int>? cantidadDesde,
      Value<double>? descuento,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteDescuentoTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      articuloId: articuloId ?? this.articuloId,
      familiaId: familiaId ?? this.familiaId,
      subfamiliaId: subfamiliaId ?? this.subfamiliaId,
      cantidadDesde: cantidadDesde ?? this.cantidadDesde,
      descuento: descuento ?? this.descuento,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (familiaId.present) {
      map['FAMILIA_ID'] = Variable<String>(familiaId.value);
    }
    if (subfamiliaId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamiliaId.value);
    }
    if (cantidadDesde.present) {
      map['CANTIDAD_DESDE'] = Variable<int>(cantidadDesde.value);
    }
    if (descuento.present) {
      map['DESCUENTO'] = Variable<double>(descuento.value);
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
    return (StringBuffer('ClienteDescuentoTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('articuloId: $articuloId, ')
          ..write('familiaId: $familiaId, ')
          ..write('subfamiliaId: $subfamiliaId, ')
          ..write('cantidadDesde: $cantidadDesde, ')
          ..write('descuento: $descuento, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteDescuentoTableTable extends ClienteDescuentoTable
    with TableInfo<$ClienteDescuentoTableTable, ClienteDescuentoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteDescuentoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _familiaIdMeta = const VerificationMeta('familiaId');
  @override
  late final GeneratedColumn<String> familiaId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES FAMILIAS (FAMILIA_ID)');
  final VerificationMeta _subfamiliaIdMeta =
      const VerificationMeta('subfamiliaId');
  @override
  late final GeneratedColumn<String> subfamiliaId = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES SUBFAMILIAS (SUBFAMILIA_ID)');
  final VerificationMeta _cantidadDesdeMeta =
      const VerificationMeta('cantidadDesde');
  @override
  late final GeneratedColumn<int> cantidadDesde = GeneratedColumn<int>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _descuentoMeta = const VerificationMeta('descuento');
  @override
  late final GeneratedColumn<double> descuento = GeneratedColumn<double>(
      'DESCUENTO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        articuloId,
        familiaId,
        subfamiliaId,
        cantidadDesde,
        descuento,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DESCUENTOS';
  @override
  String get actualTableName => 'CLIENTES_DESCUENTOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteDescuentoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familiaIdMeta,
          familiaId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familiaIdMeta));
    } else if (isInserting) {
      context.missing(_familiaIdMeta);
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamiliaIdMeta,
          subfamiliaId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamiliaIdMeta));
    } else if (isInserting) {
      context.missing(_subfamiliaIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _cantidadDesdeMeta,
          cantidadDesde.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _cantidadDesdeMeta));
    } else if (isInserting) {
      context.missing(_cantidadDesdeMeta);
    }
    if (data.containsKey('DESCUENTO')) {
      context.handle(_descuentoMeta,
          descuento.isAcceptableOrUnknown(data['DESCUENTO']!, _descuentoMeta));
    } else if (isInserting) {
      context.missing(_descuentoMeta);
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
      {clienteId, articuloId, familiaId, subfamiliaId, cantidadDesde};
  @override
  ClienteDescuentoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteDescuentoDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      familiaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      subfamiliaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID'])!,
      cantidadDesde: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      descuento: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteDescuentoTableTable createAlias(String alias) {
    return $ClienteDescuentoTableTable(attachedDatabase, alias);
  }
}

class ClienteContactoTableCompanion
    extends UpdateCompanion<ClienteContactoDTO> {
  final Value<String> clienteId;
  final Value<String> contactoId;
  final Value<String?> observaciones;
  final Value<String?> nombre;
  final Value<String?> apellido1;
  final Value<String?> apellido2;
  final Value<String?> telefono1;
  final Value<String?> telefono2;
  final Value<String?> email;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteContactoTableCompanion({
    this.clienteId = const Value.absent(),
    this.contactoId = const Value.absent(),
    this.observaciones = const Value.absent(),
    this.nombre = const Value.absent(),
    this.apellido1 = const Value.absent(),
    this.apellido2 = const Value.absent(),
    this.telefono1 = const Value.absent(),
    this.telefono2 = const Value.absent(),
    this.email = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteContactoTableCompanion.insert({
    required String clienteId,
    required String contactoId,
    this.observaciones = const Value.absent(),
    this.nombre = const Value.absent(),
    this.apellido1 = const Value.absent(),
    this.apellido2 = const Value.absent(),
    this.telefono1 = const Value.absent(),
    this.telefono2 = const Value.absent(),
    this.email = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        contactoId = Value(contactoId),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteContactoDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? contactoId,
    Expression<String>? observaciones,
    Expression<String>? nombre,
    Expression<String>? apellido1,
    Expression<String>? apellido2,
    Expression<String>? telefono1,
    Expression<String>? telefono2,
    Expression<String>? email,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (contactoId != null) 'CONTACTO_ID': contactoId,
      if (observaciones != null) 'OBSERVACIONES': observaciones,
      if (nombre != null) 'NOMBRE': nombre,
      if (apellido1 != null) 'APELLIDO1': apellido1,
      if (apellido2 != null) 'APELLIDO2': apellido2,
      if (telefono1 != null) 'TELEFONO1': telefono1,
      if (telefono2 != null) 'TELEFONO2': telefono2,
      if (email != null) 'EMAIL': email,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteContactoTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? contactoId,
      Value<String?>? observaciones,
      Value<String?>? nombre,
      Value<String?>? apellido1,
      Value<String?>? apellido2,
      Value<String?>? telefono1,
      Value<String?>? telefono2,
      Value<String?>? email,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteContactoTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      contactoId: contactoId ?? this.contactoId,
      observaciones: observaciones ?? this.observaciones,
      nombre: nombre ?? this.nombre,
      apellido1: apellido1 ?? this.apellido1,
      apellido2: apellido2 ?? this.apellido2,
      telefono1: telefono1 ?? this.telefono1,
      telefono2: telefono2 ?? this.telefono2,
      email: email ?? this.email,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (contactoId.present) {
      map['CONTACTO_ID'] = Variable<String>(contactoId.value);
    }
    if (observaciones.present) {
      map['OBSERVACIONES'] = Variable<String>(observaciones.value);
    }
    if (nombre.present) {
      map['NOMBRE'] = Variable<String>(nombre.value);
    }
    if (apellido1.present) {
      map['APELLIDO1'] = Variable<String>(apellido1.value);
    }
    if (apellido2.present) {
      map['APELLIDO2'] = Variable<String>(apellido2.value);
    }
    if (telefono1.present) {
      map['TELEFONO1'] = Variable<String>(telefono1.value);
    }
    if (telefono2.present) {
      map['TELEFONO2'] = Variable<String>(telefono2.value);
    }
    if (email.present) {
      map['EMAIL'] = Variable<String>(email.value);
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
    return (StringBuffer('ClienteContactoTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('contactoId: $contactoId, ')
          ..write('observaciones: $observaciones, ')
          ..write('nombre: $nombre, ')
          ..write('apellido1: $apellido1, ')
          ..write('apellido2: $apellido2, ')
          ..write('telefono1: $telefono1, ')
          ..write('telefono2: $telefono2, ')
          ..write('email: $email, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteContactoTableTable extends ClienteContactoTable
    with TableInfo<$ClienteContactoTableTable, ClienteContactoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteContactoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contactoIdMeta = const VerificationMeta('contactoId');
  @override
  late final GeneratedColumn<String> contactoId = GeneratedColumn<String>(
      'CONTACTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _observacionesMeta =
      const VerificationMeta('observaciones');
  @override
  late final GeneratedColumn<String> observaciones = GeneratedColumn<String>(
      'OBSERVACIONES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'NOMBRE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _apellido1Meta = const VerificationMeta('apellido1');
  @override
  late final GeneratedColumn<String> apellido1 = GeneratedColumn<String>(
      'APELLIDO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _apellido2Meta = const VerificationMeta('apellido2');
  @override
  late final GeneratedColumn<String> apellido2 = GeneratedColumn<String>(
      'APELLIDO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _telefono1Meta = const VerificationMeta('telefono1');
  @override
  late final GeneratedColumn<String> telefono1 = GeneratedColumn<String>(
      'TELEFONO1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _telefono2Meta = const VerificationMeta('telefono2');
  @override
  late final GeneratedColumn<String> telefono2 = GeneratedColumn<String>(
      'TELEFONO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'EMAIL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        contactoId,
        observaciones,
        nombre,
        apellido1,
        apellido2,
        telefono1,
        telefono2,
        email,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_CONTACTOS';
  @override
  String get actualTableName => 'CLIENTES_CONTACTOS';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteContactoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('CONTACTO_ID')) {
      context.handle(
          _contactoIdMeta,
          contactoId.isAcceptableOrUnknown(
              data['CONTACTO_ID']!, _contactoIdMeta));
    } else if (isInserting) {
      context.missing(_contactoIdMeta);
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(
          _observacionesMeta,
          observaciones.isAcceptableOrUnknown(
              data['OBSERVACIONES']!, _observacionesMeta));
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['NOMBRE']!, _nombreMeta));
    }
    if (data.containsKey('APELLIDO1')) {
      context.handle(_apellido1Meta,
          apellido1.isAcceptableOrUnknown(data['APELLIDO1']!, _apellido1Meta));
    }
    if (data.containsKey('APELLIDO2')) {
      context.handle(_apellido2Meta,
          apellido2.isAcceptableOrUnknown(data['APELLIDO2']!, _apellido2Meta));
    }
    if (data.containsKey('TELEFONO1')) {
      context.handle(_telefono1Meta,
          telefono1.isAcceptableOrUnknown(data['TELEFONO1']!, _telefono1Meta));
    }
    if (data.containsKey('TELEFONO2')) {
      context.handle(_telefono2Meta,
          telefono2.isAcceptableOrUnknown(data['TELEFONO2']!, _telefono2Meta));
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, contactoId};
  @override
  ClienteContactoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteContactoDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      contactoId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO_ID'])!,
      observaciones: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACIONES']),
      nombre: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE']),
      apellido1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO1']),
      apellido2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APELLIDO2']),
      telefono1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO1']),
      telefono2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TELEFONO2']),
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMAIL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteContactoTableTable createAlias(String alias) {
    return $ClienteContactoTableTable(attachedDatabase, alias);
  }
}

class ClienteDireccionTableCompanion
    extends UpdateCompanion<ClienteDireccionDTO> {
  final Value<String> clienteId;
  final Value<String> direccionId;
  final Value<String> nombre;
  final Value<String?> direccion1;
  final Value<String?> direccion2;
  final Value<String?> codigoPostal;
  final Value<String?> poblacion;
  final Value<String?> provincia;
  final Value<String?> paisId;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<String?> predeterminada;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteDireccionTableCompanion({
    this.clienteId = const Value.absent(),
    this.direccionId = const Value.absent(),
    this.nombre = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.predeterminada = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteDireccionTableCompanion.insert({
    required String clienteId,
    required String direccionId,
    required String nombre,
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    required double latitud,
    required double longitud,
    this.predeterminada = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        direccionId = Value(direccionId),
        nombre = Value(nombre),
        latitud = Value(latitud),
        longitud = Value(longitud),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteDireccionDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? direccionId,
    Expression<String>? nombre,
    Expression<String>? direccion1,
    Expression<String>? direccion2,
    Expression<String>? codigoPostal,
    Expression<String>? poblacion,
    Expression<String>? provincia,
    Expression<String>? paisId,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? predeterminada,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (direccionId != null) 'DIRECCION_ID': direccionId,
      if (nombre != null) 'NOMBRE': nombre,
      if (direccion1 != null) 'DIRECCION1': direccion1,
      if (direccion2 != null) 'DIRECCION2': direccion2,
      if (codigoPostal != null) 'CODIGO_POSTAL': codigoPostal,
      if (poblacion != null) 'POBLACION': poblacion,
      if (provincia != null) 'PROVINCIA': provincia,
      if (paisId != null) 'PAIS_ID': paisId,
      if (latitud != null) 'LATITUD': latitud,
      if (longitud != null) 'LONGITUD': longitud,
      if (predeterminada != null) 'PREDETERMINADA_SN': predeterminada,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteDireccionTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? direccionId,
      Value<String>? nombre,
      Value<String?>? direccion1,
      Value<String?>? direccion2,
      Value<String?>? codigoPostal,
      Value<String?>? poblacion,
      Value<String?>? provincia,
      Value<String?>? paisId,
      Value<double>? latitud,
      Value<double>? longitud,
      Value<String?>? predeterminada,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteDireccionTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      direccionId: direccionId ?? this.direccionId,
      nombre: nombre ?? this.nombre,
      direccion1: direccion1 ?? this.direccion1,
      direccion2: direccion2 ?? this.direccion2,
      codigoPostal: codigoPostal ?? this.codigoPostal,
      poblacion: poblacion ?? this.poblacion,
      provincia: provincia ?? this.provincia,
      paisId: paisId ?? this.paisId,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      predeterminada: predeterminada ?? this.predeterminada,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (direccionId.present) {
      map['DIRECCION_ID'] = Variable<String>(direccionId.value);
    }
    if (nombre.present) {
      map['NOMBRE'] = Variable<String>(nombre.value);
    }
    if (direccion1.present) {
      map['DIRECCION1'] = Variable<String>(direccion1.value);
    }
    if (direccion2.present) {
      map['DIRECCION2'] = Variable<String>(direccion2.value);
    }
    if (codigoPostal.present) {
      map['CODIGO_POSTAL'] = Variable<String>(codigoPostal.value);
    }
    if (poblacion.present) {
      map['POBLACION'] = Variable<String>(poblacion.value);
    }
    if (provincia.present) {
      map['PROVINCIA'] = Variable<String>(provincia.value);
    }
    if (paisId.present) {
      map['PAIS_ID'] = Variable<String>(paisId.value);
    }
    if (latitud.present) {
      map['LATITUD'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['LONGITUD'] = Variable<double>(longitud.value);
    }
    if (predeterminada.present) {
      map['PREDETERMINADA_SN'] = Variable<String>(predeterminada.value);
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
    return (StringBuffer('ClienteDireccionTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('direccionId: $direccionId, ')
          ..write('nombre: $nombre, ')
          ..write('direccion1: $direccion1, ')
          ..write('direccion2: $direccion2, ')
          ..write('codigoPostal: $codigoPostal, ')
          ..write('poblacion: $poblacion, ')
          ..write('provincia: $provincia, ')
          ..write('paisId: $paisId, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('predeterminada: $predeterminada, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteDireccionTableTable extends ClienteDireccionTable
    with TableInfo<$ClienteDireccionTableTable, ClienteDireccionDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteDireccionTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _direccionIdMeta =
      const VerificationMeta('direccionId');
  @override
  late final GeneratedColumn<String> direccionId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nombreMeta = const VerificationMeta('nombre');
  @override
  late final GeneratedColumn<String> nombre = GeneratedColumn<String>(
      'NOMBRE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _direccion1Meta = const VerificationMeta('direccion1');
  @override
  late final GeneratedColumn<String> direccion1 = GeneratedColumn<String>(
      'DIRECCION1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _direccion2Meta = const VerificationMeta('direccion2');
  @override
  late final GeneratedColumn<String> direccion2 = GeneratedColumn<String>(
      'DIRECCION2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _codigoPostalMeta =
      const VerificationMeta('codigoPostal');
  @override
  late final GeneratedColumn<String> codigoPostal = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _poblacionMeta = const VerificationMeta('poblacion');
  @override
  late final GeneratedColumn<String> poblacion = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _provinciaMeta = const VerificationMeta('provincia');
  @override
  late final GeneratedColumn<String> provincia = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _paisIdMeta = const VerificationMeta('paisId');
  @override
  late final GeneratedColumn<String> paisId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _latitudMeta = const VerificationMeta('latitud');
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudMeta = const VerificationMeta('longitud');
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _predeterminadaMeta =
      const VerificationMeta('predeterminada');
  @override
  late final GeneratedColumn<String> predeterminada = GeneratedColumn<String>(
      'PREDETERMINADA_SN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        direccionId,
        nombre,
        direccion1,
        direccion2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        latitud,
        longitud,
        predeterminada,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  String get actualTableName => 'CLIENTES_DIRECCIONES_ENVIO';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteDireccionDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _direccionIdMeta,
          direccionId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _direccionIdMeta));
    } else if (isInserting) {
      context.missing(_direccionIdMeta);
    }
    if (data.containsKey('NOMBRE')) {
      context.handle(_nombreMeta,
          nombre.isAcceptableOrUnknown(data['NOMBRE']!, _nombreMeta));
    } else if (isInserting) {
      context.missing(_nombreMeta);
    }
    if (data.containsKey('DIRECCION1')) {
      context.handle(
          _direccion1Meta,
          direccion1.isAcceptableOrUnknown(
              data['DIRECCION1']!, _direccion1Meta));
    }
    if (data.containsKey('DIRECCION2')) {
      context.handle(
          _direccion2Meta,
          direccion2.isAcceptableOrUnknown(
              data['DIRECCION2']!, _direccion2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(
          _codigoPostalMeta,
          codigoPostal.isAcceptableOrUnknown(
              data['CODIGO_POSTAL']!, _codigoPostalMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(_poblacionMeta,
          poblacion.isAcceptableOrUnknown(data['POBLACION']!, _poblacionMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_provinciaMeta,
          provincia.isAcceptableOrUnknown(data['PROVINCIA']!, _provinciaMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_paisIdMeta,
          paisId.isAcceptableOrUnknown(data['PAIS_ID']!, _paisIdMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudMeta,
          latitud.isAcceptableOrUnknown(data['LATITUD']!, _latitudMeta));
    } else if (isInserting) {
      context.missing(_latitudMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudMeta,
          longitud.isAcceptableOrUnknown(data['LONGITUD']!, _longitudMeta));
    } else if (isInserting) {
      context.missing(_longitudMeta);
    }
    if (data.containsKey('PREDETERMINADA_SN')) {
      context.handle(
          _predeterminadaMeta,
          predeterminada.isAcceptableOrUnknown(
              data['PREDETERMINADA_SN']!, _predeterminadaMeta));
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, direccionId};
  @override
  ClienteDireccionDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteDireccionDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      direccionId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID'])!,
      nombre: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE'])!,
      direccion1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION1']),
      direccion2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION2']),
      codigoPostal: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      poblacion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      provincia: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      paisId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      latitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      predeterminada: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PREDETERMINADA_SN']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteDireccionTableTable createAlias(String alias) {
    return $ClienteDireccionTableTable(attachedDatabase, alias);
  }
}

class ClientePagoPendienteTableCompanion
    extends UpdateCompanion<ClientePagoPendienteDTO> {
  final Value<String> clienteId;
  final Value<String> efectoId;
  final Value<String?> facutaId;
  final Value<DateTime?> fechaFactura;
  final Value<DateTime?> fechaExpiracion;
  final Value<String?> metodoDeCobroId;
  final Value<String?> estadoCobroId;
  final Value<double?> importe;
  final Value<DateTime?> fechaExpiracionInicial;
  final Value<String?> vencidoJBM;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClientePagoPendienteTableCompanion({
    this.clienteId = const Value.absent(),
    this.efectoId = const Value.absent(),
    this.facutaId = const Value.absent(),
    this.fechaFactura = const Value.absent(),
    this.fechaExpiracion = const Value.absent(),
    this.metodoDeCobroId = const Value.absent(),
    this.estadoCobroId = const Value.absent(),
    this.importe = const Value.absent(),
    this.fechaExpiracionInicial = const Value.absent(),
    this.vencidoJBM = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClientePagoPendienteTableCompanion.insert({
    required String clienteId,
    required String efectoId,
    this.facutaId = const Value.absent(),
    this.fechaFactura = const Value.absent(),
    this.fechaExpiracion = const Value.absent(),
    this.metodoDeCobroId = const Value.absent(),
    this.estadoCobroId = const Value.absent(),
    this.importe = const Value.absent(),
    this.fechaExpiracionInicial = const Value.absent(),
    this.vencidoJBM = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        efectoId = Value(efectoId),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClientePagoPendienteDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? efectoId,
    Expression<String>? facutaId,
    Expression<DateTime>? fechaFactura,
    Expression<DateTime>? fechaExpiracion,
    Expression<String>? metodoDeCobroId,
    Expression<String>? estadoCobroId,
    Expression<double>? importe,
    Expression<DateTime>? fechaExpiracionInicial,
    Expression<String>? vencidoJBM,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (efectoId != null) 'EFECTO_ID': efectoId,
      if (facutaId != null) 'FACTURA_ID': facutaId,
      if (fechaFactura != null) 'FECHA_FACTURA': fechaFactura,
      if (fechaExpiracion != null) 'FECHA_VENCIMIENTO': fechaExpiracion,
      if (metodoDeCobroId != null) 'METODO_COBRO_ID': metodoDeCobroId,
      if (estadoCobroId != null) 'ESTADO_COBRO_ID': estadoCobroId,
      if (importe != null) 'IMPORTE': importe,
      if (fechaExpiracionInicial != null)
        'FECHA_VENCIMIENTO_INICIAL': fechaExpiracionInicial,
      if (vencidoJBM != null) 'VENCIDO_JBM': vencidoJBM,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClientePagoPendienteTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? efectoId,
      Value<String?>? facutaId,
      Value<DateTime?>? fechaFactura,
      Value<DateTime?>? fechaExpiracion,
      Value<String?>? metodoDeCobroId,
      Value<String?>? estadoCobroId,
      Value<double?>? importe,
      Value<DateTime?>? fechaExpiracionInicial,
      Value<String?>? vencidoJBM,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClientePagoPendienteTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      efectoId: efectoId ?? this.efectoId,
      facutaId: facutaId ?? this.facutaId,
      fechaFactura: fechaFactura ?? this.fechaFactura,
      fechaExpiracion: fechaExpiracion ?? this.fechaExpiracion,
      metodoDeCobroId: metodoDeCobroId ?? this.metodoDeCobroId,
      estadoCobroId: estadoCobroId ?? this.estadoCobroId,
      importe: importe ?? this.importe,
      fechaExpiracionInicial:
          fechaExpiracionInicial ?? this.fechaExpiracionInicial,
      vencidoJBM: vencidoJBM ?? this.vencidoJBM,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (efectoId.present) {
      map['EFECTO_ID'] = Variable<String>(efectoId.value);
    }
    if (facutaId.present) {
      map['FACTURA_ID'] = Variable<String>(facutaId.value);
    }
    if (fechaFactura.present) {
      map['FECHA_FACTURA'] = Variable<DateTime>(fechaFactura.value);
    }
    if (fechaExpiracion.present) {
      map['FECHA_VENCIMIENTO'] = Variable<DateTime>(fechaExpiracion.value);
    }
    if (metodoDeCobroId.present) {
      map['METODO_COBRO_ID'] = Variable<String>(metodoDeCobroId.value);
    }
    if (estadoCobroId.present) {
      map['ESTADO_COBRO_ID'] = Variable<String>(estadoCobroId.value);
    }
    if (importe.present) {
      map['IMPORTE'] = Variable<double>(importe.value);
    }
    if (fechaExpiracionInicial.present) {
      map['FECHA_VENCIMIENTO_INICIAL'] =
          Variable<DateTime>(fechaExpiracionInicial.value);
    }
    if (vencidoJBM.present) {
      map['VENCIDO_JBM'] = Variable<String>(vencidoJBM.value);
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
    return (StringBuffer('ClientePagoPendienteTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('efectoId: $efectoId, ')
          ..write('facutaId: $facutaId, ')
          ..write('fechaFactura: $fechaFactura, ')
          ..write('fechaExpiracion: $fechaExpiracion, ')
          ..write('metodoDeCobroId: $metodoDeCobroId, ')
          ..write('estadoCobroId: $estadoCobroId, ')
          ..write('importe: $importe, ')
          ..write('fechaExpiracionInicial: $fechaExpiracionInicial, ')
          ..write('vencidoJBM: $vencidoJBM, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClientePagoPendienteTableTable extends ClientePagoPendienteTable
    with TableInfo<$ClientePagoPendienteTableTable, ClientePagoPendienteDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientePagoPendienteTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _efectoIdMeta = const VerificationMeta('efectoId');
  @override
  late final GeneratedColumn<String> efectoId = GeneratedColumn<String>(
      'EFECTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _facutaIdMeta = const VerificationMeta('facutaId');
  @override
  late final GeneratedColumn<String> facutaId = GeneratedColumn<String>(
      'FACTURA_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _fechaFacturaMeta =
      const VerificationMeta('fechaFactura');
  @override
  late final GeneratedColumn<DateTime> fechaFactura = GeneratedColumn<DateTime>(
      'FECHA_FACTURA', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _fechaExpiracionMeta =
      const VerificationMeta('fechaExpiracion');
  @override
  late final GeneratedColumn<DateTime> fechaExpiracion =
      GeneratedColumn<DateTime>('FECHA_VENCIMIENTO', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _metodoDeCobroIdMeta =
      const VerificationMeta('metodoDeCobroId');
  @override
  late final GeneratedColumn<String> metodoDeCobroId = GeneratedColumn<String>(
      'METODO_COBRO_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES METODOS_COBRO (METODO_COBRO_ID)');
  final VerificationMeta _estadoCobroIdMeta =
      const VerificationMeta('estadoCobroId');
  @override
  late final GeneratedColumn<String> estadoCobroId = GeneratedColumn<String>(
      'ESTADO_COBRO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _importeMeta = const VerificationMeta('importe');
  @override
  late final GeneratedColumn<double> importe = GeneratedColumn<double>(
      'IMPORTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _fechaExpiracionInicialMeta =
      const VerificationMeta('fechaExpiracionInicial');
  @override
  late final GeneratedColumn<DateTime> fechaExpiracionInicial =
      GeneratedColumn<DateTime>('FECHA_VENCIMIENTO_INICIAL', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _vencidoJBMMeta = const VerificationMeta('vencidoJBM');
  @override
  late final GeneratedColumn<String> vencidoJBM = GeneratedColumn<String>(
      'VENCIDO_JBM', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        efectoId,
        facutaId,
        fechaFactura,
        fechaExpiracion,
        metodoDeCobroId,
        estadoCobroId,
        importe,
        fechaExpiracionInicial,
        vencidoJBM,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PAGOS_PENDIENTES';
  @override
  String get actualTableName => 'CLIENTES_PAGOS_PENDIENTES';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClientePagoPendienteDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('EFECTO_ID')) {
      context.handle(_efectoIdMeta,
          efectoId.isAcceptableOrUnknown(data['EFECTO_ID']!, _efectoIdMeta));
    } else if (isInserting) {
      context.missing(_efectoIdMeta);
    }
    if (data.containsKey('FACTURA_ID')) {
      context.handle(_facutaIdMeta,
          facutaId.isAcceptableOrUnknown(data['FACTURA_ID']!, _facutaIdMeta));
    }
    if (data.containsKey('FECHA_FACTURA')) {
      context.handle(
          _fechaFacturaMeta,
          fechaFactura.isAcceptableOrUnknown(
              data['FECHA_FACTURA']!, _fechaFacturaMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO')) {
      context.handle(
          _fechaExpiracionMeta,
          fechaExpiracion.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO']!, _fechaExpiracionMeta));
    }
    if (data.containsKey('METODO_COBRO_ID')) {
      context.handle(
          _metodoDeCobroIdMeta,
          metodoDeCobroId.isAcceptableOrUnknown(
              data['METODO_COBRO_ID']!, _metodoDeCobroIdMeta));
    }
    if (data.containsKey('ESTADO_COBRO_ID')) {
      context.handle(
          _estadoCobroIdMeta,
          estadoCobroId.isAcceptableOrUnknown(
              data['ESTADO_COBRO_ID']!, _estadoCobroIdMeta));
    }
    if (data.containsKey('IMPORTE')) {
      context.handle(_importeMeta,
          importe.isAcceptableOrUnknown(data['IMPORTE']!, _importeMeta));
    }
    if (data.containsKey('FECHA_VENCIMIENTO_INICIAL')) {
      context.handle(
          _fechaExpiracionInicialMeta,
          fechaExpiracionInicial.isAcceptableOrUnknown(
              data['FECHA_VENCIMIENTO_INICIAL']!, _fechaExpiracionInicialMeta));
    }
    if (data.containsKey('VENCIDO_JBM')) {
      context.handle(
          _vencidoJBMMeta,
          vencidoJBM.isAcceptableOrUnknown(
              data['VENCIDO_JBM']!, _vencidoJBMMeta));
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, efectoId};
  @override
  ClientePagoPendienteDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientePagoPendienteDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      efectoId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EFECTO_ID'])!,
      facutaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FACTURA_ID']),
      fechaFactura: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_FACTURA']),
      fechaExpiracion: attachedDatabase.options.types.read(
          DriftSqlType.dateTime, data['${effectivePrefix}FECHA_VENCIMIENTO']),
      metodoDeCobroId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}METODO_COBRO_ID']),
      estadoCobroId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ESTADO_COBRO_ID']),
      importe: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE']),
      fechaExpiracionInicial: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}FECHA_VENCIMIENTO_INICIAL']),
      vencidoJBM: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}VENCIDO_JBM']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClientePagoPendienteTableTable createAlias(String alias) {
    return $ClientePagoPendienteTableTable(attachedDatabase, alias);
  }
}

class ClientePrecioNetoTableCompanion
    extends UpdateCompanion<ClientePrecioNetoDTO> {
  final Value<String> clienteId;
  final Value<String> articuloId;
  final Value<int> cantidadDesde;
  final Value<double> precio;
  final Value<int> tipoPrecio;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClientePrecioNetoTableCompanion({
    this.clienteId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.cantidadDesde = const Value.absent(),
    this.precio = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClientePrecioNetoTableCompanion.insert({
    required String clienteId,
    required String articuloId,
    required int cantidadDesde,
    required double precio,
    required int tipoPrecio,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        articuloId = Value(articuloId),
        cantidadDesde = Value(cantidadDesde),
        precio = Value(precio),
        tipoPrecio = Value(tipoPrecio),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClientePrecioNetoDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? articuloId,
    Expression<int>? cantidadDesde,
    Expression<double>? precio,
    Expression<int>? tipoPrecio,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (cantidadDesde != null) 'CANTIDAD_DESDE': cantidadDesde,
      if (precio != null) 'PRECIO': precio,
      if (tipoPrecio != null) 'TIPO_PRECIO': tipoPrecio,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClientePrecioNetoTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? articuloId,
      Value<int>? cantidadDesde,
      Value<double>? precio,
      Value<int>? tipoPrecio,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClientePrecioNetoTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      articuloId: articuloId ?? this.articuloId,
      cantidadDesde: cantidadDesde ?? this.cantidadDesde,
      precio: precio ?? this.precio,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (cantidadDesde.present) {
      map['CANTIDAD_DESDE'] = Variable<int>(cantidadDesde.value);
    }
    if (precio.present) {
      map['PRECIO'] = Variable<double>(precio.value);
    }
    if (tipoPrecio.present) {
      map['TIPO_PRECIO'] = Variable<int>(tipoPrecio.value);
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
    return (StringBuffer('ClientePrecioNetoTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('articuloId: $articuloId, ')
          ..write('cantidadDesde: $cantidadDesde, ')
          ..write('precio: $precio, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClientePrecioNetoTableTable extends ClientePrecioNetoTable
    with TableInfo<$ClientePrecioNetoTableTable, ClientePrecioNetoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClientePrecioNetoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadDesdeMeta =
      const VerificationMeta('cantidadDesde');
  @override
  late final GeneratedColumn<int> cantidadDesde = GeneratedColumn<int>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _precioMeta = const VerificationMeta('precio');
  @override
  late final GeneratedColumn<double> precio = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        articuloId,
        cantidadDesde,
        precio,
        tipoPrecio,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_PRECIOS_NETOS';
  @override
  String get actualTableName => 'CLIENTES_PRECIOS_NETOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClientePrecioNetoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _cantidadDesdeMeta,
          cantidadDesde.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _cantidadDesdeMeta));
    } else if (isInserting) {
      context.missing(_cantidadDesdeMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(_precioMeta,
          precio.isAcceptableOrUnknown(data['PRECIO']!, _precioMeta));
    } else if (isInserting) {
      context.missing(_precioMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
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
      {clienteId, articuloId, cantidadDesde};
  @override
  ClientePrecioNetoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClientePrecioNetoDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      cantidadDesde: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      precio: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TIPO_PRECIO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClientePrecioNetoTableTable createAlias(String alias) {
    return $ClientePrecioNetoTableTable(attachedDatabase, alias);
  }
}

class ClienteRappelTableCompanion extends UpdateCompanion<ClienteRappelDTO> {
  final Value<String> clienteId;
  final Value<String> rappelId;
  final Value<String> descripcion;
  final Value<DateTime> fechaDesDe;
  final Value<DateTime?> fechaHasta;
  final Value<String?> nombreArchivo;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteRappelTableCompanion({
    this.clienteId = const Value.absent(),
    this.rappelId = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.fechaDesDe = const Value.absent(),
    this.fechaHasta = const Value.absent(),
    this.nombreArchivo = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteRappelTableCompanion.insert({
    required String clienteId,
    required String rappelId,
    required String descripcion,
    required DateTime fechaDesDe,
    this.fechaHasta = const Value.absent(),
    this.nombreArchivo = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        rappelId = Value(rappelId),
        descripcion = Value(descripcion),
        fechaDesDe = Value(fechaDesDe),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteRappelDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? rappelId,
    Expression<String>? descripcion,
    Expression<DateTime>? fechaDesDe,
    Expression<DateTime>? fechaHasta,
    Expression<String>? nombreArchivo,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (rappelId != null) 'RAPPEL_ID': rappelId,
      if (descripcion != null) 'DESCRIPCION': descripcion,
      if (fechaDesDe != null) 'FECHA_DESDE': fechaDesDe,
      if (fechaHasta != null) 'FECHA_HASTA': fechaHasta,
      if (nombreArchivo != null) 'NOMBRE_ARCHIVO': nombreArchivo,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteRappelTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? rappelId,
      Value<String>? descripcion,
      Value<DateTime>? fechaDesDe,
      Value<DateTime?>? fechaHasta,
      Value<String?>? nombreArchivo,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteRappelTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      rappelId: rappelId ?? this.rappelId,
      descripcion: descripcion ?? this.descripcion,
      fechaDesDe: fechaDesDe ?? this.fechaDesDe,
      fechaHasta: fechaHasta ?? this.fechaHasta,
      nombreArchivo: nombreArchivo ?? this.nombreArchivo,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (rappelId.present) {
      map['RAPPEL_ID'] = Variable<String>(rappelId.value);
    }
    if (descripcion.present) {
      map['DESCRIPCION'] = Variable<String>(descripcion.value);
    }
    if (fechaDesDe.present) {
      map['FECHA_DESDE'] = Variable<DateTime>(fechaDesDe.value);
    }
    if (fechaHasta.present) {
      map['FECHA_HASTA'] = Variable<DateTime>(fechaHasta.value);
    }
    if (nombreArchivo.present) {
      map['NOMBRE_ARCHIVO'] = Variable<String>(nombreArchivo.value);
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
    return (StringBuffer('ClienteRappelTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('rappelId: $rappelId, ')
          ..write('descripcion: $descripcion, ')
          ..write('fechaDesDe: $fechaDesDe, ')
          ..write('fechaHasta: $fechaHasta, ')
          ..write('nombreArchivo: $nombreArchivo, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteRappelTableTable extends ClienteRappelTable
    with TableInfo<$ClienteRappelTableTable, ClienteRappelDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteRappelTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _rappelIdMeta = const VerificationMeta('rappelId');
  @override
  late final GeneratedColumn<String> rappelId = GeneratedColumn<String>(
      'RAPPEL_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  @override
  late final GeneratedColumn<String> descripcion = GeneratedColumn<String>(
      'DESCRIPCION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaDesDeMeta = const VerificationMeta('fechaDesDe');
  @override
  late final GeneratedColumn<DateTime> fechaDesDe = GeneratedColumn<DateTime>(
      'FECHA_DESDE', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _fechaHastaMeta = const VerificationMeta('fechaHasta');
  @override
  late final GeneratedColumn<DateTime> fechaHasta = GeneratedColumn<DateTime>(
      'FECHA_HASTA', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _nombreArchivoMeta =
      const VerificationMeta('nombreArchivo');
  @override
  late final GeneratedColumn<String> nombreArchivo = GeneratedColumn<String>(
      'NOMBRE_ARCHIVO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        rappelId,
        descripcion,
        fechaDesDe,
        fechaHasta,
        nombreArchivo,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_RAPPELS';
  @override
  String get actualTableName => 'CLIENTES_RAPPELS';
  @override
  VerificationContext validateIntegrity(Insertable<ClienteRappelDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('RAPPEL_ID')) {
      context.handle(_rappelIdMeta,
          rappelId.isAcceptableOrUnknown(data['RAPPEL_ID']!, _rappelIdMeta));
    } else if (isInserting) {
      context.missing(_rappelIdMeta);
    }
    if (data.containsKey('DESCRIPCION')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['DESCRIPCION']!, _descripcionMeta));
    } else if (isInserting) {
      context.missing(_descripcionMeta);
    }
    if (data.containsKey('FECHA_DESDE')) {
      context.handle(
          _fechaDesDeMeta,
          fechaDesDe.isAcceptableOrUnknown(
              data['FECHA_DESDE']!, _fechaDesDeMeta));
    } else if (isInserting) {
      context.missing(_fechaDesDeMeta);
    }
    if (data.containsKey('FECHA_HASTA')) {
      context.handle(
          _fechaHastaMeta,
          fechaHasta.isAcceptableOrUnknown(
              data['FECHA_HASTA']!, _fechaHastaMeta));
    }
    if (data.containsKey('NOMBRE_ARCHIVO')) {
      context.handle(
          _nombreArchivoMeta,
          nombreArchivo.isAcceptableOrUnknown(
              data['NOMBRE_ARCHIVO']!, _nombreArchivoMeta));
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, rappelId};
  @override
  ClienteRappelDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteRappelDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      rappelId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RAPPEL_ID'])!,
      descripcion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION'])!,
      fechaDesDe: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_DESDE'])!,
      fechaHasta: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_HASTA']),
      nombreArchivo: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE_ARCHIVO']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteRappelTableTable createAlias(String alias) {
    return $ClienteRappelTableTable(attachedDatabase, alias);
  }
}

class ClienteEstadoPotencialTableCompanion
    extends UpdateCompanion<ClienteEstadoPotencialDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteEstadoPotencialTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteEstadoPotencialTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteEstadoPotencialDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ESTADO_POTENCIAL_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteEstadoPotencialTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteEstadoPotencialTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ESTADO_POTENCIAL_ID'] = Variable<String>(id.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('ClienteEstadoPotencialTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteEstadoPotencialTableTable extends ClienteEstadoPotencialTable
    with
        TableInfo<$ClienteEstadoPotencialTableTable,
            ClienteEstadoPotencialDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteEstadoPotencialTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ESTADO_POTENCIAL_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_ESTADOS_POTENCIAL';
  @override
  String get actualTableName => 'CLIENTES_ESTADOS_POTENCIAL';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteEstadoPotencialDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ESTADO_POTENCIAL_ID')) {
      context.handle(_idMeta,
          id.isAcceptableOrUnknown(data['ESTADO_POTENCIAL_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  ClienteEstadoPotencialDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteEstadoPotencialDTO(
      id: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}ESTADO_POTENCIAL_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteEstadoPotencialTableTable createAlias(String alias) {
    return $ClienteEstadoPotencialTableTable(attachedDatabase, alias);
  }
}

class ClienteTipoPotencialTableCompanion
    extends UpdateCompanion<ClienteTipoPotencialDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ClienteTipoPotencialTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ClienteTipoPotencialTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<ClienteTipoPotencialDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'TIPO_POTENCIAL_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ClienteTipoPotencialTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ClienteTipoPotencialTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['TIPO_POTENCIAL_ID'] = Variable<String>(id.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('ClienteTipoPotencialTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ClienteTipoPotencialTableTable extends ClienteTipoPotencialTable
    with TableInfo<$ClienteTipoPotencialTableTable, ClienteTipoPotencialDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ClienteTipoPotencialTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'TIPO_POTENCIAL_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'CLIENTES_TIPOS_POTENCIAL';
  @override
  String get actualTableName => 'CLIENTES_TIPOS_POTENCIAL';
  @override
  VerificationContext validateIntegrity(
      Insertable<ClienteTipoPotencialDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('TIPO_POTENCIAL_ID')) {
      context.handle(_idMeta,
          id.isAcceptableOrUnknown(data['TIPO_POTENCIAL_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  ClienteTipoPotencialDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ClienteTipoPotencialDTO(
      id: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TIPO_POTENCIAL_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ClienteTipoPotencialTableTable createAlias(String alias) {
    return $ClienteTipoPotencialTableTable(attachedDatabase, alias);
  }
}

class EstadisticasArticulosTopTableCompanion
    extends UpdateCompanion<EstadisitcasArticulosTopDTO> {
  final Value<String> articuloId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const EstadisticasArticulosTopTableCompanion({
    this.articuloId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  EstadisticasArticulosTopTableCompanion.insert({
    required String articuloId,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        lastUpdated = Value(lastUpdated);
  static Insertable<EstadisitcasArticulosTopDTO> custom({
    Expression<String>? articuloId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  EstadisticasArticulosTopTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return EstadisticasArticulosTopTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
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
    return (StringBuffer('EstadisticasArticulosTopTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $EstadisticasArticulosTopTableTable extends EstadisticasArticulosTopTable
    with
        TableInfo<$EstadisticasArticulosTopTableTable,
            EstadisitcasArticulosTopDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EstadisticasArticulosTopTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [articuloId, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ESTADISTICAS_ARTICULOS_TOP';
  @override
  String get actualTableName => 'ESTADISTICAS_ARTICULOS_TOP';
  @override
  VerificationContext validateIntegrity(
      Insertable<EstadisitcasArticulosTopDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
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
  Set<GeneratedColumn> get $primaryKey => {articuloId};
  @override
  EstadisitcasArticulosTopDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EstadisitcasArticulosTopDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $EstadisticasArticulosTopTableTable createAlias(String alias) {
    return $EstadisticasArticulosTopTableTable(attachedDatabase, alias);
  }
}

class ArticuloTableCompanion extends UpdateCompanion<ArticuloDTO> {
  final Value<String> id;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<String?> familiaId;
  final Value<String?> subfamiliaId;
  final Value<int> ventaMinimo;
  final Value<int> ventaMultiplo;
  final Value<int> unidadesSubcaja;
  final Value<int> unidadesCaja;
  final Value<int> unidadesPalet;
  final Value<String> activoWeb;
  final Value<String> activoApp;
  final Value<String> enCatalogo;
  final Value<String> descatalogado;
  final Value<String?> paginaEnCatalgo;
  final Value<String?> paginaEnCatalgo2;
  final Value<double> pesoKg;
  final Value<double> largoCm;
  final Value<double> anchoCm;
  final Value<double> altoCm;
  final Value<String?> resumenES;
  final Value<String?> resumenEN;
  final Value<String?> resumenFR;
  final Value<String?> resumenDE;
  final Value<String?> resumenCA;
  final Value<String?> resumenGB;
  final Value<String?> resumenHU;
  final Value<String?> resumenIT;
  final Value<String?> resumenNL;
  final Value<String?> resumenPL;
  final Value<String?> resumenPT;
  final Value<String?> resumenRO;
  final Value<String?> resumenRU;
  final Value<String?> resumenCN;
  final Value<String?> resumenEL;
  final Value<int> stockDisponible;
  final Value<double> ventasActual;
  final Value<double> ventasAnterior;
  final Value<int> comprasEntregaCantidad1;
  final Value<int> comprasEntregaCantidad2;
  final Value<int> comprasEntregaCantidad3;
  final Value<int> comprasEntregaCantidadMas3;
  final Value<DateTime?> comprasEntregaFecha1;
  final Value<DateTime?> comprasEntregaFecha2;
  final Value<DateTime?> comprasEntregaFecha3;
  final Value<String?> comprasEntregaEstado1;
  final Value<String?> comprasEntregaEstado2;
  final Value<String?> comprasEntregaEstado3;
  final Value<String?> imagenPrincipal;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloTableCompanion({
    this.id = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.familiaId = const Value.absent(),
    this.subfamiliaId = const Value.absent(),
    this.ventaMinimo = const Value.absent(),
    this.ventaMultiplo = const Value.absent(),
    this.unidadesSubcaja = const Value.absent(),
    this.unidadesCaja = const Value.absent(),
    this.unidadesPalet = const Value.absent(),
    this.activoWeb = const Value.absent(),
    this.activoApp = const Value.absent(),
    this.enCatalogo = const Value.absent(),
    this.descatalogado = const Value.absent(),
    this.paginaEnCatalgo = const Value.absent(),
    this.paginaEnCatalgo2 = const Value.absent(),
    this.pesoKg = const Value.absent(),
    this.largoCm = const Value.absent(),
    this.anchoCm = const Value.absent(),
    this.altoCm = const Value.absent(),
    this.resumenES = const Value.absent(),
    this.resumenEN = const Value.absent(),
    this.resumenFR = const Value.absent(),
    this.resumenDE = const Value.absent(),
    this.resumenCA = const Value.absent(),
    this.resumenGB = const Value.absent(),
    this.resumenHU = const Value.absent(),
    this.resumenIT = const Value.absent(),
    this.resumenNL = const Value.absent(),
    this.resumenPL = const Value.absent(),
    this.resumenPT = const Value.absent(),
    this.resumenRO = const Value.absent(),
    this.resumenRU = const Value.absent(),
    this.resumenCN = const Value.absent(),
    this.resumenEL = const Value.absent(),
    this.stockDisponible = const Value.absent(),
    this.ventasActual = const Value.absent(),
    this.ventasAnterior = const Value.absent(),
    this.comprasEntregaCantidad1 = const Value.absent(),
    this.comprasEntregaCantidad2 = const Value.absent(),
    this.comprasEntregaCantidad3 = const Value.absent(),
    this.comprasEntregaCantidadMas3 = const Value.absent(),
    this.comprasEntregaFecha1 = const Value.absent(),
    this.comprasEntregaFecha2 = const Value.absent(),
    this.comprasEntregaFecha3 = const Value.absent(),
    this.comprasEntregaEstado1 = const Value.absent(),
    this.comprasEntregaEstado2 = const Value.absent(),
    this.comprasEntregaEstado3 = const Value.absent(),
    this.imagenPrincipal = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloTableCompanion.insert({
    required String id,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.familiaId = const Value.absent(),
    this.subfamiliaId = const Value.absent(),
    required int ventaMinimo,
    required int ventaMultiplo,
    required int unidadesSubcaja,
    required int unidadesCaja,
    required int unidadesPalet,
    required String activoWeb,
    required String activoApp,
    required String enCatalogo,
    required String descatalogado,
    this.paginaEnCatalgo = const Value.absent(),
    this.paginaEnCatalgo2 = const Value.absent(),
    required double pesoKg,
    required double largoCm,
    required double anchoCm,
    required double altoCm,
    this.resumenES = const Value.absent(),
    this.resumenEN = const Value.absent(),
    this.resumenFR = const Value.absent(),
    this.resumenDE = const Value.absent(),
    this.resumenCA = const Value.absent(),
    this.resumenGB = const Value.absent(),
    this.resumenHU = const Value.absent(),
    this.resumenIT = const Value.absent(),
    this.resumenNL = const Value.absent(),
    this.resumenPL = const Value.absent(),
    this.resumenPT = const Value.absent(),
    this.resumenRO = const Value.absent(),
    this.resumenRU = const Value.absent(),
    this.resumenCN = const Value.absent(),
    this.resumenEL = const Value.absent(),
    required int stockDisponible,
    required double ventasActual,
    required double ventasAnterior,
    required int comprasEntregaCantidad1,
    required int comprasEntregaCantidad2,
    required int comprasEntregaCantidad3,
    required int comprasEntregaCantidadMas3,
    this.comprasEntregaFecha1 = const Value.absent(),
    this.comprasEntregaFecha2 = const Value.absent(),
    this.comprasEntregaFecha3 = const Value.absent(),
    this.comprasEntregaEstado1 = const Value.absent(),
    this.comprasEntregaEstado2 = const Value.absent(),
    this.comprasEntregaEstado3 = const Value.absent(),
    this.imagenPrincipal = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        descripcionES = Value(descripcionES),
        ventaMinimo = Value(ventaMinimo),
        ventaMultiplo = Value(ventaMultiplo),
        unidadesSubcaja = Value(unidadesSubcaja),
        unidadesCaja = Value(unidadesCaja),
        unidadesPalet = Value(unidadesPalet),
        activoWeb = Value(activoWeb),
        activoApp = Value(activoApp),
        enCatalogo = Value(enCatalogo),
        descatalogado = Value(descatalogado),
        pesoKg = Value(pesoKg),
        largoCm = Value(largoCm),
        anchoCm = Value(anchoCm),
        altoCm = Value(altoCm),
        stockDisponible = Value(stockDisponible),
        ventasActual = Value(ventasActual),
        ventasAnterior = Value(ventasAnterior),
        comprasEntregaCantidad1 = Value(comprasEntregaCantidad1),
        comprasEntregaCantidad2 = Value(comprasEntregaCantidad2),
        comprasEntregaCantidad3 = Value(comprasEntregaCantidad3),
        comprasEntregaCantidadMas3 = Value(comprasEntregaCantidadMas3),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloDTO> custom({
    Expression<String>? id,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<String>? familiaId,
    Expression<String>? subfamiliaId,
    Expression<int>? ventaMinimo,
    Expression<int>? ventaMultiplo,
    Expression<int>? unidadesSubcaja,
    Expression<int>? unidadesCaja,
    Expression<int>? unidadesPalet,
    Expression<String>? activoWeb,
    Expression<String>? activoApp,
    Expression<String>? enCatalogo,
    Expression<String>? descatalogado,
    Expression<String>? paginaEnCatalgo,
    Expression<String>? paginaEnCatalgo2,
    Expression<double>? pesoKg,
    Expression<double>? largoCm,
    Expression<double>? anchoCm,
    Expression<double>? altoCm,
    Expression<String>? resumenES,
    Expression<String>? resumenEN,
    Expression<String>? resumenFR,
    Expression<String>? resumenDE,
    Expression<String>? resumenCA,
    Expression<String>? resumenGB,
    Expression<String>? resumenHU,
    Expression<String>? resumenIT,
    Expression<String>? resumenNL,
    Expression<String>? resumenPL,
    Expression<String>? resumenPT,
    Expression<String>? resumenRO,
    Expression<String>? resumenRU,
    Expression<String>? resumenCN,
    Expression<String>? resumenEL,
    Expression<int>? stockDisponible,
    Expression<double>? ventasActual,
    Expression<double>? ventasAnterior,
    Expression<int>? comprasEntregaCantidad1,
    Expression<int>? comprasEntregaCantidad2,
    Expression<int>? comprasEntregaCantidad3,
    Expression<int>? comprasEntregaCantidadMas3,
    Expression<DateTime>? comprasEntregaFecha1,
    Expression<DateTime>? comprasEntregaFecha2,
    Expression<DateTime>? comprasEntregaFecha3,
    Expression<String>? comprasEntregaEstado1,
    Expression<String>? comprasEntregaEstado2,
    Expression<String>? comprasEntregaEstado3,
    Expression<String>? imagenPrincipal,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ARTICULO_ID': id,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (familiaId != null) 'FAMILIA_ID': familiaId,
      if (subfamiliaId != null) 'SUBFAMILIA_ID': subfamiliaId,
      if (ventaMinimo != null) 'VENTA_MINIMO': ventaMinimo,
      if (ventaMultiplo != null) 'VENTA_MULTIPLO': ventaMultiplo,
      if (unidadesSubcaja != null) 'UNIDADES_SUBCAJA': unidadesSubcaja,
      if (unidadesCaja != null) 'UNIDADES_CAJA': unidadesCaja,
      if (unidadesPalet != null) 'UNIDADES_PALET': unidadesPalet,
      if (activoWeb != null) 'ACTIVO_WEB': activoWeb,
      if (activoApp != null) 'ACTIVO_APP': activoApp,
      if (enCatalogo != null) 'EN_CATALOGO': enCatalogo,
      if (descatalogado != null) 'DESCATALOGADO': descatalogado,
      if (paginaEnCatalgo != null) 'PAGINA_EN_CATALOGO': paginaEnCatalgo,
      if (paginaEnCatalgo2 != null) 'PAGINA_EN_CATALOGO2': paginaEnCatalgo2,
      if (pesoKg != null) 'PESO_KG': pesoKg,
      if (largoCm != null) 'LARGO_CM': largoCm,
      if (anchoCm != null) 'ANCHO_CM': anchoCm,
      if (altoCm != null) 'ALTO_CM': altoCm,
      if (resumenES != null) 'RESUMEN_ES': resumenES,
      if (resumenEN != null) 'RESUMEN_EN': resumenEN,
      if (resumenFR != null) 'RESUMEN_FR': resumenFR,
      if (resumenDE != null) 'RESUMEN_DE': resumenDE,
      if (resumenCA != null) 'RESUMEN_CA': resumenCA,
      if (resumenGB != null) 'RESUMEN_GB': resumenGB,
      if (resumenHU != null) 'RESUMEN_HU': resumenHU,
      if (resumenIT != null) 'RESUMEN_IT': resumenIT,
      if (resumenNL != null) 'RESUMEN_NL': resumenNL,
      if (resumenPL != null) 'RESUMEN_PL': resumenPL,
      if (resumenPT != null) 'RESUMEN_PT': resumenPT,
      if (resumenRO != null) 'RESUMEN_RO': resumenRO,
      if (resumenRU != null) 'RESUMEN_RU': resumenRU,
      if (resumenCN != null) 'RESUMEN_CN': resumenCN,
      if (resumenEL != null) 'RESUMEN_EL': resumenEL,
      if (stockDisponible != null) 'STOCK_DISPONIBLE': stockDisponible,
      if (ventasActual != null) 'VENTAS_ACTUAL': ventasActual,
      if (ventasAnterior != null) 'VENTAS_ANTERIOR': ventasAnterior,
      if (comprasEntregaCantidad1 != null)
        'COMPRAS_ENTREGA_CANTIDAD_1': comprasEntregaCantidad1,
      if (comprasEntregaCantidad2 != null)
        'COMPRAS_ENTREGA_CANTIDAD_2': comprasEntregaCantidad2,
      if (comprasEntregaCantidad3 != null)
        'COMPRAS_ENTREGA_CANTIDAD_3': comprasEntregaCantidad3,
      if (comprasEntregaCantidadMas3 != null)
        'COMPRAS_ENTREGA_CANTIDAD_MAS_3': comprasEntregaCantidadMas3,
      if (comprasEntregaFecha1 != null)
        'COMPRAS_ENTREGA_FECHA_1': comprasEntregaFecha1,
      if (comprasEntregaFecha2 != null)
        'COMPRAS_ENTREGA_FECHA_2': comprasEntregaFecha2,
      if (comprasEntregaFecha3 != null)
        'COMPRAS_ENTREGA_FECHA_3': comprasEntregaFecha3,
      if (comprasEntregaEstado1 != null)
        'COMPRAS_ENTREGA_ESTADO_1': comprasEntregaEstado1,
      if (comprasEntregaEstado2 != null)
        'COMPRAS_ENTREGA_ESTADO_2': comprasEntregaEstado2,
      if (comprasEntregaEstado3 != null)
        'COMPRAS_ENTREGA_ESTADO_3': comprasEntregaEstado3,
      if (imagenPrincipal != null) 'IMAGEN_PRINCIPAL': imagenPrincipal,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<String?>? familiaId,
      Value<String?>? subfamiliaId,
      Value<int>? ventaMinimo,
      Value<int>? ventaMultiplo,
      Value<int>? unidadesSubcaja,
      Value<int>? unidadesCaja,
      Value<int>? unidadesPalet,
      Value<String>? activoWeb,
      Value<String>? activoApp,
      Value<String>? enCatalogo,
      Value<String>? descatalogado,
      Value<String?>? paginaEnCatalgo,
      Value<String?>? paginaEnCatalgo2,
      Value<double>? pesoKg,
      Value<double>? largoCm,
      Value<double>? anchoCm,
      Value<double>? altoCm,
      Value<String?>? resumenES,
      Value<String?>? resumenEN,
      Value<String?>? resumenFR,
      Value<String?>? resumenDE,
      Value<String?>? resumenCA,
      Value<String?>? resumenGB,
      Value<String?>? resumenHU,
      Value<String?>? resumenIT,
      Value<String?>? resumenNL,
      Value<String?>? resumenPL,
      Value<String?>? resumenPT,
      Value<String?>? resumenRO,
      Value<String?>? resumenRU,
      Value<String?>? resumenCN,
      Value<String?>? resumenEL,
      Value<int>? stockDisponible,
      Value<double>? ventasActual,
      Value<double>? ventasAnterior,
      Value<int>? comprasEntregaCantidad1,
      Value<int>? comprasEntregaCantidad2,
      Value<int>? comprasEntregaCantidad3,
      Value<int>? comprasEntregaCantidadMas3,
      Value<DateTime?>? comprasEntregaFecha1,
      Value<DateTime?>? comprasEntregaFecha2,
      Value<DateTime?>? comprasEntregaFecha3,
      Value<String?>? comprasEntregaEstado1,
      Value<String?>? comprasEntregaEstado2,
      Value<String?>? comprasEntregaEstado3,
      Value<String?>? imagenPrincipal,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloTableCompanion(
      id: id ?? this.id,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      familiaId: familiaId ?? this.familiaId,
      subfamiliaId: subfamiliaId ?? this.subfamiliaId,
      ventaMinimo: ventaMinimo ?? this.ventaMinimo,
      ventaMultiplo: ventaMultiplo ?? this.ventaMultiplo,
      unidadesSubcaja: unidadesSubcaja ?? this.unidadesSubcaja,
      unidadesCaja: unidadesCaja ?? this.unidadesCaja,
      unidadesPalet: unidadesPalet ?? this.unidadesPalet,
      activoWeb: activoWeb ?? this.activoWeb,
      activoApp: activoApp ?? this.activoApp,
      enCatalogo: enCatalogo ?? this.enCatalogo,
      descatalogado: descatalogado ?? this.descatalogado,
      paginaEnCatalgo: paginaEnCatalgo ?? this.paginaEnCatalgo,
      paginaEnCatalgo2: paginaEnCatalgo2 ?? this.paginaEnCatalgo2,
      pesoKg: pesoKg ?? this.pesoKg,
      largoCm: largoCm ?? this.largoCm,
      anchoCm: anchoCm ?? this.anchoCm,
      altoCm: altoCm ?? this.altoCm,
      resumenES: resumenES ?? this.resumenES,
      resumenEN: resumenEN ?? this.resumenEN,
      resumenFR: resumenFR ?? this.resumenFR,
      resumenDE: resumenDE ?? this.resumenDE,
      resumenCA: resumenCA ?? this.resumenCA,
      resumenGB: resumenGB ?? this.resumenGB,
      resumenHU: resumenHU ?? this.resumenHU,
      resumenIT: resumenIT ?? this.resumenIT,
      resumenNL: resumenNL ?? this.resumenNL,
      resumenPL: resumenPL ?? this.resumenPL,
      resumenPT: resumenPT ?? this.resumenPT,
      resumenRO: resumenRO ?? this.resumenRO,
      resumenRU: resumenRU ?? this.resumenRU,
      resumenCN: resumenCN ?? this.resumenCN,
      resumenEL: resumenEL ?? this.resumenEL,
      stockDisponible: stockDisponible ?? this.stockDisponible,
      ventasActual: ventasActual ?? this.ventasActual,
      ventasAnterior: ventasAnterior ?? this.ventasAnterior,
      comprasEntregaCantidad1:
          comprasEntregaCantidad1 ?? this.comprasEntregaCantidad1,
      comprasEntregaCantidad2:
          comprasEntregaCantidad2 ?? this.comprasEntregaCantidad2,
      comprasEntregaCantidad3:
          comprasEntregaCantidad3 ?? this.comprasEntregaCantidad3,
      comprasEntregaCantidadMas3:
          comprasEntregaCantidadMas3 ?? this.comprasEntregaCantidadMas3,
      comprasEntregaFecha1: comprasEntregaFecha1 ?? this.comprasEntregaFecha1,
      comprasEntregaFecha2: comprasEntregaFecha2 ?? this.comprasEntregaFecha2,
      comprasEntregaFecha3: comprasEntregaFecha3 ?? this.comprasEntregaFecha3,
      comprasEntregaEstado1:
          comprasEntregaEstado1 ?? this.comprasEntregaEstado1,
      comprasEntregaEstado2:
          comprasEntregaEstado2 ?? this.comprasEntregaEstado2,
      comprasEntregaEstado3:
          comprasEntregaEstado3 ?? this.comprasEntregaEstado3,
      imagenPrincipal: imagenPrincipal ?? this.imagenPrincipal,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ARTICULO_ID'] = Variable<String>(id.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
    }
    if (familiaId.present) {
      map['FAMILIA_ID'] = Variable<String>(familiaId.value);
    }
    if (subfamiliaId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamiliaId.value);
    }
    if (ventaMinimo.present) {
      map['VENTA_MINIMO'] = Variable<int>(ventaMinimo.value);
    }
    if (ventaMultiplo.present) {
      map['VENTA_MULTIPLO'] = Variable<int>(ventaMultiplo.value);
    }
    if (unidadesSubcaja.present) {
      map['UNIDADES_SUBCAJA'] = Variable<int>(unidadesSubcaja.value);
    }
    if (unidadesCaja.present) {
      map['UNIDADES_CAJA'] = Variable<int>(unidadesCaja.value);
    }
    if (unidadesPalet.present) {
      map['UNIDADES_PALET'] = Variable<int>(unidadesPalet.value);
    }
    if (activoWeb.present) {
      map['ACTIVO_WEB'] = Variable<String>(activoWeb.value);
    }
    if (activoApp.present) {
      map['ACTIVO_APP'] = Variable<String>(activoApp.value);
    }
    if (enCatalogo.present) {
      map['EN_CATALOGO'] = Variable<String>(enCatalogo.value);
    }
    if (descatalogado.present) {
      map['DESCATALOGADO'] = Variable<String>(descatalogado.value);
    }
    if (paginaEnCatalgo.present) {
      map['PAGINA_EN_CATALOGO'] = Variable<String>(paginaEnCatalgo.value);
    }
    if (paginaEnCatalgo2.present) {
      map['PAGINA_EN_CATALOGO2'] = Variable<String>(paginaEnCatalgo2.value);
    }
    if (pesoKg.present) {
      map['PESO_KG'] = Variable<double>(pesoKg.value);
    }
    if (largoCm.present) {
      map['LARGO_CM'] = Variable<double>(largoCm.value);
    }
    if (anchoCm.present) {
      map['ANCHO_CM'] = Variable<double>(anchoCm.value);
    }
    if (altoCm.present) {
      map['ALTO_CM'] = Variable<double>(altoCm.value);
    }
    if (resumenES.present) {
      map['RESUMEN_ES'] = Variable<String>(resumenES.value);
    }
    if (resumenEN.present) {
      map['RESUMEN_EN'] = Variable<String>(resumenEN.value);
    }
    if (resumenFR.present) {
      map['RESUMEN_FR'] = Variable<String>(resumenFR.value);
    }
    if (resumenDE.present) {
      map['RESUMEN_DE'] = Variable<String>(resumenDE.value);
    }
    if (resumenCA.present) {
      map['RESUMEN_CA'] = Variable<String>(resumenCA.value);
    }
    if (resumenGB.present) {
      map['RESUMEN_GB'] = Variable<String>(resumenGB.value);
    }
    if (resumenHU.present) {
      map['RESUMEN_HU'] = Variable<String>(resumenHU.value);
    }
    if (resumenIT.present) {
      map['RESUMEN_IT'] = Variable<String>(resumenIT.value);
    }
    if (resumenNL.present) {
      map['RESUMEN_NL'] = Variable<String>(resumenNL.value);
    }
    if (resumenPL.present) {
      map['RESUMEN_PL'] = Variable<String>(resumenPL.value);
    }
    if (resumenPT.present) {
      map['RESUMEN_PT'] = Variable<String>(resumenPT.value);
    }
    if (resumenRO.present) {
      map['RESUMEN_RO'] = Variable<String>(resumenRO.value);
    }
    if (resumenRU.present) {
      map['RESUMEN_RU'] = Variable<String>(resumenRU.value);
    }
    if (resumenCN.present) {
      map['RESUMEN_CN'] = Variable<String>(resumenCN.value);
    }
    if (resumenEL.present) {
      map['RESUMEN_EL'] = Variable<String>(resumenEL.value);
    }
    if (stockDisponible.present) {
      map['STOCK_DISPONIBLE'] = Variable<int>(stockDisponible.value);
    }
    if (ventasActual.present) {
      map['VENTAS_ACTUAL'] = Variable<double>(ventasActual.value);
    }
    if (ventasAnterior.present) {
      map['VENTAS_ANTERIOR'] = Variable<double>(ventasAnterior.value);
    }
    if (comprasEntregaCantidad1.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_1'] =
          Variable<int>(comprasEntregaCantidad1.value);
    }
    if (comprasEntregaCantidad2.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_2'] =
          Variable<int>(comprasEntregaCantidad2.value);
    }
    if (comprasEntregaCantidad3.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_3'] =
          Variable<int>(comprasEntregaCantidad3.value);
    }
    if (comprasEntregaCantidadMas3.present) {
      map['COMPRAS_ENTREGA_CANTIDAD_MAS_3'] =
          Variable<int>(comprasEntregaCantidadMas3.value);
    }
    if (comprasEntregaFecha1.present) {
      map['COMPRAS_ENTREGA_FECHA_1'] =
          Variable<DateTime>(comprasEntregaFecha1.value);
    }
    if (comprasEntregaFecha2.present) {
      map['COMPRAS_ENTREGA_FECHA_2'] =
          Variable<DateTime>(comprasEntregaFecha2.value);
    }
    if (comprasEntregaFecha3.present) {
      map['COMPRAS_ENTREGA_FECHA_3'] =
          Variable<DateTime>(comprasEntregaFecha3.value);
    }
    if (comprasEntregaEstado1.present) {
      map['COMPRAS_ENTREGA_ESTADO_1'] =
          Variable<String>(comprasEntregaEstado1.value);
    }
    if (comprasEntregaEstado2.present) {
      map['COMPRAS_ENTREGA_ESTADO_2'] =
          Variable<String>(comprasEntregaEstado2.value);
    }
    if (comprasEntregaEstado3.present) {
      map['COMPRAS_ENTREGA_ESTADO_3'] =
          Variable<String>(comprasEntregaEstado3.value);
    }
    if (imagenPrincipal.present) {
      map['IMAGEN_PRINCIPAL'] = Variable<String>(imagenPrincipal.value);
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
    return (StringBuffer('ArticuloTableCompanion(')
          ..write('id: $id, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('familiaId: $familiaId, ')
          ..write('subfamiliaId: $subfamiliaId, ')
          ..write('ventaMinimo: $ventaMinimo, ')
          ..write('ventaMultiplo: $ventaMultiplo, ')
          ..write('unidadesSubcaja: $unidadesSubcaja, ')
          ..write('unidadesCaja: $unidadesCaja, ')
          ..write('unidadesPalet: $unidadesPalet, ')
          ..write('activoWeb: $activoWeb, ')
          ..write('activoApp: $activoApp, ')
          ..write('enCatalogo: $enCatalogo, ')
          ..write('descatalogado: $descatalogado, ')
          ..write('paginaEnCatalgo: $paginaEnCatalgo, ')
          ..write('paginaEnCatalgo2: $paginaEnCatalgo2, ')
          ..write('pesoKg: $pesoKg, ')
          ..write('largoCm: $largoCm, ')
          ..write('anchoCm: $anchoCm, ')
          ..write('altoCm: $altoCm, ')
          ..write('resumenES: $resumenES, ')
          ..write('resumenEN: $resumenEN, ')
          ..write('resumenFR: $resumenFR, ')
          ..write('resumenDE: $resumenDE, ')
          ..write('resumenCA: $resumenCA, ')
          ..write('resumenGB: $resumenGB, ')
          ..write('resumenHU: $resumenHU, ')
          ..write('resumenIT: $resumenIT, ')
          ..write('resumenNL: $resumenNL, ')
          ..write('resumenPL: $resumenPL, ')
          ..write('resumenPT: $resumenPT, ')
          ..write('resumenRO: $resumenRO, ')
          ..write('resumenRU: $resumenRU, ')
          ..write('resumenCN: $resumenCN, ')
          ..write('resumenEL: $resumenEL, ')
          ..write('stockDisponible: $stockDisponible, ')
          ..write('ventasActual: $ventasActual, ')
          ..write('ventasAnterior: $ventasAnterior, ')
          ..write('comprasEntregaCantidad1: $comprasEntregaCantidad1, ')
          ..write('comprasEntregaCantidad2: $comprasEntregaCantidad2, ')
          ..write('comprasEntregaCantidad3: $comprasEntregaCantidad3, ')
          ..write('comprasEntregaCantidadMas3: $comprasEntregaCantidadMas3, ')
          ..write('comprasEntregaFecha1: $comprasEntregaFecha1, ')
          ..write('comprasEntregaFecha2: $comprasEntregaFecha2, ')
          ..write('comprasEntregaFecha3: $comprasEntregaFecha3, ')
          ..write('comprasEntregaEstado1: $comprasEntregaEstado1, ')
          ..write('comprasEntregaEstado2: $comprasEntregaEstado2, ')
          ..write('comprasEntregaEstado3: $comprasEntregaEstado3, ')
          ..write('imagenPrincipal: $imagenPrincipal, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloTableTable extends ArticuloTable
    with TableInfo<$ArticuloTableTable, ArticuloDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _familiaIdMeta = const VerificationMeta('familiaId');
  @override
  late final GeneratedColumn<String> familiaId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES FAMILIAS (FAMILIA_ID)');
  final VerificationMeta _subfamiliaIdMeta =
      const VerificationMeta('subfamiliaId');
  @override
  late final GeneratedColumn<String> subfamiliaId = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES SUBFAMILIAS (SUBFAMILIA_ID)');
  final VerificationMeta _ventaMinimoMeta =
      const VerificationMeta('ventaMinimo');
  @override
  late final GeneratedColumn<int> ventaMinimo = GeneratedColumn<int>(
      'VENTA_MINIMO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _ventaMultiploMeta =
      const VerificationMeta('ventaMultiplo');
  @override
  late final GeneratedColumn<int> ventaMultiplo = GeneratedColumn<int>(
      'VENTA_MULTIPLO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _unidadesSubcajaMeta =
      const VerificationMeta('unidadesSubcaja');
  @override
  late final GeneratedColumn<int> unidadesSubcaja = GeneratedColumn<int>(
      'UNIDADES_SUBCAJA', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _unidadesCajaMeta =
      const VerificationMeta('unidadesCaja');
  @override
  late final GeneratedColumn<int> unidadesCaja = GeneratedColumn<int>(
      'UNIDADES_CAJA', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _unidadesPaletMeta =
      const VerificationMeta('unidadesPalet');
  @override
  late final GeneratedColumn<int> unidadesPalet = GeneratedColumn<int>(
      'UNIDADES_PALET', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _activoWebMeta = const VerificationMeta('activoWeb');
  @override
  late final GeneratedColumn<String> activoWeb = GeneratedColumn<String>(
      'ACTIVO_WEB', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _activoAppMeta = const VerificationMeta('activoApp');
  @override
  late final GeneratedColumn<String> activoApp = GeneratedColumn<String>(
      'ACTIVO_APP', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _enCatalogoMeta = const VerificationMeta('enCatalogo');
  @override
  late final GeneratedColumn<String> enCatalogo = GeneratedColumn<String>(
      'EN_CATALOGO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descatalogadoMeta =
      const VerificationMeta('descatalogado');
  @override
  late final GeneratedColumn<String> descatalogado = GeneratedColumn<String>(
      'DESCATALOGADO', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _paginaEnCatalgoMeta =
      const VerificationMeta('paginaEnCatalgo');
  @override
  late final GeneratedColumn<String> paginaEnCatalgo = GeneratedColumn<String>(
      'PAGINA_EN_CATALOGO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _paginaEnCatalgo2Meta =
      const VerificationMeta('paginaEnCatalgo2');
  @override
  late final GeneratedColumn<String> paginaEnCatalgo2 = GeneratedColumn<String>(
      'PAGINA_EN_CATALOGO2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _pesoKgMeta = const VerificationMeta('pesoKg');
  @override
  late final GeneratedColumn<double> pesoKg = GeneratedColumn<double>(
      'PESO_KG', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _largoCmMeta = const VerificationMeta('largoCm');
  @override
  late final GeneratedColumn<double> largoCm = GeneratedColumn<double>(
      'LARGO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _anchoCmMeta = const VerificationMeta('anchoCm');
  @override
  late final GeneratedColumn<double> anchoCm = GeneratedColumn<double>(
      'ANCHO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _altoCmMeta = const VerificationMeta('altoCm');
  @override
  late final GeneratedColumn<double> altoCm = GeneratedColumn<double>(
      'ALTO_CM', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _resumenESMeta = const VerificationMeta('resumenES');
  @override
  late final GeneratedColumn<String> resumenES = GeneratedColumn<String>(
      'RESUMEN_ES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenENMeta = const VerificationMeta('resumenEN');
  @override
  late final GeneratedColumn<String> resumenEN = GeneratedColumn<String>(
      'RESUMEN_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenFRMeta = const VerificationMeta('resumenFR');
  @override
  late final GeneratedColumn<String> resumenFR = GeneratedColumn<String>(
      'RESUMEN_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenDEMeta = const VerificationMeta('resumenDE');
  @override
  late final GeneratedColumn<String> resumenDE = GeneratedColumn<String>(
      'RESUMEN_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenCAMeta = const VerificationMeta('resumenCA');
  @override
  late final GeneratedColumn<String> resumenCA = GeneratedColumn<String>(
      'RESUMEN_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenGBMeta = const VerificationMeta('resumenGB');
  @override
  late final GeneratedColumn<String> resumenGB = GeneratedColumn<String>(
      'RESUMEN_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenHUMeta = const VerificationMeta('resumenHU');
  @override
  late final GeneratedColumn<String> resumenHU = GeneratedColumn<String>(
      'RESUMEN_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenITMeta = const VerificationMeta('resumenIT');
  @override
  late final GeneratedColumn<String> resumenIT = GeneratedColumn<String>(
      'RESUMEN_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenNLMeta = const VerificationMeta('resumenNL');
  @override
  late final GeneratedColumn<String> resumenNL = GeneratedColumn<String>(
      'RESUMEN_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenPLMeta = const VerificationMeta('resumenPL');
  @override
  late final GeneratedColumn<String> resumenPL = GeneratedColumn<String>(
      'RESUMEN_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenPTMeta = const VerificationMeta('resumenPT');
  @override
  late final GeneratedColumn<String> resumenPT = GeneratedColumn<String>(
      'RESUMEN_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenROMeta = const VerificationMeta('resumenRO');
  @override
  late final GeneratedColumn<String> resumenRO = GeneratedColumn<String>(
      'RESUMEN_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenRUMeta = const VerificationMeta('resumenRU');
  @override
  late final GeneratedColumn<String> resumenRU = GeneratedColumn<String>(
      'RESUMEN_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenCNMeta = const VerificationMeta('resumenCN');
  @override
  late final GeneratedColumn<String> resumenCN = GeneratedColumn<String>(
      'RESUMEN_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenELMeta = const VerificationMeta('resumenEL');
  @override
  late final GeneratedColumn<String> resumenEL = GeneratedColumn<String>(
      'RESUMEN_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _stockDisponibleMeta =
      const VerificationMeta('stockDisponible');
  @override
  late final GeneratedColumn<int> stockDisponible = GeneratedColumn<int>(
      'STOCK_DISPONIBLE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _ventasActualMeta =
      const VerificationMeta('ventasActual');
  @override
  late final GeneratedColumn<double> ventasActual = GeneratedColumn<double>(
      'VENTAS_ACTUAL', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _ventasAnteriorMeta =
      const VerificationMeta('ventasAnterior');
  @override
  late final GeneratedColumn<double> ventasAnterior = GeneratedColumn<double>(
      'VENTAS_ANTERIOR', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _comprasEntregaCantidad1Meta =
      const VerificationMeta('comprasEntregaCantidad1');
  @override
  late final GeneratedColumn<int> comprasEntregaCantidad1 =
      GeneratedColumn<int>('COMPRAS_ENTREGA_CANTIDAD_1', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _comprasEntregaCantidad2Meta =
      const VerificationMeta('comprasEntregaCantidad2');
  @override
  late final GeneratedColumn<int> comprasEntregaCantidad2 =
      GeneratedColumn<int>('COMPRAS_ENTREGA_CANTIDAD_2', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _comprasEntregaCantidad3Meta =
      const VerificationMeta('comprasEntregaCantidad3');
  @override
  late final GeneratedColumn<int> comprasEntregaCantidad3 =
      GeneratedColumn<int>('COMPRAS_ENTREGA_CANTIDAD_3', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _comprasEntregaCantidadMas3Meta =
      const VerificationMeta('comprasEntregaCantidadMas3');
  @override
  late final GeneratedColumn<int> comprasEntregaCantidadMas3 =
      GeneratedColumn<int>('COMPRAS_ENTREGA_CANTIDAD_MAS_3', aliasedName, false,
          type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _comprasEntregaFecha1Meta =
      const VerificationMeta('comprasEntregaFecha1');
  @override
  late final GeneratedColumn<DateTime> comprasEntregaFecha1 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_1', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _comprasEntregaFecha2Meta =
      const VerificationMeta('comprasEntregaFecha2');
  @override
  late final GeneratedColumn<DateTime> comprasEntregaFecha2 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_2', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _comprasEntregaFecha3Meta =
      const VerificationMeta('comprasEntregaFecha3');
  @override
  late final GeneratedColumn<DateTime> comprasEntregaFecha3 =
      GeneratedColumn<DateTime>('COMPRAS_ENTREGA_FECHA_3', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _comprasEntregaEstado1Meta =
      const VerificationMeta('comprasEntregaEstado1');
  @override
  late final GeneratedColumn<String> comprasEntregaEstado1 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_1', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _comprasEntregaEstado2Meta =
      const VerificationMeta('comprasEntregaEstado2');
  @override
  late final GeneratedColumn<String> comprasEntregaEstado2 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_2', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _comprasEntregaEstado3Meta =
      const VerificationMeta('comprasEntregaEstado3');
  @override
  late final GeneratedColumn<String> comprasEntregaEstado3 =
      GeneratedColumn<String>('COMPRAS_ENTREGA_ESTADO_3', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _imagenPrincipalMeta =
      const VerificationMeta('imagenPrincipal');
  @override
  late final GeneratedColumn<String> imagenPrincipal = GeneratedColumn<String>(
      'IMAGEN_PRINCIPAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        familiaId,
        subfamiliaId,
        ventaMinimo,
        ventaMultiplo,
        unidadesSubcaja,
        unidadesCaja,
        unidadesPalet,
        activoWeb,
        activoApp,
        enCatalogo,
        descatalogado,
        paginaEnCatalgo,
        paginaEnCatalgo2,
        pesoKg,
        largoCm,
        anchoCm,
        altoCm,
        resumenES,
        resumenEN,
        resumenFR,
        resumenDE,
        resumenCA,
        resumenGB,
        resumenHU,
        resumenIT,
        resumenNL,
        resumenPL,
        resumenPT,
        resumenRO,
        resumenRU,
        resumenCN,
        resumenEL,
        stockDisponible,
        ventasActual,
        ventasAnterior,
        comprasEntregaCantidad1,
        comprasEntregaCantidad2,
        comprasEntregaCantidad3,
        comprasEntregaCantidadMas3,
        comprasEntregaFecha1,
        comprasEntregaFecha2,
        comprasEntregaFecha3,
        comprasEntregaEstado1,
        comprasEntregaEstado2,
        comprasEntregaEstado3,
        imagenPrincipal,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS';
  @override
  String get actualTableName => 'ARTICULOS';
  @override
  VerificationContext validateIntegrity(Insertable<ArticuloDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['ARTICULO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familiaIdMeta,
          familiaId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familiaIdMeta));
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamiliaIdMeta,
          subfamiliaId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamiliaIdMeta));
    }
    if (data.containsKey('VENTA_MINIMO')) {
      context.handle(
          _ventaMinimoMeta,
          ventaMinimo.isAcceptableOrUnknown(
              data['VENTA_MINIMO']!, _ventaMinimoMeta));
    } else if (isInserting) {
      context.missing(_ventaMinimoMeta);
    }
    if (data.containsKey('VENTA_MULTIPLO')) {
      context.handle(
          _ventaMultiploMeta,
          ventaMultiplo.isAcceptableOrUnknown(
              data['VENTA_MULTIPLO']!, _ventaMultiploMeta));
    } else if (isInserting) {
      context.missing(_ventaMultiploMeta);
    }
    if (data.containsKey('UNIDADES_SUBCAJA')) {
      context.handle(
          _unidadesSubcajaMeta,
          unidadesSubcaja.isAcceptableOrUnknown(
              data['UNIDADES_SUBCAJA']!, _unidadesSubcajaMeta));
    } else if (isInserting) {
      context.missing(_unidadesSubcajaMeta);
    }
    if (data.containsKey('UNIDADES_CAJA')) {
      context.handle(
          _unidadesCajaMeta,
          unidadesCaja.isAcceptableOrUnknown(
              data['UNIDADES_CAJA']!, _unidadesCajaMeta));
    } else if (isInserting) {
      context.missing(_unidadesCajaMeta);
    }
    if (data.containsKey('UNIDADES_PALET')) {
      context.handle(
          _unidadesPaletMeta,
          unidadesPalet.isAcceptableOrUnknown(
              data['UNIDADES_PALET']!, _unidadesPaletMeta));
    } else if (isInserting) {
      context.missing(_unidadesPaletMeta);
    }
    if (data.containsKey('ACTIVO_WEB')) {
      context.handle(_activoWebMeta,
          activoWeb.isAcceptableOrUnknown(data['ACTIVO_WEB']!, _activoWebMeta));
    } else if (isInserting) {
      context.missing(_activoWebMeta);
    }
    if (data.containsKey('ACTIVO_APP')) {
      context.handle(_activoAppMeta,
          activoApp.isAcceptableOrUnknown(data['ACTIVO_APP']!, _activoAppMeta));
    } else if (isInserting) {
      context.missing(_activoAppMeta);
    }
    if (data.containsKey('EN_CATALOGO')) {
      context.handle(
          _enCatalogoMeta,
          enCatalogo.isAcceptableOrUnknown(
              data['EN_CATALOGO']!, _enCatalogoMeta));
    } else if (isInserting) {
      context.missing(_enCatalogoMeta);
    }
    if (data.containsKey('DESCATALOGADO')) {
      context.handle(
          _descatalogadoMeta,
          descatalogado.isAcceptableOrUnknown(
              data['DESCATALOGADO']!, _descatalogadoMeta));
    } else if (isInserting) {
      context.missing(_descatalogadoMeta);
    }
    if (data.containsKey('PAGINA_EN_CATALOGO')) {
      context.handle(
          _paginaEnCatalgoMeta,
          paginaEnCatalgo.isAcceptableOrUnknown(
              data['PAGINA_EN_CATALOGO']!, _paginaEnCatalgoMeta));
    }
    if (data.containsKey('PAGINA_EN_CATALOGO2')) {
      context.handle(
          _paginaEnCatalgo2Meta,
          paginaEnCatalgo2.isAcceptableOrUnknown(
              data['PAGINA_EN_CATALOGO2']!, _paginaEnCatalgo2Meta));
    }
    if (data.containsKey('PESO_KG')) {
      context.handle(_pesoKgMeta,
          pesoKg.isAcceptableOrUnknown(data['PESO_KG']!, _pesoKgMeta));
    } else if (isInserting) {
      context.missing(_pesoKgMeta);
    }
    if (data.containsKey('LARGO_CM')) {
      context.handle(_largoCmMeta,
          largoCm.isAcceptableOrUnknown(data['LARGO_CM']!, _largoCmMeta));
    } else if (isInserting) {
      context.missing(_largoCmMeta);
    }
    if (data.containsKey('ANCHO_CM')) {
      context.handle(_anchoCmMeta,
          anchoCm.isAcceptableOrUnknown(data['ANCHO_CM']!, _anchoCmMeta));
    } else if (isInserting) {
      context.missing(_anchoCmMeta);
    }
    if (data.containsKey('ALTO_CM')) {
      context.handle(_altoCmMeta,
          altoCm.isAcceptableOrUnknown(data['ALTO_CM']!, _altoCmMeta));
    } else if (isInserting) {
      context.missing(_altoCmMeta);
    }
    if (data.containsKey('RESUMEN_ES')) {
      context.handle(_resumenESMeta,
          resumenES.isAcceptableOrUnknown(data['RESUMEN_ES']!, _resumenESMeta));
    }
    if (data.containsKey('RESUMEN_EN')) {
      context.handle(_resumenENMeta,
          resumenEN.isAcceptableOrUnknown(data['RESUMEN_EN']!, _resumenENMeta));
    }
    if (data.containsKey('RESUMEN_FR')) {
      context.handle(_resumenFRMeta,
          resumenFR.isAcceptableOrUnknown(data['RESUMEN_FR']!, _resumenFRMeta));
    }
    if (data.containsKey('RESUMEN_DE')) {
      context.handle(_resumenDEMeta,
          resumenDE.isAcceptableOrUnknown(data['RESUMEN_DE']!, _resumenDEMeta));
    }
    if (data.containsKey('RESUMEN_CA')) {
      context.handle(_resumenCAMeta,
          resumenCA.isAcceptableOrUnknown(data['RESUMEN_CA']!, _resumenCAMeta));
    }
    if (data.containsKey('RESUMEN_GB')) {
      context.handle(_resumenGBMeta,
          resumenGB.isAcceptableOrUnknown(data['RESUMEN_GB']!, _resumenGBMeta));
    }
    if (data.containsKey('RESUMEN_HU')) {
      context.handle(_resumenHUMeta,
          resumenHU.isAcceptableOrUnknown(data['RESUMEN_HU']!, _resumenHUMeta));
    }
    if (data.containsKey('RESUMEN_IT')) {
      context.handle(_resumenITMeta,
          resumenIT.isAcceptableOrUnknown(data['RESUMEN_IT']!, _resumenITMeta));
    }
    if (data.containsKey('RESUMEN_NL')) {
      context.handle(_resumenNLMeta,
          resumenNL.isAcceptableOrUnknown(data['RESUMEN_NL']!, _resumenNLMeta));
    }
    if (data.containsKey('RESUMEN_PL')) {
      context.handle(_resumenPLMeta,
          resumenPL.isAcceptableOrUnknown(data['RESUMEN_PL']!, _resumenPLMeta));
    }
    if (data.containsKey('RESUMEN_PT')) {
      context.handle(_resumenPTMeta,
          resumenPT.isAcceptableOrUnknown(data['RESUMEN_PT']!, _resumenPTMeta));
    }
    if (data.containsKey('RESUMEN_RO')) {
      context.handle(_resumenROMeta,
          resumenRO.isAcceptableOrUnknown(data['RESUMEN_RO']!, _resumenROMeta));
    }
    if (data.containsKey('RESUMEN_RU')) {
      context.handle(_resumenRUMeta,
          resumenRU.isAcceptableOrUnknown(data['RESUMEN_RU']!, _resumenRUMeta));
    }
    if (data.containsKey('RESUMEN_CN')) {
      context.handle(_resumenCNMeta,
          resumenCN.isAcceptableOrUnknown(data['RESUMEN_CN']!, _resumenCNMeta));
    }
    if (data.containsKey('RESUMEN_EL')) {
      context.handle(_resumenELMeta,
          resumenEL.isAcceptableOrUnknown(data['RESUMEN_EL']!, _resumenELMeta));
    }
    if (data.containsKey('STOCK_DISPONIBLE')) {
      context.handle(
          _stockDisponibleMeta,
          stockDisponible.isAcceptableOrUnknown(
              data['STOCK_DISPONIBLE']!, _stockDisponibleMeta));
    } else if (isInserting) {
      context.missing(_stockDisponibleMeta);
    }
    if (data.containsKey('VENTAS_ACTUAL')) {
      context.handle(
          _ventasActualMeta,
          ventasActual.isAcceptableOrUnknown(
              data['VENTAS_ACTUAL']!, _ventasActualMeta));
    } else if (isInserting) {
      context.missing(_ventasActualMeta);
    }
    if (data.containsKey('VENTAS_ANTERIOR')) {
      context.handle(
          _ventasAnteriorMeta,
          ventasAnterior.isAcceptableOrUnknown(
              data['VENTAS_ANTERIOR']!, _ventasAnteriorMeta));
    } else if (isInserting) {
      context.missing(_ventasAnteriorMeta);
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_1')) {
      context.handle(
          _comprasEntregaCantidad1Meta,
          comprasEntregaCantidad1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_1']!,
              _comprasEntregaCantidad1Meta));
    } else if (isInserting) {
      context.missing(_comprasEntregaCantidad1Meta);
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_2')) {
      context.handle(
          _comprasEntregaCantidad2Meta,
          comprasEntregaCantidad2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_2']!,
              _comprasEntregaCantidad2Meta));
    } else if (isInserting) {
      context.missing(_comprasEntregaCantidad2Meta);
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_3')) {
      context.handle(
          _comprasEntregaCantidad3Meta,
          comprasEntregaCantidad3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_3']!,
              _comprasEntregaCantidad3Meta));
    } else if (isInserting) {
      context.missing(_comprasEntregaCantidad3Meta);
    }
    if (data.containsKey('COMPRAS_ENTREGA_CANTIDAD_MAS_3')) {
      context.handle(
          _comprasEntregaCantidadMas3Meta,
          comprasEntregaCantidadMas3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_CANTIDAD_MAS_3']!,
              _comprasEntregaCantidadMas3Meta));
    } else if (isInserting) {
      context.missing(_comprasEntregaCantidadMas3Meta);
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_1')) {
      context.handle(
          _comprasEntregaFecha1Meta,
          comprasEntregaFecha1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_1']!, _comprasEntregaFecha1Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_2')) {
      context.handle(
          _comprasEntregaFecha2Meta,
          comprasEntregaFecha2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_2']!, _comprasEntregaFecha2Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_FECHA_3')) {
      context.handle(
          _comprasEntregaFecha3Meta,
          comprasEntregaFecha3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_FECHA_3']!, _comprasEntregaFecha3Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_1')) {
      context.handle(
          _comprasEntregaEstado1Meta,
          comprasEntregaEstado1.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_1']!, _comprasEntregaEstado1Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_2')) {
      context.handle(
          _comprasEntregaEstado2Meta,
          comprasEntregaEstado2.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_2']!, _comprasEntregaEstado2Meta));
    }
    if (data.containsKey('COMPRAS_ENTREGA_ESTADO_3')) {
      context.handle(
          _comprasEntregaEstado3Meta,
          comprasEntregaEstado3.isAcceptableOrUnknown(
              data['COMPRAS_ENTREGA_ESTADO_3']!, _comprasEntregaEstado3Meta));
    }
    if (data.containsKey('IMAGEN_PRINCIPAL')) {
      context.handle(
          _imagenPrincipalMeta,
          imagenPrincipal.isAcceptableOrUnknown(
              data['IMAGEN_PRINCIPAL']!, _imagenPrincipalMeta));
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
  ArticuloDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      familiaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID']),
      subfamiliaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID']),
      ventaMinimo: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}VENTA_MINIMO'])!,
      ventaMultiplo: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}VENTA_MULTIPLO'])!,
      unidadesSubcaja: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}UNIDADES_SUBCAJA'])!,
      unidadesCaja: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}UNIDADES_CAJA'])!,
      unidadesPalet: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}UNIDADES_PALET'])!,
      activoWeb: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ACTIVO_WEB'])!,
      activoApp: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ACTIVO_APP'])!,
      enCatalogo: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EN_CATALOGO'])!,
      descatalogado: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCATALOGADO'])!,
      paginaEnCatalgo: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PAGINA_EN_CATALOGO']),
      paginaEnCatalgo2: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}PAGINA_EN_CATALOGO2']),
      pesoKg: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PESO_KG'])!,
      largoCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LARGO_CM'])!,
      anchoCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ANCHO_CM'])!,
      altoCm: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ALTO_CM'])!,
      resumenES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_ES']),
      resumenEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_EN']),
      resumenFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_FR']),
      resumenDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_DE']),
      resumenCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_CA']),
      resumenGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_GB']),
      resumenHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_HU']),
      resumenIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_IT']),
      resumenNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_NL']),
      resumenPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_PL']),
      resumenPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_PT']),
      resumenRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_RO']),
      resumenRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_RU']),
      resumenCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_CN']),
      resumenEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN_EL']),
      stockDisponible: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}STOCK_DISPONIBLE'])!,
      ventasActual: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}VENTAS_ACTUAL'])!,
      ventasAnterior: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}VENTAS_ANTERIOR'])!,
      comprasEntregaCantidad1: attachedDatabase.options.types.read(
          DriftSqlType.int,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_1'])!,
      comprasEntregaCantidad2: attachedDatabase.options.types.read(
          DriftSqlType.int,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_2'])!,
      comprasEntregaCantidad3: attachedDatabase.options.types.read(
          DriftSqlType.int,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_3'])!,
      comprasEntregaCantidadMas3: attachedDatabase.options.types.read(
          DriftSqlType.int,
          data['${effectivePrefix}COMPRAS_ENTREGA_CANTIDAD_MAS_3'])!,
      comprasEntregaFecha1: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_1']),
      comprasEntregaFecha2: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_2']),
      comprasEntregaFecha3: attachedDatabase.options.types.read(
          DriftSqlType.dateTime,
          data['${effectivePrefix}COMPRAS_ENTREGA_FECHA_3']),
      comprasEntregaEstado1: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_1']),
      comprasEntregaEstado2: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_2']),
      comprasEntregaEstado3: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}COMPRAS_ENTREGA_ESTADO_3']),
      imagenPrincipal: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}IMAGEN_PRINCIPAL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloTableTable createAlias(String alias) {
    return $ArticuloTableTable(attachedDatabase, alias);
  }
}

class ArticuloComponenteTableCompanion
    extends UpdateCompanion<ArticuloComponenteDTO> {
  final Value<String> articuloId;
  final Value<String> articuloComponenteId;
  final Value<int> cantidad;
  final Value<String> descripcionES;
  final Value<String?> descripcionEN;
  final Value<String?> descripcionFR;
  final Value<String?> descripcionDE;
  final Value<String?> descripcionCA;
  final Value<String?> descripcionGB;
  final Value<String?> descripcionHU;
  final Value<String?> descripcionIT;
  final Value<String?> descripcionNL;
  final Value<String?> descripcionPL;
  final Value<String?> descripcionPT;
  final Value<String?> descripcionRO;
  final Value<String?> descripcionRU;
  final Value<String?> descripcionCN;
  final Value<String?> descripcionEL;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloComponenteTableCompanion({
    this.articuloId = const Value.absent(),
    this.articuloComponenteId = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.descripcionES = const Value.absent(),
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloComponenteTableCompanion.insert({
    required String articuloId,
    required String articuloComponenteId,
    required int cantidad,
    required String descripcionES,
    this.descripcionEN = const Value.absent(),
    this.descripcionFR = const Value.absent(),
    this.descripcionDE = const Value.absent(),
    this.descripcionCA = const Value.absent(),
    this.descripcionGB = const Value.absent(),
    this.descripcionHU = const Value.absent(),
    this.descripcionIT = const Value.absent(),
    this.descripcionNL = const Value.absent(),
    this.descripcionPL = const Value.absent(),
    this.descripcionPT = const Value.absent(),
    this.descripcionRO = const Value.absent(),
    this.descripcionRU = const Value.absent(),
    this.descripcionCN = const Value.absent(),
    this.descripcionEL = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        articuloComponenteId = Value(articuloComponenteId),
        cantidad = Value(cantidad),
        descripcionES = Value(descripcionES),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloComponenteDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? articuloComponenteId,
    Expression<int>? cantidad,
    Expression<String>? descripcionES,
    Expression<String>? descripcionEN,
    Expression<String>? descripcionFR,
    Expression<String>? descripcionDE,
    Expression<String>? descripcionCA,
    Expression<String>? descripcionGB,
    Expression<String>? descripcionHU,
    Expression<String>? descripcionIT,
    Expression<String>? descripcionNL,
    Expression<String>? descripcionPL,
    Expression<String>? descripcionPT,
    Expression<String>? descripcionRO,
    Expression<String>? descripcionRU,
    Expression<String>? descripcionCN,
    Expression<String>? descripcionEL,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (articuloComponenteId != null)
        'ARTICULO_COMPONENTE_ID': articuloComponenteId,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (descripcionES != null) 'DESCRIPCION_ES': descripcionES,
      if (descripcionEN != null) 'DESCRIPCION_EN': descripcionEN,
      if (descripcionFR != null) 'DESCRIPCION_FR': descripcionFR,
      if (descripcionDE != null) 'DESCRIPCION_DE': descripcionDE,
      if (descripcionCA != null) 'DESCRIPCION_CA': descripcionCA,
      if (descripcionGB != null) 'DESCRIPCION_GB': descripcionGB,
      if (descripcionHU != null) 'DESCRIPCION_HU': descripcionHU,
      if (descripcionIT != null) 'DESCRIPCION_IT': descripcionIT,
      if (descripcionNL != null) 'DESCRIPCION_NL': descripcionNL,
      if (descripcionPL != null) 'DESCRIPCION_PL': descripcionPL,
      if (descripcionPT != null) 'DESCRIPCION_PT': descripcionPT,
      if (descripcionRO != null) 'DESCRIPCION_RO': descripcionRO,
      if (descripcionRU != null) 'DESCRIPCION_RU': descripcionRU,
      if (descripcionCN != null) 'DESCRIPCION_CN': descripcionCN,
      if (descripcionEL != null) 'DESCRIPCION_EL': descripcionEL,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloComponenteTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? articuloComponenteId,
      Value<int>? cantidad,
      Value<String>? descripcionES,
      Value<String?>? descripcionEN,
      Value<String?>? descripcionFR,
      Value<String?>? descripcionDE,
      Value<String?>? descripcionCA,
      Value<String?>? descripcionGB,
      Value<String?>? descripcionHU,
      Value<String?>? descripcionIT,
      Value<String?>? descripcionNL,
      Value<String?>? descripcionPL,
      Value<String?>? descripcionPT,
      Value<String?>? descripcionRO,
      Value<String?>? descripcionRU,
      Value<String?>? descripcionCN,
      Value<String?>? descripcionEL,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloComponenteTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      articuloComponenteId: articuloComponenteId ?? this.articuloComponenteId,
      cantidad: cantidad ?? this.cantidad,
      descripcionES: descripcionES ?? this.descripcionES,
      descripcionEN: descripcionEN ?? this.descripcionEN,
      descripcionFR: descripcionFR ?? this.descripcionFR,
      descripcionDE: descripcionDE ?? this.descripcionDE,
      descripcionCA: descripcionCA ?? this.descripcionCA,
      descripcionGB: descripcionGB ?? this.descripcionGB,
      descripcionHU: descripcionHU ?? this.descripcionHU,
      descripcionIT: descripcionIT ?? this.descripcionIT,
      descripcionNL: descripcionNL ?? this.descripcionNL,
      descripcionPL: descripcionPL ?? this.descripcionPL,
      descripcionPT: descripcionPT ?? this.descripcionPT,
      descripcionRO: descripcionRO ?? this.descripcionRO,
      descripcionRU: descripcionRU ?? this.descripcionRU,
      descripcionCN: descripcionCN ?? this.descripcionCN,
      descripcionEL: descripcionEL ?? this.descripcionEL,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (articuloComponenteId.present) {
      map['ARTICULO_COMPONENTE_ID'] =
          Variable<String>(articuloComponenteId.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
    }
    if (descripcionES.present) {
      map['DESCRIPCION_ES'] = Variable<String>(descripcionES.value);
    }
    if (descripcionEN.present) {
      map['DESCRIPCION_EN'] = Variable<String>(descripcionEN.value);
    }
    if (descripcionFR.present) {
      map['DESCRIPCION_FR'] = Variable<String>(descripcionFR.value);
    }
    if (descripcionDE.present) {
      map['DESCRIPCION_DE'] = Variable<String>(descripcionDE.value);
    }
    if (descripcionCA.present) {
      map['DESCRIPCION_CA'] = Variable<String>(descripcionCA.value);
    }
    if (descripcionGB.present) {
      map['DESCRIPCION_GB'] = Variable<String>(descripcionGB.value);
    }
    if (descripcionHU.present) {
      map['DESCRIPCION_HU'] = Variable<String>(descripcionHU.value);
    }
    if (descripcionIT.present) {
      map['DESCRIPCION_IT'] = Variable<String>(descripcionIT.value);
    }
    if (descripcionNL.present) {
      map['DESCRIPCION_NL'] = Variable<String>(descripcionNL.value);
    }
    if (descripcionPL.present) {
      map['DESCRIPCION_PL'] = Variable<String>(descripcionPL.value);
    }
    if (descripcionPT.present) {
      map['DESCRIPCION_PT'] = Variable<String>(descripcionPT.value);
    }
    if (descripcionRO.present) {
      map['DESCRIPCION_RO'] = Variable<String>(descripcionRO.value);
    }
    if (descripcionRU.present) {
      map['DESCRIPCION_RU'] = Variable<String>(descripcionRU.value);
    }
    if (descripcionCN.present) {
      map['DESCRIPCION_CN'] = Variable<String>(descripcionCN.value);
    }
    if (descripcionEL.present) {
      map['DESCRIPCION_EL'] = Variable<String>(descripcionEL.value);
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
    return (StringBuffer('ArticuloComponenteTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('articuloComponenteId: $articuloComponenteId, ')
          ..write('cantidad: $cantidad, ')
          ..write('descripcionES: $descripcionES, ')
          ..write('descripcionEN: $descripcionEN, ')
          ..write('descripcionFR: $descripcionFR, ')
          ..write('descripcionDE: $descripcionDE, ')
          ..write('descripcionCA: $descripcionCA, ')
          ..write('descripcionGB: $descripcionGB, ')
          ..write('descripcionHU: $descripcionHU, ')
          ..write('descripcionIT: $descripcionIT, ')
          ..write('descripcionNL: $descripcionNL, ')
          ..write('descripcionPL: $descripcionPL, ')
          ..write('descripcionPT: $descripcionPT, ')
          ..write('descripcionRO: $descripcionRO, ')
          ..write('descripcionRU: $descripcionRU, ')
          ..write('descripcionCN: $descripcionCN, ')
          ..write('descripcionEL: $descripcionEL, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloComponenteTableTable extends ArticuloComponenteTable
    with TableInfo<$ArticuloComponenteTableTable, ArticuloComponenteDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloComponenteTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloComponenteIdMeta =
      const VerificationMeta('articuloComponenteId');
  @override
  late final GeneratedColumn<String> articuloComponenteId =
      GeneratedColumn<String>('ARTICULO_COMPONENTE_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadMeta = const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _descripcionESMeta =
      const VerificationMeta('descripcionES');
  @override
  late final GeneratedColumn<String> descripcionES = GeneratedColumn<String>(
      'DESCRIPCION_ES', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionENMeta =
      const VerificationMeta('descripcionEN');
  @override
  late final GeneratedColumn<String> descripcionEN = GeneratedColumn<String>(
      'DESCRIPCION_EN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionFRMeta =
      const VerificationMeta('descripcionFR');
  @override
  late final GeneratedColumn<String> descripcionFR = GeneratedColumn<String>(
      'DESCRIPCION_FR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionDEMeta =
      const VerificationMeta('descripcionDE');
  @override
  late final GeneratedColumn<String> descripcionDE = GeneratedColumn<String>(
      'DESCRIPCION_DE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCAMeta =
      const VerificationMeta('descripcionCA');
  @override
  late final GeneratedColumn<String> descripcionCA = GeneratedColumn<String>(
      'DESCRIPCION_CA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionGBMeta =
      const VerificationMeta('descripcionGB');
  @override
  late final GeneratedColumn<String> descripcionGB = GeneratedColumn<String>(
      'DESCRIPCION_GB', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionHUMeta =
      const VerificationMeta('descripcionHU');
  @override
  late final GeneratedColumn<String> descripcionHU = GeneratedColumn<String>(
      'DESCRIPCION_HU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionITMeta =
      const VerificationMeta('descripcionIT');
  @override
  late final GeneratedColumn<String> descripcionIT = GeneratedColumn<String>(
      'DESCRIPCION_IT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionNLMeta =
      const VerificationMeta('descripcionNL');
  @override
  late final GeneratedColumn<String> descripcionNL = GeneratedColumn<String>(
      'DESCRIPCION_NL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPLMeta =
      const VerificationMeta('descripcionPL');
  @override
  late final GeneratedColumn<String> descripcionPL = GeneratedColumn<String>(
      'DESCRIPCION_PL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionPTMeta =
      const VerificationMeta('descripcionPT');
  @override
  late final GeneratedColumn<String> descripcionPT = GeneratedColumn<String>(
      'DESCRIPCION_PT', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionROMeta =
      const VerificationMeta('descripcionRO');
  @override
  late final GeneratedColumn<String> descripcionRO = GeneratedColumn<String>(
      'DESCRIPCION_RO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionRUMeta =
      const VerificationMeta('descripcionRU');
  @override
  late final GeneratedColumn<String> descripcionRU = GeneratedColumn<String>(
      'DESCRIPCION_RU', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionCNMeta =
      const VerificationMeta('descripcionCN');
  @override
  late final GeneratedColumn<String> descripcionCN = GeneratedColumn<String>(
      'DESCRIPCION_CN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _descripcionELMeta =
      const VerificationMeta('descripcionEL');
  @override
  late final GeneratedColumn<String> descripcionEL = GeneratedColumn<String>(
      'DESCRIPCION_EL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        articuloId,
        articuloComponenteId,
        cantidad,
        descripcionES,
        descripcionEN,
        descripcionFR,
        descripcionDE,
        descripcionCA,
        descripcionGB,
        descripcionHU,
        descripcionIT,
        descripcionNL,
        descripcionPL,
        descripcionPT,
        descripcionRO,
        descripcionRU,
        descripcionCN,
        descripcionEL,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_COMPONENTES';
  @override
  String get actualTableName => 'ARTICULOS_COMPONENTES';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloComponenteDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('ARTICULO_COMPONENTE_ID')) {
      context.handle(
          _articuloComponenteIdMeta,
          articuloComponenteId.isAcceptableOrUnknown(
              data['ARTICULO_COMPONENTE_ID']!, _articuloComponenteIdMeta));
    } else if (isInserting) {
      context.missing(_articuloComponenteIdMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    if (data.containsKey('DESCRIPCION_ES')) {
      context.handle(
          _descripcionESMeta,
          descripcionES.isAcceptableOrUnknown(
              data['DESCRIPCION_ES']!, _descripcionESMeta));
    } else if (isInserting) {
      context.missing(_descripcionESMeta);
    }
    if (data.containsKey('DESCRIPCION_EN')) {
      context.handle(
          _descripcionENMeta,
          descripcionEN.isAcceptableOrUnknown(
              data['DESCRIPCION_EN']!, _descripcionENMeta));
    }
    if (data.containsKey('DESCRIPCION_FR')) {
      context.handle(
          _descripcionFRMeta,
          descripcionFR.isAcceptableOrUnknown(
              data['DESCRIPCION_FR']!, _descripcionFRMeta));
    }
    if (data.containsKey('DESCRIPCION_DE')) {
      context.handle(
          _descripcionDEMeta,
          descripcionDE.isAcceptableOrUnknown(
              data['DESCRIPCION_DE']!, _descripcionDEMeta));
    }
    if (data.containsKey('DESCRIPCION_CA')) {
      context.handle(
          _descripcionCAMeta,
          descripcionCA.isAcceptableOrUnknown(
              data['DESCRIPCION_CA']!, _descripcionCAMeta));
    }
    if (data.containsKey('DESCRIPCION_GB')) {
      context.handle(
          _descripcionGBMeta,
          descripcionGB.isAcceptableOrUnknown(
              data['DESCRIPCION_GB']!, _descripcionGBMeta));
    }
    if (data.containsKey('DESCRIPCION_HU')) {
      context.handle(
          _descripcionHUMeta,
          descripcionHU.isAcceptableOrUnknown(
              data['DESCRIPCION_HU']!, _descripcionHUMeta));
    }
    if (data.containsKey('DESCRIPCION_IT')) {
      context.handle(
          _descripcionITMeta,
          descripcionIT.isAcceptableOrUnknown(
              data['DESCRIPCION_IT']!, _descripcionITMeta));
    }
    if (data.containsKey('DESCRIPCION_NL')) {
      context.handle(
          _descripcionNLMeta,
          descripcionNL.isAcceptableOrUnknown(
              data['DESCRIPCION_NL']!, _descripcionNLMeta));
    }
    if (data.containsKey('DESCRIPCION_PL')) {
      context.handle(
          _descripcionPLMeta,
          descripcionPL.isAcceptableOrUnknown(
              data['DESCRIPCION_PL']!, _descripcionPLMeta));
    }
    if (data.containsKey('DESCRIPCION_PT')) {
      context.handle(
          _descripcionPTMeta,
          descripcionPT.isAcceptableOrUnknown(
              data['DESCRIPCION_PT']!, _descripcionPTMeta));
    }
    if (data.containsKey('DESCRIPCION_RO')) {
      context.handle(
          _descripcionROMeta,
          descripcionRO.isAcceptableOrUnknown(
              data['DESCRIPCION_RO']!, _descripcionROMeta));
    }
    if (data.containsKey('DESCRIPCION_RU')) {
      context.handle(
          _descripcionRUMeta,
          descripcionRU.isAcceptableOrUnknown(
              data['DESCRIPCION_RU']!, _descripcionRUMeta));
    }
    if (data.containsKey('DESCRIPCION_CN')) {
      context.handle(
          _descripcionCNMeta,
          descripcionCN.isAcceptableOrUnknown(
              data['DESCRIPCION_CN']!, _descripcionCNMeta));
    }
    if (data.containsKey('DESCRIPCION_EL')) {
      context.handle(
          _descripcionELMeta,
          descripcionEL.isAcceptableOrUnknown(
              data['DESCRIPCION_EL']!, _descripcionELMeta));
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
  Set<GeneratedColumn> get $primaryKey => {articuloId, articuloComponenteId};
  @override
  ArticuloComponenteDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloComponenteDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articuloComponenteId: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}ARTICULO_COMPONENTE_ID'])!,
      cantidad: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      descripcionES: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_ES'])!,
      descripcionEN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EN']),
      descripcionFR: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_FR']),
      descripcionDE: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_DE']),
      descripcionCA: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CA']),
      descripcionGB: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_GB']),
      descripcionHU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_HU']),
      descripcionIT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_IT']),
      descripcionNL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_NL']),
      descripcionPL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PL']),
      descripcionPT: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_PT']),
      descripcionRO: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RO']),
      descripcionRU: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_RU']),
      descripcionCN: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_CN']),
      descripcionEL: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION_EL']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloComponenteTableTable createAlias(String alias) {
    return $ArticuloComponenteTableTable(attachedDatabase, alias);
  }
}

class ArticuloEmpresaIvaTableCompanion
    extends UpdateCompanion<ArticuloEmpresaIvaDTO> {
  final Value<String> articuloId;
  final Value<String> empresaId;
  final Value<double> iva;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloEmpresaIvaTableCompanion({
    this.articuloId = const Value.absent(),
    this.empresaId = const Value.absent(),
    this.iva = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloEmpresaIvaTableCompanion.insert({
    required String articuloId,
    required String empresaId,
    required double iva,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        empresaId = Value(empresaId),
        iva = Value(iva),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloEmpresaIvaDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? empresaId,
    Expression<double>? iva,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (iva != null) 'IVA': iva,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloEmpresaIvaTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? empresaId,
      Value<double>? iva,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloEmpresaIvaTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      empresaId: empresaId ?? this.empresaId,
      iva: iva ?? this.iva,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
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
    return (StringBuffer('ArticuloEmpresaIvaTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('empresaId: $empresaId, ')
          ..write('iva: $iva, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloEmpresaIvaTableTable extends ArticuloEmpresaIvaTable
    with TableInfo<$ArticuloEmpresaIvaTableTable, ArticuloEmpresaIvaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloEmpresaIvaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articuloId, empresaId, iva, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_EMPRESAS_IVA';
  @override
  String get actualTableName => 'ARTICULOS_EMPRESAS_IVA';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloEmpresaIvaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
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
  Set<GeneratedColumn> get $primaryKey => {articuloId, empresaId};
  @override
  ArticuloEmpresaIvaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloEmpresaIvaDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloEmpresaIvaTableTable createAlias(String alias) {
    return $ArticuloEmpresaIvaTableTable(attachedDatabase, alias);
  }
}

class ArticuloRecambioTableCompanion
    extends UpdateCompanion<ArticuloRecambioDTO> {
  final Value<String> articuloId;
  final Value<String> id;
  final Value<String> descripcion;
  final Value<int> cantidad;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloRecambioTableCompanion({
    this.articuloId = const Value.absent(),
    this.id = const Value.absent(),
    this.descripcion = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloRecambioTableCompanion.insert({
    required String articuloId,
    required String id,
    required String descripcion,
    required int cantidad,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        id = Value(id),
        descripcion = Value(descripcion),
        cantidad = Value(cantidad),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloRecambioDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? id,
    Expression<String>? descripcion,
    Expression<int>? cantidad,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (id != null) 'RECAMBIO_ID': id,
      if (descripcion != null) 'DESCRIPCION': descripcion,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloRecambioTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? id,
      Value<String>? descripcion,
      Value<int>? cantidad,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloRecambioTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      id: id ?? this.id,
      descripcion: descripcion ?? this.descripcion,
      cantidad: cantidad ?? this.cantidad,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (id.present) {
      map['RECAMBIO_ID'] = Variable<String>(id.value);
    }
    if (descripcion.present) {
      map['DESCRIPCION'] = Variable<String>(descripcion.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
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
    return (StringBuffer('ArticuloRecambioTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('id: $id, ')
          ..write('descripcion: $descripcion, ')
          ..write('cantidad: $cantidad, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloRecambioTableTable extends ArticuloRecambioTable
    with TableInfo<$ArticuloRecambioTableTable, ArticuloRecambioDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloRecambioTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'RECAMBIO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descripcionMeta =
      const VerificationMeta('descripcion');
  @override
  late final GeneratedColumn<String> descripcion = GeneratedColumn<String>(
      'DESCRIPCION', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadMeta = const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articuloId, id, descripcion, cantidad, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_RECAMBIOS';
  @override
  String get actualTableName => 'ARTICULOS_RECAMBIOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloRecambioDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('RECAMBIO_ID')) {
      context.handle(
          _idMeta, id.isAcceptableOrUnknown(data['RECAMBIO_ID']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('DESCRIPCION')) {
      context.handle(
          _descripcionMeta,
          descripcion.isAcceptableOrUnknown(
              data['DESCRIPCION']!, _descripcionMeta));
    } else if (isInserting) {
      context.missing(_descripcionMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
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
  Set<GeneratedColumn> get $primaryKey => {articuloId, id};
  @override
  ArticuloRecambioDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloRecambioDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RECAMBIO_ID'])!,
      descripcion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DESCRIPCION'])!,
      cantidad: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloRecambioTableTable createAlias(String alias) {
    return $ArticuloRecambioTableTable(attachedDatabase, alias);
  }
}

class ArticuloSustitutivoTableCompanion
    extends UpdateCompanion<ArticuloSustitutivoDTO> {
  final Value<String> articuloId;
  final Value<String> articuloSustitutivoId;
  final Value<int> orden;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloSustitutivoTableCompanion({
    this.articuloId = const Value.absent(),
    this.articuloSustitutivoId = const Value.absent(),
    this.orden = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloSustitutivoTableCompanion.insert({
    required String articuloId,
    required String articuloSustitutivoId,
    required int orden,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        articuloSustitutivoId = Value(articuloSustitutivoId),
        orden = Value(orden),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloSustitutivoDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? articuloSustitutivoId,
    Expression<int>? orden,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (articuloSustitutivoId != null)
        'ARTICULO_ID_SUSTITUTIVO': articuloSustitutivoId,
      if (orden != null) 'ORDEN': orden,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloSustitutivoTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? articuloSustitutivoId,
      Value<int>? orden,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloSustitutivoTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      articuloSustitutivoId:
          articuloSustitutivoId ?? this.articuloSustitutivoId,
      orden: orden ?? this.orden,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (articuloSustitutivoId.present) {
      map['ARTICULO_ID_SUSTITUTIVO'] =
          Variable<String>(articuloSustitutivoId.value);
    }
    if (orden.present) {
      map['ORDEN'] = Variable<int>(orden.value);
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
    return (StringBuffer('ArticuloSustitutivoTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('articuloSustitutivoId: $articuloSustitutivoId, ')
          ..write('orden: $orden, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloSustitutivoTableTable extends ArticuloSustitutivoTable
    with TableInfo<$ArticuloSustitutivoTableTable, ArticuloSustitutivoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloSustitutivoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloSustitutivoIdMeta =
      const VerificationMeta('articuloSustitutivoId');
  @override
  late final GeneratedColumn<String> articuloSustitutivoId =
      GeneratedColumn<String>('ARTICULO_ID_SUSTITUTIVO', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _ordenMeta = const VerificationMeta('orden');
  @override
  late final GeneratedColumn<int> orden = GeneratedColumn<int>(
      'ORDEN', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns =>
      [articuloId, articuloSustitutivoId, orden, lastUpdated, deleted];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_SUSTITUTIVOS';
  @override
  String get actualTableName => 'ARTICULOS_SUSTITUTIVOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloSustitutivoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('ARTICULO_ID_SUSTITUTIVO')) {
      context.handle(
          _articuloSustitutivoIdMeta,
          articuloSustitutivoId.isAcceptableOrUnknown(
              data['ARTICULO_ID_SUSTITUTIVO']!, _articuloSustitutivoIdMeta));
    } else if (isInserting) {
      context.missing(_articuloSustitutivoIdMeta);
    }
    if (data.containsKey('ORDEN')) {
      context.handle(
          _ordenMeta, orden.isAcceptableOrUnknown(data['ORDEN']!, _ordenMeta));
    } else if (isInserting) {
      context.missing(_ordenMeta);
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
  Set<GeneratedColumn> get $primaryKey => {articuloId, articuloSustitutivoId};
  @override
  ArticuloSustitutivoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloSustitutivoDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      articuloSustitutivoId: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}ARTICULO_ID_SUSTITUTIVO'])!,
      orden: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ORDEN'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloSustitutivoTableTable createAlias(String alias) {
    return $ArticuloSustitutivoTableTable(attachedDatabase, alias);
  }
}

class ArticuloPrecioTarifaTableCompanion
    extends UpdateCompanion<ArticuloPrecioTarifaDTO> {
  final Value<String> articuloId;
  final Value<String> tarifaId;
  final Value<String?> tarifaDescripcion;
  final Value<int> cantidadDesde;
  final Value<double> precio;
  final Value<String> divisaId;
  final Value<int> tipoPrecio;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloPrecioTarifaTableCompanion({
    this.articuloId = const Value.absent(),
    this.tarifaId = const Value.absent(),
    this.tarifaDescripcion = const Value.absent(),
    this.cantidadDesde = const Value.absent(),
    this.precio = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloPrecioTarifaTableCompanion.insert({
    required String articuloId,
    required String tarifaId,
    this.tarifaDescripcion = const Value.absent(),
    required int cantidadDesde,
    required double precio,
    required String divisaId,
    required int tipoPrecio,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        tarifaId = Value(tarifaId),
        cantidadDesde = Value(cantidadDesde),
        precio = Value(precio),
        divisaId = Value(divisaId),
        tipoPrecio = Value(tipoPrecio),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloPrecioTarifaDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? tarifaId,
    Expression<String>? tarifaDescripcion,
    Expression<int>? cantidadDesde,
    Expression<double>? precio,
    Expression<String>? divisaId,
    Expression<int>? tipoPrecio,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (tarifaId != null) 'TARIFA_ID': tarifaId,
      if (tarifaDescripcion != null) 'TARIFA_DESCRIPCION': tarifaDescripcion,
      if (cantidadDesde != null) 'CANTIDAD_DESDE': cantidadDesde,
      if (precio != null) 'PRECIO': precio,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (tipoPrecio != null) 'TIPO_PRECIO': tipoPrecio,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloPrecioTarifaTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? tarifaId,
      Value<String?>? tarifaDescripcion,
      Value<int>? cantidadDesde,
      Value<double>? precio,
      Value<String>? divisaId,
      Value<int>? tipoPrecio,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloPrecioTarifaTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      tarifaId: tarifaId ?? this.tarifaId,
      tarifaDescripcion: tarifaDescripcion ?? this.tarifaDescripcion,
      cantidadDesde: cantidadDesde ?? this.cantidadDesde,
      precio: precio ?? this.precio,
      divisaId: divisaId ?? this.divisaId,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (tarifaId.present) {
      map['TARIFA_ID'] = Variable<String>(tarifaId.value);
    }
    if (tarifaDescripcion.present) {
      map['TARIFA_DESCRIPCION'] = Variable<String>(tarifaDescripcion.value);
    }
    if (cantidadDesde.present) {
      map['CANTIDAD_DESDE'] = Variable<int>(cantidadDesde.value);
    }
    if (precio.present) {
      map['PRECIO'] = Variable<double>(precio.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (tipoPrecio.present) {
      map['TIPO_PRECIO'] = Variable<int>(tipoPrecio.value);
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
    return (StringBuffer('ArticuloPrecioTarifaTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('tarifaId: $tarifaId, ')
          ..write('tarifaDescripcion: $tarifaDescripcion, ')
          ..write('cantidadDesde: $cantidadDesde, ')
          ..write('precio: $precio, ')
          ..write('divisaId: $divisaId, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloPrecioTarifaTableTable extends ArticuloPrecioTarifaTable
    with TableInfo<$ArticuloPrecioTarifaTableTable, ArticuloPrecioTarifaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloPrecioTarifaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tarifaIdMeta = const VerificationMeta('tarifaId');
  @override
  late final GeneratedColumn<String> tarifaId = GeneratedColumn<String>(
      'TARIFA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tarifaDescripcionMeta =
      const VerificationMeta('tarifaDescripcion');
  @override
  late final GeneratedColumn<String> tarifaDescripcion =
      GeneratedColumn<String>('TARIFA_DESCRIPCION', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _cantidadDesdeMeta =
      const VerificationMeta('cantidadDesde');
  @override
  late final GeneratedColumn<int> cantidadDesde = GeneratedColumn<int>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _precioMeta = const VerificationMeta('precio');
  @override
  late final GeneratedColumn<double> precio = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        articuloId,
        tarifaId,
        tarifaDescripcion,
        cantidadDesde,
        precio,
        divisaId,
        tipoPrecio,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_TARIFA_PRECIO';
  @override
  String get actualTableName => 'ARTICULOS_TARIFA_PRECIO';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloPrecioTarifaDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('TARIFA_ID')) {
      context.handle(_tarifaIdMeta,
          tarifaId.isAcceptableOrUnknown(data['TARIFA_ID']!, _tarifaIdMeta));
    } else if (isInserting) {
      context.missing(_tarifaIdMeta);
    }
    if (data.containsKey('TARIFA_DESCRIPCION')) {
      context.handle(
          _tarifaDescripcionMeta,
          tarifaDescripcion.isAcceptableOrUnknown(
              data['TARIFA_DESCRIPCION']!, _tarifaDescripcionMeta));
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _cantidadDesdeMeta,
          cantidadDesde.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _cantidadDesdeMeta));
    } else if (isInserting) {
      context.missing(_cantidadDesdeMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(_precioMeta,
          precio.isAcceptableOrUnknown(data['PRECIO']!, _precioMeta));
    } else if (isInserting) {
      context.missing(_precioMeta);
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
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
  Set<GeneratedColumn> get $primaryKey => {articuloId, tarifaId, cantidadDesde};
  @override
  ArticuloPrecioTarifaDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloPrecioTarifaDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      tarifaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TARIFA_ID'])!,
      tarifaDescripcion: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}TARIFA_DESCRIPCION']),
      cantidadDesde: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      precio: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TIPO_PRECIO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloPrecioTarifaTableTable createAlias(String alias) {
    return $ArticuloPrecioTarifaTableTable(attachedDatabase, alias);
  }
}

class ArticuloGrupoNetoTableCompanion
    extends UpdateCompanion<ArticuloGrupoNetoDTO> {
  final Value<String> articuloId;
  final Value<String> grupoNetoId;
  final Value<String> grupoNetoDescripcion;
  final Value<int> cantidadDesde;
  final Value<double> precio;
  final Value<String> divisaId;
  final Value<int> tipoPrecio;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const ArticuloGrupoNetoTableCompanion({
    this.articuloId = const Value.absent(),
    this.grupoNetoId = const Value.absent(),
    this.grupoNetoDescripcion = const Value.absent(),
    this.cantidadDesde = const Value.absent(),
    this.precio = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  ArticuloGrupoNetoTableCompanion.insert({
    required String articuloId,
    required String grupoNetoId,
    required String grupoNetoDescripcion,
    required int cantidadDesde,
    required double precio,
    required String divisaId,
    required int tipoPrecio,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : articuloId = Value(articuloId),
        grupoNetoId = Value(grupoNetoId),
        grupoNetoDescripcion = Value(grupoNetoDescripcion),
        cantidadDesde = Value(cantidadDesde),
        precio = Value(precio),
        divisaId = Value(divisaId),
        tipoPrecio = Value(tipoPrecio),
        lastUpdated = Value(lastUpdated);
  static Insertable<ArticuloGrupoNetoDTO> custom({
    Expression<String>? articuloId,
    Expression<String>? grupoNetoId,
    Expression<String>? grupoNetoDescripcion,
    Expression<int>? cantidadDesde,
    Expression<double>? precio,
    Expression<String>? divisaId,
    Expression<int>? tipoPrecio,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (grupoNetoId != null) 'GRUPO_NETO_ID': grupoNetoId,
      if (grupoNetoDescripcion != null)
        'GRUPO_NETO_DESCRIPCION': grupoNetoDescripcion,
      if (cantidadDesde != null) 'CANTIDAD_DESDE': cantidadDesde,
      if (precio != null) 'PRECIO': precio,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (tipoPrecio != null) 'TIPO_PRECIO': tipoPrecio,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  ArticuloGrupoNetoTableCompanion copyWith(
      {Value<String>? articuloId,
      Value<String>? grupoNetoId,
      Value<String>? grupoNetoDescripcion,
      Value<int>? cantidadDesde,
      Value<double>? precio,
      Value<String>? divisaId,
      Value<int>? tipoPrecio,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return ArticuloGrupoNetoTableCompanion(
      articuloId: articuloId ?? this.articuloId,
      grupoNetoId: grupoNetoId ?? this.grupoNetoId,
      grupoNetoDescripcion: grupoNetoDescripcion ?? this.grupoNetoDescripcion,
      cantidadDesde: cantidadDesde ?? this.cantidadDesde,
      precio: precio ?? this.precio,
      divisaId: divisaId ?? this.divisaId,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (grupoNetoId.present) {
      map['GRUPO_NETO_ID'] = Variable<String>(grupoNetoId.value);
    }
    if (grupoNetoDescripcion.present) {
      map['GRUPO_NETO_DESCRIPCION'] =
          Variable<String>(grupoNetoDescripcion.value);
    }
    if (cantidadDesde.present) {
      map['CANTIDAD_DESDE'] = Variable<int>(cantidadDesde.value);
    }
    if (precio.present) {
      map['PRECIO'] = Variable<double>(precio.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (tipoPrecio.present) {
      map['TIPO_PRECIO'] = Variable<int>(tipoPrecio.value);
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
    return (StringBuffer('ArticuloGrupoNetoTableCompanion(')
          ..write('articuloId: $articuloId, ')
          ..write('grupoNetoId: $grupoNetoId, ')
          ..write('grupoNetoDescripcion: $grupoNetoDescripcion, ')
          ..write('cantidadDesde: $cantidadDesde, ')
          ..write('precio: $precio, ')
          ..write('divisaId: $divisaId, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $ArticuloGrupoNetoTableTable extends ArticuloGrupoNetoTable
    with TableInfo<$ArticuloGrupoNetoTableTable, ArticuloGrupoNetoDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ArticuloGrupoNetoTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _grupoNetoIdMeta =
      const VerificationMeta('grupoNetoId');
  @override
  late final GeneratedColumn<String> grupoNetoId = GeneratedColumn<String>(
      'GRUPO_NETO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _grupoNetoDescripcionMeta =
      const VerificationMeta('grupoNetoDescripcion');
  @override
  late final GeneratedColumn<String> grupoNetoDescripcion =
      GeneratedColumn<String>('GRUPO_NETO_DESCRIPCION', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadDesdeMeta =
      const VerificationMeta('cantidadDesde');
  @override
  late final GeneratedColumn<int> cantidadDesde = GeneratedColumn<int>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _precioMeta = const VerificationMeta('precio');
  @override
  late final GeneratedColumn<double> precio = GeneratedColumn<double>(
      'PRECIO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        articuloId,
        grupoNetoId,
        grupoNetoDescripcion,
        cantidadDesde,
        precio,
        divisaId,
        tipoPrecio,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ARTICULOS_GRUPOS_NETOS_PRECIO';
  @override
  String get actualTableName => 'ARTICULOS_GRUPOS_NETOS_PRECIO';
  @override
  VerificationContext validateIntegrity(
      Insertable<ArticuloGrupoNetoDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_ID')) {
      context.handle(
          _grupoNetoIdMeta,
          grupoNetoId.isAcceptableOrUnknown(
              data['GRUPO_NETO_ID']!, _grupoNetoIdMeta));
    } else if (isInserting) {
      context.missing(_grupoNetoIdMeta);
    }
    if (data.containsKey('GRUPO_NETO_DESCRIPCION')) {
      context.handle(
          _grupoNetoDescripcionMeta,
          grupoNetoDescripcion.isAcceptableOrUnknown(
              data['GRUPO_NETO_DESCRIPCION']!, _grupoNetoDescripcionMeta));
    } else if (isInserting) {
      context.missing(_grupoNetoDescripcionMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _cantidadDesdeMeta,
          cantidadDesde.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _cantidadDesdeMeta));
    } else if (isInserting) {
      context.missing(_cantidadDesdeMeta);
    }
    if (data.containsKey('PRECIO')) {
      context.handle(_precioMeta,
          precio.isAcceptableOrUnknown(data['PRECIO']!, _precioMeta));
    } else if (isInserting) {
      context.missing(_precioMeta);
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
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
      {articuloId, grupoNetoId, cantidadDesde};
  @override
  ArticuloGrupoNetoDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ArticuloGrupoNetoDTO(
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      grupoNetoId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}GRUPO_NETO_ID'])!,
      grupoNetoDescripcion: attachedDatabase.options.types.read(
          DriftSqlType.string,
          data['${effectivePrefix}GRUPO_NETO_DESCRIPCION'])!,
      cantidadDesde: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      precio: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO'])!,
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TIPO_PRECIO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $ArticuloGrupoNetoTableTable createAlias(String alias) {
    return $ArticuloGrupoNetoTableTable(attachedDatabase, alias);
  }
}

class EstadisticasClienteUsuarioVentasTableCompanion
    extends UpdateCompanion<EstadisticasVentaClienteUsuarioDTO> {
  final Value<double> anyo;
  final Value<double> mes;
  final Value<String> clienteId;
  final Value<String> articuloId;
  final Value<double?> unidades;
  final Value<double?> importe;
  final Value<double?> coste;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const EstadisticasClienteUsuarioVentasTableCompanion({
    this.anyo = const Value.absent(),
    this.mes = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.unidades = const Value.absent(),
    this.importe = const Value.absent(),
    this.coste = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  EstadisticasClienteUsuarioVentasTableCompanion.insert({
    required double anyo,
    required double mes,
    required String clienteId,
    required String articuloId,
    this.unidades = const Value.absent(),
    this.importe = const Value.absent(),
    this.coste = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : anyo = Value(anyo),
        mes = Value(mes),
        clienteId = Value(clienteId),
        articuloId = Value(articuloId),
        lastUpdated = Value(lastUpdated);
  static Insertable<EstadisticasVentaClienteUsuarioDTO> custom({
    Expression<double>? anyo,
    Expression<double>? mes,
    Expression<String>? clienteId,
    Expression<String>? articuloId,
    Expression<double>? unidades,
    Expression<double>? importe,
    Expression<double>? coste,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (anyo != null) 'ANYO': anyo,
      if (mes != null) 'MES': mes,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (unidades != null) 'UNIDADES': unidades,
      if (importe != null) 'IMPORTE': importe,
      if (coste != null) 'COSTE': coste,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  EstadisticasClienteUsuarioVentasTableCompanion copyWith(
      {Value<double>? anyo,
      Value<double>? mes,
      Value<String>? clienteId,
      Value<String>? articuloId,
      Value<double?>? unidades,
      Value<double?>? importe,
      Value<double?>? coste,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return EstadisticasClienteUsuarioVentasTableCompanion(
      anyo: anyo ?? this.anyo,
      mes: mes ?? this.mes,
      clienteId: clienteId ?? this.clienteId,
      articuloId: articuloId ?? this.articuloId,
      unidades: unidades ?? this.unidades,
      importe: importe ?? this.importe,
      coste: coste ?? this.coste,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (anyo.present) {
      map['ANYO'] = Variable<double>(anyo.value);
    }
    if (mes.present) {
      map['MES'] = Variable<double>(mes.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (unidades.present) {
      map['UNIDADES'] = Variable<double>(unidades.value);
    }
    if (importe.present) {
      map['IMPORTE'] = Variable<double>(importe.value);
    }
    if (coste.present) {
      map['COSTE'] = Variable<double>(coste.value);
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
    return (StringBuffer('EstadisticasClienteUsuarioVentasTableCompanion(')
          ..write('anyo: $anyo, ')
          ..write('mes: $mes, ')
          ..write('clienteId: $clienteId, ')
          ..write('articuloId: $articuloId, ')
          ..write('unidades: $unidades, ')
          ..write('importe: $importe, ')
          ..write('coste: $coste, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $EstadisticasClienteUsuarioVentasTableTable
    extends EstadisticasClienteUsuarioVentasTable
    with
        TableInfo<$EstadisticasClienteUsuarioVentasTableTable,
            EstadisticasVentaClienteUsuarioDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EstadisticasClienteUsuarioVentasTableTable(this.attachedDatabase,
      [this._alias]);
  final VerificationMeta _anyoMeta = const VerificationMeta('anyo');
  @override
  late final GeneratedColumn<double> anyo = GeneratedColumn<double>(
      'ANYO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _mesMeta = const VerificationMeta('mes');
  @override
  late final GeneratedColumn<double> mes = GeneratedColumn<double>(
      'MES', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _unidadesMeta = const VerificationMeta('unidades');
  @override
  late final GeneratedColumn<double> unidades = GeneratedColumn<double>(
      'UNIDADES', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _importeMeta = const VerificationMeta('importe');
  @override
  late final GeneratedColumn<double> importe = GeneratedColumn<double>(
      'IMPORTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _costeMeta = const VerificationMeta('coste');
  @override
  late final GeneratedColumn<double> coste = GeneratedColumn<double>(
      'COSTE', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        anyo,
        mes,
        clienteId,
        articuloId,
        unidades,
        importe,
        coste,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ESTADISTICAS_VENTA';
  @override
  String get actualTableName => 'ESTADISTICAS_VENTA';
  @override
  VerificationContext validateIntegrity(
      Insertable<EstadisticasVentaClienteUsuarioDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ANYO')) {
      context.handle(
          _anyoMeta, anyo.isAcceptableOrUnknown(data['ANYO']!, _anyoMeta));
    } else if (isInserting) {
      context.missing(_anyoMeta);
    }
    if (data.containsKey('MES')) {
      context.handle(
          _mesMeta, mes.isAcceptableOrUnknown(data['MES']!, _mesMeta));
    } else if (isInserting) {
      context.missing(_mesMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('UNIDADES')) {
      context.handle(_unidadesMeta,
          unidades.isAcceptableOrUnknown(data['UNIDADES']!, _unidadesMeta));
    }
    if (data.containsKey('IMPORTE')) {
      context.handle(_importeMeta,
          importe.isAcceptableOrUnknown(data['IMPORTE']!, _importeMeta));
    }
    if (data.containsKey('COSTE')) {
      context.handle(
          _costeMeta, coste.isAcceptableOrUnknown(data['COSTE']!, _costeMeta));
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
  Set<GeneratedColumn> get $primaryKey => {anyo, mes, clienteId, articuloId};
  @override
  EstadisticasVentaClienteUsuarioDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EstadisticasVentaClienteUsuarioDTO(
      anyo: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}ANYO'])!,
      mes: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}MES'])!,
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      unidades: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}UNIDADES']),
      importe: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IMPORTE']),
      coste: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}COSTE']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $EstadisticasClienteUsuarioVentasTableTable createAlias(String alias) {
    return $EstadisticasClienteUsuarioVentasTableTable(attachedDatabase, alias);
  }
}

class EstadisticasUltimosPreciosTableCompanion
    extends UpdateCompanion<EstadisticasUltimosPreciosDTO> {
  final Value<String> clienteId;
  final Value<String> articuloId;
  final Value<int> linea;
  final Value<int> cantidad;
  final Value<DateTime> fecha;
  final Value<double> precioDivisa;
  final Value<int> tipoPrecio;
  final Value<String> divisaId;
  final Value<double> descuento1;
  final Value<double> descuento2;
  final Value<double> descuento3;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const EstadisticasUltimosPreciosTableCompanion({
    this.clienteId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.linea = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.fecha = const Value.absent(),
    this.precioDivisa = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.descuento1 = const Value.absent(),
    this.descuento2 = const Value.absent(),
    this.descuento3 = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  EstadisticasUltimosPreciosTableCompanion.insert({
    required String clienteId,
    required String articuloId,
    required int linea,
    required int cantidad,
    required DateTime fecha,
    required double precioDivisa,
    required int tipoPrecio,
    required String divisaId,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : clienteId = Value(clienteId),
        articuloId = Value(articuloId),
        linea = Value(linea),
        cantidad = Value(cantidad),
        fecha = Value(fecha),
        precioDivisa = Value(precioDivisa),
        tipoPrecio = Value(tipoPrecio),
        divisaId = Value(divisaId),
        descuento1 = Value(descuento1),
        descuento2 = Value(descuento2),
        descuento3 = Value(descuento3),
        lastUpdated = Value(lastUpdated);
  static Insertable<EstadisticasUltimosPreciosDTO> custom({
    Expression<String>? clienteId,
    Expression<String>? articuloId,
    Expression<int>? linea,
    Expression<int>? cantidad,
    Expression<DateTime>? fecha,
    Expression<double>? precioDivisa,
    Expression<int>? tipoPrecio,
    Expression<String>? divisaId,
    Expression<double>? descuento1,
    Expression<double>? descuento2,
    Expression<double>? descuento3,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (linea != null) 'LINEA': linea,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (fecha != null) 'FECHA': fecha,
      if (precioDivisa != null) 'PRECIO_DIVISA': precioDivisa,
      if (tipoPrecio != null) 'TIPO_PRECIO': tipoPrecio,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (descuento1 != null) 'DESCUENTO1': descuento1,
      if (descuento2 != null) 'DESCUENTO2': descuento2,
      if (descuento3 != null) 'DESCUENTO3': descuento3,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  EstadisticasUltimosPreciosTableCompanion copyWith(
      {Value<String>? clienteId,
      Value<String>? articuloId,
      Value<int>? linea,
      Value<int>? cantidad,
      Value<DateTime>? fecha,
      Value<double>? precioDivisa,
      Value<int>? tipoPrecio,
      Value<String>? divisaId,
      Value<double>? descuento1,
      Value<double>? descuento2,
      Value<double>? descuento3,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return EstadisticasUltimosPreciosTableCompanion(
      clienteId: clienteId ?? this.clienteId,
      articuloId: articuloId ?? this.articuloId,
      linea: linea ?? this.linea,
      cantidad: cantidad ?? this.cantidad,
      fecha: fecha ?? this.fecha,
      precioDivisa: precioDivisa ?? this.precioDivisa,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      divisaId: divisaId ?? this.divisaId,
      descuento1: descuento1 ?? this.descuento1,
      descuento2: descuento2 ?? this.descuento2,
      descuento3: descuento3 ?? this.descuento3,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (linea.present) {
      map['LINEA'] = Variable<int>(linea.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (precioDivisa.present) {
      map['PRECIO_DIVISA'] = Variable<double>(precioDivisa.value);
    }
    if (tipoPrecio.present) {
      map['TIPO_PRECIO'] = Variable<int>(tipoPrecio.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (descuento1.present) {
      map['DESCUENTO1'] = Variable<double>(descuento1.value);
    }
    if (descuento2.present) {
      map['DESCUENTO2'] = Variable<double>(descuento2.value);
    }
    if (descuento3.present) {
      map['DESCUENTO3'] = Variable<double>(descuento3.value);
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
    return (StringBuffer('EstadisticasUltimosPreciosTableCompanion(')
          ..write('clienteId: $clienteId, ')
          ..write('articuloId: $articuloId, ')
          ..write('linea: $linea, ')
          ..write('cantidad: $cantidad, ')
          ..write('fecha: $fecha, ')
          ..write('precioDivisa: $precioDivisa, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('divisaId: $divisaId, ')
          ..write('descuento1: $descuento1, ')
          ..write('descuento2: $descuento2, ')
          ..write('descuento3: $descuento3, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $EstadisticasUltimosPreciosTableTable
    extends EstadisticasUltimosPreciosTable
    with
        TableInfo<$EstadisticasUltimosPreciosTableTable,
            EstadisticasUltimosPreciosDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EstadisticasUltimosPreciosTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _lineaMeta = const VerificationMeta('linea');
  @override
  late final GeneratedColumn<int> linea = GeneratedColumn<int>(
      'LINEA', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _cantidadMeta = const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _precioDivisaMeta =
      const VerificationMeta('precioDivisa');
  @override
  late final GeneratedColumn<double> precioDivisa = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TIPO_PRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _descuento1Meta = const VerificationMeta('descuento1');
  @override
  late final GeneratedColumn<double> descuento1 = GeneratedColumn<double>(
      'DESCUENTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento2Meta = const VerificationMeta('descuento2');
  @override
  late final GeneratedColumn<double> descuento2 = GeneratedColumn<double>(
      'DESCUENTO2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento3Meta = const VerificationMeta('descuento3');
  @override
  late final GeneratedColumn<double> descuento3 = GeneratedColumn<double>(
      'DESCUENTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        clienteId,
        articuloId,
        linea,
        cantidad,
        fecha,
        precioDivisa,
        tipoPrecio,
        divisaId,
        descuento1,
        descuento2,
        descuento3,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'ULTIMOS_PRECIOS';
  @override
  String get actualTableName => 'ULTIMOS_PRECIOS';
  @override
  VerificationContext validateIntegrity(
      Insertable<EstadisticasUltimosPreciosDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('LINEA')) {
      context.handle(
          _lineaMeta, linea.isAcceptableOrUnknown(data['LINEA']!, _lineaMeta));
    } else if (isInserting) {
      context.missing(_lineaMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _precioDivisaMeta,
          precioDivisa.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _precioDivisaMeta));
    } else if (isInserting) {
      context.missing(_precioDivisaMeta);
    }
    if (data.containsKey('TIPO_PRECIO')) {
      context.handle(
          _tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(
              data['TIPO_PRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    } else if (isInserting) {
      context.missing(_divisaIdMeta);
    }
    if (data.containsKey('DESCUENTO1')) {
      context.handle(
          _descuento1Meta,
          descuento1.isAcceptableOrUnknown(
              data['DESCUENTO1']!, _descuento1Meta));
    } else if (isInserting) {
      context.missing(_descuento1Meta);
    }
    if (data.containsKey('DESCUENTO2')) {
      context.handle(
          _descuento2Meta,
          descuento2.isAcceptableOrUnknown(
              data['DESCUENTO2']!, _descuento2Meta));
    } else if (isInserting) {
      context.missing(_descuento2Meta);
    }
    if (data.containsKey('DESCUENTO3')) {
      context.handle(
          _descuento3Meta,
          descuento3.isAcceptableOrUnknown(
              data['DESCUENTO3']!, _descuento3Meta));
    } else if (isInserting) {
      context.missing(_descuento3Meta);
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
  Set<GeneratedColumn> get $primaryKey => {clienteId, articuloId, linea};
  @override
  EstadisticasUltimosPreciosDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EstadisticasUltimosPreciosDTO(
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      linea: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}LINEA'])!,
      cantidad: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      fecha: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      precioDivisa: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TIPO_PRECIO'])!,
      descuento1: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO1'])!,
      descuento2: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO2'])!,
      descuento3: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO3'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $EstadisticasUltimosPreciosTableTable createAlias(String alias) {
    return $EstadisticasUltimosPreciosTableTable(attachedDatabase, alias);
  }
}

class VisitaTableCompanion extends UpdateCompanion<VisitaDTO> {
  final Value<String> id;
  final Value<String> clienteId;
  final Value<DateTime> fecha;
  final Value<String> numEmpl;
  final Value<String?> contacto;
  final Value<String?> resumen;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<String?> visitaAppId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const VisitaTableCompanion({
    this.id = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.fecha = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contacto = const Value.absent(),
    this.resumen = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.visitaAppId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  VisitaTableCompanion.insert({
    required String id,
    required String clienteId,
    required DateTime fecha,
    required String numEmpl,
    this.contacto = const Value.absent(),
    this.resumen = const Value.absent(),
    required double latitud,
    required double longitud,
    this.visitaAppId = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : id = Value(id),
        clienteId = Value(clienteId),
        fecha = Value(fecha),
        numEmpl = Value(numEmpl),
        latitud = Value(latitud),
        longitud = Value(longitud),
        lastUpdated = Value(lastUpdated);
  static Insertable<VisitaDTO> custom({
    Expression<String>? id,
    Expression<String>? clienteId,
    Expression<DateTime>? fecha,
    Expression<String>? numEmpl,
    Expression<String>? contacto,
    Expression<String>? resumen,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? visitaAppId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (id != null) 'VISITA_ID': id,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (fecha != null) 'FECHA': fecha,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contacto != null) 'CONTACTO': contacto,
      if (resumen != null) 'RESUMEN': resumen,
      if (latitud != null) 'LATITUD': latitud,
      if (longitud != null) 'LONGITUD': longitud,
      if (visitaAppId != null) 'COD_VISITA_APP': visitaAppId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  VisitaTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? clienteId,
      Value<DateTime>? fecha,
      Value<String>? numEmpl,
      Value<String?>? contacto,
      Value<String?>? resumen,
      Value<double>? latitud,
      Value<double>? longitud,
      Value<String?>? visitaAppId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return VisitaTableCompanion(
      id: id ?? this.id,
      clienteId: clienteId ?? this.clienteId,
      fecha: fecha ?? this.fecha,
      numEmpl: numEmpl ?? this.numEmpl,
      contacto: contacto ?? this.contacto,
      resumen: resumen ?? this.resumen,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      visitaAppId: visitaAppId ?? this.visitaAppId,
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
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (numEmpl.present) {
      map['NUM_EMPL'] = Variable<String>(numEmpl.value);
    }
    if (contacto.present) {
      map['CONTACTO'] = Variable<String>(contacto.value);
    }
    if (resumen.present) {
      map['RESUMEN'] = Variable<String>(resumen.value);
    }
    if (latitud.present) {
      map['LATITUD'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['LONGITUD'] = Variable<double>(longitud.value);
    }
    if (visitaAppId.present) {
      map['COD_VISITA_APP'] = Variable<String>(visitaAppId.value);
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
    return (StringBuffer('VisitaTableCompanion(')
          ..write('id: $id, ')
          ..write('clienteId: $clienteId, ')
          ..write('fecha: $fecha, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contacto: $contacto, ')
          ..write('resumen: $resumen, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('visitaAppId: $visitaAppId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $VisitaTableTable extends VisitaTable
    with TableInfo<$VisitaTableTable, VisitaDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitaTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'VISITA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _numEmplMeta = const VerificationMeta('numEmpl');
  @override
  late final GeneratedColumn<String> numEmpl = GeneratedColumn<String>(
      'NUM_EMPL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contactoMeta = const VerificationMeta('contacto');
  @override
  late final GeneratedColumn<String> contacto = GeneratedColumn<String>(
      'CONTACTO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenMeta = const VerificationMeta('resumen');
  @override
  late final GeneratedColumn<String> resumen = GeneratedColumn<String>(
      'RESUMEN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _latitudMeta = const VerificationMeta('latitud');
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudMeta = const VerificationMeta('longitud');
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _visitaAppIdMeta =
      const VerificationMeta('visitaAppId');
  @override
  late final GeneratedColumn<String> visitaAppId = GeneratedColumn<String>(
      'COD_VISITA_APP', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        id,
        clienteId,
        fecha,
        numEmpl,
        contacto,
        resumen,
        latitud,
        longitud,
        visitaAppId,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'VISITAS';
  @override
  String get actualTableName => 'VISITAS';
  @override
  VerificationContext validateIntegrity(Insertable<VisitaDTO> instance,
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
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('NUM_EMPL')) {
      context.handle(_numEmplMeta,
          numEmpl.isAcceptableOrUnknown(data['NUM_EMPL']!, _numEmplMeta));
    } else if (isInserting) {
      context.missing(_numEmplMeta);
    }
    if (data.containsKey('CONTACTO')) {
      context.handle(_contactoMeta,
          contacto.isAcceptableOrUnknown(data['CONTACTO']!, _contactoMeta));
    }
    if (data.containsKey('RESUMEN')) {
      context.handle(_resumenMeta,
          resumen.isAcceptableOrUnknown(data['RESUMEN']!, _resumenMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudMeta,
          latitud.isAcceptableOrUnknown(data['LATITUD']!, _latitudMeta));
    } else if (isInserting) {
      context.missing(_latitudMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudMeta,
          longitud.isAcceptableOrUnknown(data['LONGITUD']!, _longitudMeta));
    } else if (isInserting) {
      context.missing(_longitudMeta);
    }
    if (data.containsKey('COD_VISITA_APP')) {
      context.handle(
          _visitaAppIdMeta,
          visitaAppId.isAcceptableOrUnknown(
              data['COD_VISITA_APP']!, _visitaAppIdMeta));
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
  VisitaDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VisitaDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}VISITA_ID'])!,
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      fecha: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      numEmpl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NUM_EMPL'])!,
      contacto: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO']),
      resumen: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN']),
      latitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      visitaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}COD_VISITA_APP']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $VisitaTableTable createAlias(String alias) {
    return $VisitaTableTable(attachedDatabase, alias);
  }
}

class VisitaLocalTableCompanion extends UpdateCompanion<VisitaLocalDTO> {
  final Value<String> visitaAppId;
  final Value<String> clienteId;
  final Value<DateTime> fecha;
  final Value<String> numEmpl;
  final Value<String?> contacto;
  final Value<String?> resumen;
  final Value<double> latitud;
  final Value<double> longitud;
  final Value<String> enviada;
  final Value<String> tratada;
  final Value<String?> errorSyncMessage;
  const VisitaLocalTableCompanion({
    this.visitaAppId = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.fecha = const Value.absent(),
    this.numEmpl = const Value.absent(),
    this.contacto = const Value.absent(),
    this.resumen = const Value.absent(),
    this.latitud = const Value.absent(),
    this.longitud = const Value.absent(),
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  });
  VisitaLocalTableCompanion.insert({
    required String visitaAppId,
    required String clienteId,
    required DateTime fecha,
    required String numEmpl,
    this.contacto = const Value.absent(),
    this.resumen = const Value.absent(),
    required double latitud,
    required double longitud,
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  })  : visitaAppId = Value(visitaAppId),
        clienteId = Value(clienteId),
        fecha = Value(fecha),
        numEmpl = Value(numEmpl),
        latitud = Value(latitud),
        longitud = Value(longitud);
  static Insertable<VisitaLocalDTO> custom({
    Expression<String>? visitaAppId,
    Expression<String>? clienteId,
    Expression<DateTime>? fecha,
    Expression<String>? numEmpl,
    Expression<String>? contacto,
    Expression<String>? resumen,
    Expression<double>? latitud,
    Expression<double>? longitud,
    Expression<String>? enviada,
    Expression<String>? tratada,
    Expression<String>? errorSyncMessage,
  }) {
    return RawValuesInsertable({
      if (visitaAppId != null) 'COD_VISITA_APP': visitaAppId,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (fecha != null) 'FECHA': fecha,
      if (numEmpl != null) 'NUM_EMPL': numEmpl,
      if (contacto != null) 'CONTACTO': contacto,
      if (resumen != null) 'RESUMEN': resumen,
      if (latitud != null) 'LATITUD': latitud,
      if (longitud != null) 'LONGITUD': longitud,
      if (enviada != null) 'ENVIADA': enviada,
      if (tratada != null) 'TRATADA': tratada,
      if (errorSyncMessage != null) 'ERROR_SYNC': errorSyncMessage,
    });
  }

  VisitaLocalTableCompanion copyWith(
      {Value<String>? visitaAppId,
      Value<String>? clienteId,
      Value<DateTime>? fecha,
      Value<String>? numEmpl,
      Value<String?>? contacto,
      Value<String?>? resumen,
      Value<double>? latitud,
      Value<double>? longitud,
      Value<String>? enviada,
      Value<String>? tratada,
      Value<String?>? errorSyncMessage}) {
    return VisitaLocalTableCompanion(
      visitaAppId: visitaAppId ?? this.visitaAppId,
      clienteId: clienteId ?? this.clienteId,
      fecha: fecha ?? this.fecha,
      numEmpl: numEmpl ?? this.numEmpl,
      contacto: contacto ?? this.contacto,
      resumen: resumen ?? this.resumen,
      latitud: latitud ?? this.latitud,
      longitud: longitud ?? this.longitud,
      enviada: enviada ?? this.enviada,
      tratada: tratada ?? this.tratada,
      errorSyncMessage: errorSyncMessage ?? this.errorSyncMessage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (visitaAppId.present) {
      map['COD_VISITA_APP'] = Variable<String>(visitaAppId.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (fecha.present) {
      map['FECHA'] = Variable<DateTime>(fecha.value);
    }
    if (numEmpl.present) {
      map['NUM_EMPL'] = Variable<String>(numEmpl.value);
    }
    if (contacto.present) {
      map['CONTACTO'] = Variable<String>(contacto.value);
    }
    if (resumen.present) {
      map['RESUMEN'] = Variable<String>(resumen.value);
    }
    if (latitud.present) {
      map['LATITUD'] = Variable<double>(latitud.value);
    }
    if (longitud.present) {
      map['LONGITUD'] = Variable<double>(longitud.value);
    }
    if (enviada.present) {
      map['ENVIADA'] = Variable<String>(enviada.value);
    }
    if (tratada.present) {
      map['TRATADA'] = Variable<String>(tratada.value);
    }
    if (errorSyncMessage.present) {
      map['ERROR_SYNC'] = Variable<String>(errorSyncMessage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VisitaLocalTableCompanion(')
          ..write('visitaAppId: $visitaAppId, ')
          ..write('clienteId: $clienteId, ')
          ..write('fecha: $fecha, ')
          ..write('numEmpl: $numEmpl, ')
          ..write('contacto: $contacto, ')
          ..write('resumen: $resumen, ')
          ..write('latitud: $latitud, ')
          ..write('longitud: $longitud, ')
          ..write('enviada: $enviada, ')
          ..write('tratada: $tratada, ')
          ..write('errorSyncMessage: $errorSyncMessage')
          ..write(')'))
        .toString();
  }
}

class $VisitaLocalTableTable extends VisitaLocalTable
    with TableInfo<$VisitaLocalTableTable, VisitaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VisitaLocalTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _visitaAppIdMeta =
      const VerificationMeta('visitaAppId');
  @override
  late final GeneratedColumn<String> visitaAppId = GeneratedColumn<String>(
      'COD_VISITA_APP', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaMeta = const VerificationMeta('fecha');
  @override
  late final GeneratedColumn<DateTime> fecha = GeneratedColumn<DateTime>(
      'FECHA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _numEmplMeta = const VerificationMeta('numEmpl');
  @override
  late final GeneratedColumn<String> numEmpl = GeneratedColumn<String>(
      'NUM_EMPL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _contactoMeta = const VerificationMeta('contacto');
  @override
  late final GeneratedColumn<String> contacto = GeneratedColumn<String>(
      'CONTACTO', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _resumenMeta = const VerificationMeta('resumen');
  @override
  late final GeneratedColumn<String> resumen = GeneratedColumn<String>(
      'RESUMEN', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _latitudMeta = const VerificationMeta('latitud');
  @override
  late final GeneratedColumn<double> latitud = GeneratedColumn<double>(
      'LATITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _longitudMeta = const VerificationMeta('longitud');
  @override
  late final GeneratedColumn<double> longitud = GeneratedColumn<double>(
      'LONGITUD', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _enviadaMeta = const VerificationMeta('enviada');
  @override
  late final GeneratedColumn<String> enviada = GeneratedColumn<String>(
      'ENVIADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _tratadaMeta = const VerificationMeta('tratada');
  @override
  late final GeneratedColumn<String> tratada = GeneratedColumn<String>(
      'TRATADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _errorSyncMessageMeta =
      const VerificationMeta('errorSyncMessage');
  @override
  late final GeneratedColumn<String> errorSyncMessage = GeneratedColumn<String>(
      'ERROR_SYNC', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        visitaAppId,
        clienteId,
        fecha,
        numEmpl,
        contacto,
        resumen,
        latitud,
        longitud,
        enviada,
        tratada,
        errorSyncMessage
      ];
  @override
  String get aliasedName => _alias ?? 'VISITAS_LOCAL_IMP';
  @override
  String get actualTableName => 'VISITAS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(Insertable<VisitaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('COD_VISITA_APP')) {
      context.handle(
          _visitaAppIdMeta,
          visitaAppId.isAcceptableOrUnknown(
              data['COD_VISITA_APP']!, _visitaAppIdMeta));
    } else if (isInserting) {
      context.missing(_visitaAppIdMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('FECHA')) {
      context.handle(
          _fechaMeta, fecha.isAcceptableOrUnknown(data['FECHA']!, _fechaMeta));
    } else if (isInserting) {
      context.missing(_fechaMeta);
    }
    if (data.containsKey('NUM_EMPL')) {
      context.handle(_numEmplMeta,
          numEmpl.isAcceptableOrUnknown(data['NUM_EMPL']!, _numEmplMeta));
    } else if (isInserting) {
      context.missing(_numEmplMeta);
    }
    if (data.containsKey('CONTACTO')) {
      context.handle(_contactoMeta,
          contacto.isAcceptableOrUnknown(data['CONTACTO']!, _contactoMeta));
    }
    if (data.containsKey('RESUMEN')) {
      context.handle(_resumenMeta,
          resumen.isAcceptableOrUnknown(data['RESUMEN']!, _resumenMeta));
    }
    if (data.containsKey('LATITUD')) {
      context.handle(_latitudMeta,
          latitud.isAcceptableOrUnknown(data['LATITUD']!, _latitudMeta));
    } else if (isInserting) {
      context.missing(_latitudMeta);
    }
    if (data.containsKey('LONGITUD')) {
      context.handle(_longitudMeta,
          longitud.isAcceptableOrUnknown(data['LONGITUD']!, _longitudMeta));
    } else if (isInserting) {
      context.missing(_longitudMeta);
    }
    if (data.containsKey('ENVIADA')) {
      context.handle(_enviadaMeta,
          enviada.isAcceptableOrUnknown(data['ENVIADA']!, _enviadaMeta));
    }
    if (data.containsKey('TRATADA')) {
      context.handle(_tratadaMeta,
          tratada.isAcceptableOrUnknown(data['TRATADA']!, _tratadaMeta));
    }
    if (data.containsKey('ERROR_SYNC')) {
      context.handle(
          _errorSyncMessageMeta,
          errorSyncMessage.isAcceptableOrUnknown(
              data['ERROR_SYNC']!, _errorSyncMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {visitaAppId};
  @override
  VisitaLocalDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return VisitaLocalDTO(
      visitaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}COD_VISITA_APP'])!,
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      fecha: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA'])!,
      numEmpl: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NUM_EMPL'])!,
      contacto: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CONTACTO']),
      resumen: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}RESUMEN']),
      latitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LATITUD'])!,
      longitud: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}LONGITUD'])!,
      enviada: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADA'])!,
      tratada: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TRATADA'])!,
      errorSyncMessage: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ERROR_SYNC']),
    );
  }

  @override
  $VisitaLocalTableTable createAlias(String alias) {
    return $VisitaLocalTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaLineaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLineaLocalDTO> {
  final Value<String> pedidoVentaAppId;
  final Value<String> pedidoVentaLineaAppId;
  final Value<String> articuloId;
  final Value<String> articuloDescription;
  final Value<int> cantidad;
  final Value<double> precioDivisa;
  final Value<int> tipoPrecio;
  final Value<double> descuento1;
  final Value<double> descuento2;
  final Value<double> descuento3;
  final Value<double> descuentoProntoPago;
  final Value<String> stockDisponibleSN;
  final Value<DateTime?> fechaDisponible;
  final Value<double> iva;
  const PedidoVentaLineaLocalTableCompanion({
    this.pedidoVentaAppId = const Value.absent(),
    this.pedidoVentaLineaAppId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.articuloDescription = const Value.absent(),
    this.cantidad = const Value.absent(),
    this.precioDivisa = const Value.absent(),
    this.tipoPrecio = const Value.absent(),
    this.descuento1 = const Value.absent(),
    this.descuento2 = const Value.absent(),
    this.descuento3 = const Value.absent(),
    this.descuentoProntoPago = const Value.absent(),
    this.stockDisponibleSN = const Value.absent(),
    this.fechaDisponible = const Value.absent(),
    this.iva = const Value.absent(),
  });
  PedidoVentaLineaLocalTableCompanion.insert({
    required String pedidoVentaAppId,
    required String pedidoVentaLineaAppId,
    required String articuloId,
    required String articuloDescription,
    required int cantidad,
    required double precioDivisa,
    required int tipoPrecio,
    required double descuento1,
    required double descuento2,
    required double descuento3,
    required double descuentoProntoPago,
    required String stockDisponibleSN,
    this.fechaDisponible = const Value.absent(),
    required double iva,
  })  : pedidoVentaAppId = Value(pedidoVentaAppId),
        pedidoVentaLineaAppId = Value(pedidoVentaLineaAppId),
        articuloId = Value(articuloId),
        articuloDescription = Value(articuloDescription),
        cantidad = Value(cantidad),
        precioDivisa = Value(precioDivisa),
        tipoPrecio = Value(tipoPrecio),
        descuento1 = Value(descuento1),
        descuento2 = Value(descuento2),
        descuento3 = Value(descuento3),
        descuentoProntoPago = Value(descuentoProntoPago),
        stockDisponibleSN = Value(stockDisponibleSN),
        iva = Value(iva);
  static Insertable<PedidoVentaLineaLocalDTO> custom({
    Expression<String>? pedidoVentaAppId,
    Expression<String>? pedidoVentaLineaAppId,
    Expression<String>? articuloId,
    Expression<String>? articuloDescription,
    Expression<int>? cantidad,
    Expression<double>? precioDivisa,
    Expression<int>? tipoPrecio,
    Expression<double>? descuento1,
    Expression<double>? descuento2,
    Expression<double>? descuento3,
    Expression<double>? descuentoProntoPago,
    Expression<String>? stockDisponibleSN,
    Expression<DateTime>? fechaDisponible,
    Expression<double>? iva,
  }) {
    return RawValuesInsertable({
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (pedidoVentaLineaAppId != null) 'LIN_APP_ID': pedidoVentaLineaAppId,
      if (articuloId != null) 'PRODUCTO_ID': articuloId,
      if (articuloDescription != null) 'DENOMINACION': articuloDescription,
      if (cantidad != null) 'CANTIDAD': cantidad,
      if (precioDivisa != null) 'PRECIO_DIVISA': precioDivisa,
      if (tipoPrecio != null) 'TPRECIO': tipoPrecio,
      if (descuento1 != null) 'DTO1': descuento1,
      if (descuento2 != null) 'DTO2': descuento2,
      if (descuento3 != null) 'DTO3': descuento3,
      if (descuentoProntoPago != null) 'DTO_PP': descuentoProntoPago,
      if (stockDisponibleSN != null) 'STOCK_DISPONIBLE_SN': stockDisponibleSN,
      if (fechaDisponible != null) 'F_DISPONIBLE': fechaDisponible,
      if (iva != null) 'IVA': iva,
    });
  }

  PedidoVentaLineaLocalTableCompanion copyWith(
      {Value<String>? pedidoVentaAppId,
      Value<String>? pedidoVentaLineaAppId,
      Value<String>? articuloId,
      Value<String>? articuloDescription,
      Value<int>? cantidad,
      Value<double>? precioDivisa,
      Value<int>? tipoPrecio,
      Value<double>? descuento1,
      Value<double>? descuento2,
      Value<double>? descuento3,
      Value<double>? descuentoProntoPago,
      Value<String>? stockDisponibleSN,
      Value<DateTime?>? fechaDisponible,
      Value<double>? iva}) {
    return PedidoVentaLineaLocalTableCompanion(
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      pedidoVentaLineaAppId:
          pedidoVentaLineaAppId ?? this.pedidoVentaLineaAppId,
      articuloId: articuloId ?? this.articuloId,
      articuloDescription: articuloDescription ?? this.articuloDescription,
      cantidad: cantidad ?? this.cantidad,
      precioDivisa: precioDivisa ?? this.precioDivisa,
      tipoPrecio: tipoPrecio ?? this.tipoPrecio,
      descuento1: descuento1 ?? this.descuento1,
      descuento2: descuento2 ?? this.descuento2,
      descuento3: descuento3 ?? this.descuento3,
      descuentoProntoPago: descuentoProntoPago ?? this.descuentoProntoPago,
      stockDisponibleSN: stockDisponibleSN ?? this.stockDisponibleSN,
      fechaDisponible: fechaDisponible ?? this.fechaDisponible,
      iva: iva ?? this.iva,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
    }
    if (pedidoVentaLineaAppId.present) {
      map['LIN_APP_ID'] = Variable<String>(pedidoVentaLineaAppId.value);
    }
    if (articuloId.present) {
      map['PRODUCTO_ID'] = Variable<String>(articuloId.value);
    }
    if (articuloDescription.present) {
      map['DENOMINACION'] = Variable<String>(articuloDescription.value);
    }
    if (cantidad.present) {
      map['CANTIDAD'] = Variable<int>(cantidad.value);
    }
    if (precioDivisa.present) {
      map['PRECIO_DIVISA'] = Variable<double>(precioDivisa.value);
    }
    if (tipoPrecio.present) {
      map['TPRECIO'] = Variable<int>(tipoPrecio.value);
    }
    if (descuento1.present) {
      map['DTO1'] = Variable<double>(descuento1.value);
    }
    if (descuento2.present) {
      map['DTO2'] = Variable<double>(descuento2.value);
    }
    if (descuento3.present) {
      map['DTO3'] = Variable<double>(descuento3.value);
    }
    if (descuentoProntoPago.present) {
      map['DTO_PP'] = Variable<double>(descuentoProntoPago.value);
    }
    if (stockDisponibleSN.present) {
      map['STOCK_DISPONIBLE_SN'] = Variable<String>(stockDisponibleSN.value);
    }
    if (fechaDisponible.present) {
      map['F_DISPONIBLE'] = Variable<DateTime>(fechaDisponible.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLineaLocalTableCompanion(')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('pedidoVentaLineaAppId: $pedidoVentaLineaAppId, ')
          ..write('articuloId: $articuloId, ')
          ..write('articuloDescription: $articuloDescription, ')
          ..write('cantidad: $cantidad, ')
          ..write('precioDivisa: $precioDivisa, ')
          ..write('tipoPrecio: $tipoPrecio, ')
          ..write('descuento1: $descuento1, ')
          ..write('descuento2: $descuento2, ')
          ..write('descuento3: $descuento3, ')
          ..write('descuentoProntoPago: $descuentoProntoPago, ')
          ..write('stockDisponibleSN: $stockDisponibleSN, ')
          ..write('fechaDisponible: $fechaDisponible, ')
          ..write('iva: $iva')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaLineaLocalTableTable extends PedidoVentaLineaLocalTable
    with TableInfo<$PedidoVentaLineaLocalTableTable, PedidoVentaLineaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaLineaLocalTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _pedidoVentaAppIdMeta =
      const VerificationMeta('pedidoVentaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaAppId = GeneratedColumn<String>(
      'PEDIDO_APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaLineaAppIdMeta =
      const VerificationMeta('pedidoVentaLineaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaLineaAppId =
      GeneratedColumn<String>('LIN_APP_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'PRODUCTO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloDescriptionMeta =
      const VerificationMeta('articuloDescription');
  @override
  late final GeneratedColumn<String> articuloDescription =
      GeneratedColumn<String>('DENOMINACION', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadMeta = const VerificationMeta('cantidad');
  @override
  late final GeneratedColumn<int> cantidad = GeneratedColumn<int>(
      'CANTIDAD', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _precioDivisaMeta =
      const VerificationMeta('precioDivisa');
  @override
  late final GeneratedColumn<double> precioDivisa = GeneratedColumn<double>(
      'PRECIO_DIVISA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _tipoPrecioMeta = const VerificationMeta('tipoPrecio');
  @override
  late final GeneratedColumn<int> tipoPrecio = GeneratedColumn<int>(
      'TPRECIO', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _descuento1Meta = const VerificationMeta('descuento1');
  @override
  late final GeneratedColumn<double> descuento1 = GeneratedColumn<double>(
      'DTO1', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento2Meta = const VerificationMeta('descuento2');
  @override
  late final GeneratedColumn<double> descuento2 = GeneratedColumn<double>(
      'DTO2', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuento3Meta = const VerificationMeta('descuento3');
  @override
  late final GeneratedColumn<double> descuento3 = GeneratedColumn<double>(
      'DTO3', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _descuentoProntoPagoMeta =
      const VerificationMeta('descuentoProntoPago');
  @override
  late final GeneratedColumn<double> descuentoProntoPago =
      GeneratedColumn<double>('DTO_PP', aliasedName, false,
          type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _stockDisponibleSNMeta =
      const VerificationMeta('stockDisponibleSN');
  @override
  late final GeneratedColumn<String> stockDisponibleSN =
      GeneratedColumn<String>('STOCK_DISPONIBLE_SN', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaDisponibleMeta =
      const VerificationMeta('fechaDisponible');
  @override
  late final GeneratedColumn<DateTime> fechaDisponible =
      GeneratedColumn<DateTime>('F_DISPONIBLE', aliasedName, true,
          type: DriftSqlType.dateTime, requiredDuringInsert: false);
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        pedidoVentaAppId,
        pedidoVentaLineaAppId,
        articuloId,
        articuloDescription,
        cantidad,
        precioDivisa,
        tipoPrecio,
        descuento1,
        descuento2,
        descuento3,
        descuentoProntoPago,
        stockDisponibleSN,
        fechaDisponible,
        iva
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LINEAS_LOCAL_IMP';
  @override
  String get actualTableName => 'PEDIDOS_LINEAS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaLineaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('PEDIDO_APP_ID')) {
      context.handle(
          _pedidoVentaAppIdMeta,
          pedidoVentaAppId.isAcceptableOrUnknown(
              data['PEDIDO_APP_ID']!, _pedidoVentaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaAppIdMeta);
    }
    if (data.containsKey('LIN_APP_ID')) {
      context.handle(
          _pedidoVentaLineaAppIdMeta,
          pedidoVentaLineaAppId.isAcceptableOrUnknown(
              data['LIN_APP_ID']!, _pedidoVentaLineaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaLineaAppIdMeta);
    }
    if (data.containsKey('PRODUCTO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['PRODUCTO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('DENOMINACION')) {
      context.handle(
          _articuloDescriptionMeta,
          articuloDescription.isAcceptableOrUnknown(
              data['DENOMINACION']!, _articuloDescriptionMeta));
    } else if (isInserting) {
      context.missing(_articuloDescriptionMeta);
    }
    if (data.containsKey('CANTIDAD')) {
      context.handle(_cantidadMeta,
          cantidad.isAcceptableOrUnknown(data['CANTIDAD']!, _cantidadMeta));
    } else if (isInserting) {
      context.missing(_cantidadMeta);
    }
    if (data.containsKey('PRECIO_DIVISA')) {
      context.handle(
          _precioDivisaMeta,
          precioDivisa.isAcceptableOrUnknown(
              data['PRECIO_DIVISA']!, _precioDivisaMeta));
    } else if (isInserting) {
      context.missing(_precioDivisaMeta);
    }
    if (data.containsKey('TPRECIO')) {
      context.handle(_tipoPrecioMeta,
          tipoPrecio.isAcceptableOrUnknown(data['TPRECIO']!, _tipoPrecioMeta));
    } else if (isInserting) {
      context.missing(_tipoPrecioMeta);
    }
    if (data.containsKey('DTO1')) {
      context.handle(_descuento1Meta,
          descuento1.isAcceptableOrUnknown(data['DTO1']!, _descuento1Meta));
    } else if (isInserting) {
      context.missing(_descuento1Meta);
    }
    if (data.containsKey('DTO2')) {
      context.handle(_descuento2Meta,
          descuento2.isAcceptableOrUnknown(data['DTO2']!, _descuento2Meta));
    } else if (isInserting) {
      context.missing(_descuento2Meta);
    }
    if (data.containsKey('DTO3')) {
      context.handle(_descuento3Meta,
          descuento3.isAcceptableOrUnknown(data['DTO3']!, _descuento3Meta));
    } else if (isInserting) {
      context.missing(_descuento3Meta);
    }
    if (data.containsKey('DTO_PP')) {
      context.handle(
          _descuentoProntoPagoMeta,
          descuentoProntoPago.isAcceptableOrUnknown(
              data['DTO_PP']!, _descuentoProntoPagoMeta));
    } else if (isInserting) {
      context.missing(_descuentoProntoPagoMeta);
    }
    if (data.containsKey('STOCK_DISPONIBLE_SN')) {
      context.handle(
          _stockDisponibleSNMeta,
          stockDisponibleSN.isAcceptableOrUnknown(
              data['STOCK_DISPONIBLE_SN']!, _stockDisponibleSNMeta));
    } else if (isInserting) {
      context.missing(_stockDisponibleSNMeta);
    }
    if (data.containsKey('F_DISPONIBLE')) {
      context.handle(
          _fechaDisponibleMeta,
          fechaDisponible.isAcceptableOrUnknown(
              data['F_DISPONIBLE']!, _fechaDisponibleMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey =>
      {pedidoVentaAppId, pedidoVentaLineaAppId};
  @override
  PedidoVentaLineaLocalDTO map(Map<String, dynamic> data,
      {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaLineaLocalDTO(
      pedidoVentaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID'])!,
      pedidoVentaLineaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}LIN_APP_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PRODUCTO_ID'])!,
      articuloDescription: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DENOMINACION'])!,
      cantidad: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD'])!,
      precioDivisa: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}PRECIO_DIVISA'])!,
      tipoPrecio: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}TPRECIO'])!,
      descuento1: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DTO1'])!,
      descuento2: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DTO2'])!,
      descuento3: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DTO3'])!,
      descuentoProntoPago: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DTO_PP'])!,
      stockDisponibleSN: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}STOCK_DISPONIBLE_SN'])!,
      fechaDisponible: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}F_DISPONIBLE']),
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
    );
  }

  @override
  $PedidoVentaLineaLocalTableTable createAlias(String alias) {
    return $PedidoVentaLineaLocalTableTable(attachedDatabase, alias);
  }
}

class PedidoVentaLocalTableCompanion
    extends UpdateCompanion<PedidoVentaLocalDTO> {
  final Value<String?> usuarioId;
  final Value<String> pedidoVentaAppId;
  final Value<String> empresaId;
  final Value<DateTime> fechaAlta;
  final Value<String> clienteId;
  final Value<String> nombreCliente;
  final Value<String?> direccionId;
  final Value<String?> direccion1;
  final Value<String?> direccion2;
  final Value<String?> codigoPostal;
  final Value<String?> poblacion;
  final Value<String?> provincia;
  final Value<String?> paisId;
  final Value<String?> divisaId;
  final Value<String?> pedidoCliente;
  final Value<String?> observaciones;
  final Value<double> iva;
  final Value<double> dtoBonificacion;
  final Value<String> enviada;
  final Value<String> tratada;
  final Value<String?> errorSyncMessage;
  const PedidoVentaLocalTableCompanion({
    this.usuarioId = const Value.absent(),
    this.pedidoVentaAppId = const Value.absent(),
    this.empresaId = const Value.absent(),
    this.fechaAlta = const Value.absent(),
    this.clienteId = const Value.absent(),
    this.nombreCliente = const Value.absent(),
    this.direccionId = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.pedidoCliente = const Value.absent(),
    this.observaciones = const Value.absent(),
    this.iva = const Value.absent(),
    this.dtoBonificacion = const Value.absent(),
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  });
  PedidoVentaLocalTableCompanion.insert({
    this.usuarioId = const Value.absent(),
    required String pedidoVentaAppId,
    required String empresaId,
    required DateTime fechaAlta,
    required String clienteId,
    required String nombreCliente,
    this.direccionId = const Value.absent(),
    this.direccion1 = const Value.absent(),
    this.direccion2 = const Value.absent(),
    this.codigoPostal = const Value.absent(),
    this.poblacion = const Value.absent(),
    this.provincia = const Value.absent(),
    this.paisId = const Value.absent(),
    this.divisaId = const Value.absent(),
    this.pedidoCliente = const Value.absent(),
    this.observaciones = const Value.absent(),
    required double iva,
    required double dtoBonificacion,
    this.enviada = const Value.absent(),
    this.tratada = const Value.absent(),
    this.errorSyncMessage = const Value.absent(),
  })  : pedidoVentaAppId = Value(pedidoVentaAppId),
        empresaId = Value(empresaId),
        fechaAlta = Value(fechaAlta),
        clienteId = Value(clienteId),
        nombreCliente = Value(nombreCliente),
        iva = Value(iva),
        dtoBonificacion = Value(dtoBonificacion);
  static Insertable<PedidoVentaLocalDTO> custom({
    Expression<String>? usuarioId,
    Expression<String>? pedidoVentaAppId,
    Expression<String>? empresaId,
    Expression<DateTime>? fechaAlta,
    Expression<String>? clienteId,
    Expression<String>? nombreCliente,
    Expression<String>? direccionId,
    Expression<String>? direccion1,
    Expression<String>? direccion2,
    Expression<String>? codigoPostal,
    Expression<String>? poblacion,
    Expression<String>? provincia,
    Expression<String>? paisId,
    Expression<String>? divisaId,
    Expression<String>? pedidoCliente,
    Expression<String>? observaciones,
    Expression<double>? iva,
    Expression<double>? dtoBonificacion,
    Expression<String>? enviada,
    Expression<String>? tratada,
    Expression<String>? errorSyncMessage,
  }) {
    return RawValuesInsertable({
      if (usuarioId != null) 'USUARIO_ID': usuarioId,
      if (pedidoVentaAppId != null) 'PEDIDO_APP_ID': pedidoVentaAppId,
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (fechaAlta != null) 'FECHA_ALTA': fechaAlta,
      if (clienteId != null) 'CLIENTE_ID': clienteId,
      if (nombreCliente != null) 'NOMBRE_CLIENTE': nombreCliente,
      if (direccionId != null) 'DIRECCION_ID': direccionId,
      if (direccion1 != null) 'DIRECCION1': direccion1,
      if (direccion2 != null) 'DIRECCION2': direccion2,
      if (codigoPostal != null) 'CODIGO_POSTAL': codigoPostal,
      if (poblacion != null) 'POBLACION': poblacion,
      if (provincia != null) 'PROVINCIA': provincia,
      if (paisId != null) 'PAIS_ID': paisId,
      if (divisaId != null) 'DIVISA_ID': divisaId,
      if (pedidoCliente != null) 'PEDIDO_CLIENTE': pedidoCliente,
      if (observaciones != null) 'OBSERVACIONES': observaciones,
      if (iva != null) 'IVA': iva,
      if (dtoBonificacion != null) 'DTO_BONIFICACION': dtoBonificacion,
      if (enviada != null) 'ENVIADA': enviada,
      if (tratada != null) 'TRATADA': tratada,
      if (errorSyncMessage != null) 'ERROR_SYNC': errorSyncMessage,
    });
  }

  PedidoVentaLocalTableCompanion copyWith(
      {Value<String?>? usuarioId,
      Value<String>? pedidoVentaAppId,
      Value<String>? empresaId,
      Value<DateTime>? fechaAlta,
      Value<String>? clienteId,
      Value<String>? nombreCliente,
      Value<String?>? direccionId,
      Value<String?>? direccion1,
      Value<String?>? direccion2,
      Value<String?>? codigoPostal,
      Value<String?>? poblacion,
      Value<String?>? provincia,
      Value<String?>? paisId,
      Value<String?>? divisaId,
      Value<String?>? pedidoCliente,
      Value<String?>? observaciones,
      Value<double>? iva,
      Value<double>? dtoBonificacion,
      Value<String>? enviada,
      Value<String>? tratada,
      Value<String?>? errorSyncMessage}) {
    return PedidoVentaLocalTableCompanion(
      usuarioId: usuarioId ?? this.usuarioId,
      pedidoVentaAppId: pedidoVentaAppId ?? this.pedidoVentaAppId,
      empresaId: empresaId ?? this.empresaId,
      fechaAlta: fechaAlta ?? this.fechaAlta,
      clienteId: clienteId ?? this.clienteId,
      nombreCliente: nombreCliente ?? this.nombreCliente,
      direccionId: direccionId ?? this.direccionId,
      direccion1: direccion1 ?? this.direccion1,
      direccion2: direccion2 ?? this.direccion2,
      codigoPostal: codigoPostal ?? this.codigoPostal,
      poblacion: poblacion ?? this.poblacion,
      provincia: provincia ?? this.provincia,
      paisId: paisId ?? this.paisId,
      divisaId: divisaId ?? this.divisaId,
      pedidoCliente: pedidoCliente ?? this.pedidoCliente,
      observaciones: observaciones ?? this.observaciones,
      iva: iva ?? this.iva,
      dtoBonificacion: dtoBonificacion ?? this.dtoBonificacion,
      enviada: enviada ?? this.enviada,
      tratada: tratada ?? this.tratada,
      errorSyncMessage: errorSyncMessage ?? this.errorSyncMessage,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (usuarioId.present) {
      map['USUARIO_ID'] = Variable<String>(usuarioId.value);
    }
    if (pedidoVentaAppId.present) {
      map['PEDIDO_APP_ID'] = Variable<String>(pedidoVentaAppId.value);
    }
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (fechaAlta.present) {
      map['FECHA_ALTA'] = Variable<DateTime>(fechaAlta.value);
    }
    if (clienteId.present) {
      map['CLIENTE_ID'] = Variable<String>(clienteId.value);
    }
    if (nombreCliente.present) {
      map['NOMBRE_CLIENTE'] = Variable<String>(nombreCliente.value);
    }
    if (direccionId.present) {
      map['DIRECCION_ID'] = Variable<String>(direccionId.value);
    }
    if (direccion1.present) {
      map['DIRECCION1'] = Variable<String>(direccion1.value);
    }
    if (direccion2.present) {
      map['DIRECCION2'] = Variable<String>(direccion2.value);
    }
    if (codigoPostal.present) {
      map['CODIGO_POSTAL'] = Variable<String>(codigoPostal.value);
    }
    if (poblacion.present) {
      map['POBLACION'] = Variable<String>(poblacion.value);
    }
    if (provincia.present) {
      map['PROVINCIA'] = Variable<String>(provincia.value);
    }
    if (paisId.present) {
      map['PAIS_ID'] = Variable<String>(paisId.value);
    }
    if (divisaId.present) {
      map['DIVISA_ID'] = Variable<String>(divisaId.value);
    }
    if (pedidoCliente.present) {
      map['PEDIDO_CLIENTE'] = Variable<String>(pedidoCliente.value);
    }
    if (observaciones.present) {
      map['OBSERVACIONES'] = Variable<String>(observaciones.value);
    }
    if (iva.present) {
      map['IVA'] = Variable<double>(iva.value);
    }
    if (dtoBonificacion.present) {
      map['DTO_BONIFICACION'] = Variable<double>(dtoBonificacion.value);
    }
    if (enviada.present) {
      map['ENVIADA'] = Variable<String>(enviada.value);
    }
    if (tratada.present) {
      map['TRATADA'] = Variable<String>(tratada.value);
    }
    if (errorSyncMessage.present) {
      map['ERROR_SYNC'] = Variable<String>(errorSyncMessage.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PedidoVentaLocalTableCompanion(')
          ..write('usuarioId: $usuarioId, ')
          ..write('pedidoVentaAppId: $pedidoVentaAppId, ')
          ..write('empresaId: $empresaId, ')
          ..write('fechaAlta: $fechaAlta, ')
          ..write('clienteId: $clienteId, ')
          ..write('nombreCliente: $nombreCliente, ')
          ..write('direccionId: $direccionId, ')
          ..write('direccion1: $direccion1, ')
          ..write('direccion2: $direccion2, ')
          ..write('codigoPostal: $codigoPostal, ')
          ..write('poblacion: $poblacion, ')
          ..write('provincia: $provincia, ')
          ..write('paisId: $paisId, ')
          ..write('divisaId: $divisaId, ')
          ..write('pedidoCliente: $pedidoCliente, ')
          ..write('observaciones: $observaciones, ')
          ..write('iva: $iva, ')
          ..write('dtoBonificacion: $dtoBonificacion, ')
          ..write('enviada: $enviada, ')
          ..write('tratada: $tratada, ')
          ..write('errorSyncMessage: $errorSyncMessage')
          ..write(')'))
        .toString();
  }
}

class $PedidoVentaLocalTableTable extends PedidoVentaLocalTable
    with TableInfo<$PedidoVentaLocalTableTable, PedidoVentaLocalDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoVentaLocalTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _usuarioIdMeta = const VerificationMeta('usuarioId');
  @override
  late final GeneratedColumn<String> usuarioId = GeneratedColumn<String>(
      'USUARIO_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _pedidoVentaAppIdMeta =
      const VerificationMeta('pedidoVentaAppId');
  @override
  late final GeneratedColumn<String> pedidoVentaAppId = GeneratedColumn<String>(
      'PEDIDO_APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaAltaMeta = const VerificationMeta('fechaAlta');
  @override
  late final GeneratedColumn<DateTime> fechaAlta = GeneratedColumn<DateTime>(
      'FECHA_ALTA', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _clienteIdMeta = const VerificationMeta('clienteId');
  @override
  late final GeneratedColumn<String> clienteId = GeneratedColumn<String>(
      'CLIENTE_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nombreClienteMeta =
      const VerificationMeta('nombreCliente');
  @override
  late final GeneratedColumn<String> nombreCliente = GeneratedColumn<String>(
      'NOMBRE_CLIENTE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _direccionIdMeta =
      const VerificationMeta('direccionId');
  @override
  late final GeneratedColumn<String> direccionId = GeneratedColumn<String>(
      'DIRECCION_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _direccion1Meta = const VerificationMeta('direccion1');
  @override
  late final GeneratedColumn<String> direccion1 = GeneratedColumn<String>(
      'DIRECCION1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _direccion2Meta = const VerificationMeta('direccion2');
  @override
  late final GeneratedColumn<String> direccion2 = GeneratedColumn<String>(
      'DIRECCION2', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _codigoPostalMeta =
      const VerificationMeta('codigoPostal');
  @override
  late final GeneratedColumn<String> codigoPostal = GeneratedColumn<String>(
      'CODIGO_POSTAL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _poblacionMeta = const VerificationMeta('poblacion');
  @override
  late final GeneratedColumn<String> poblacion = GeneratedColumn<String>(
      'POBLACION', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _provinciaMeta = const VerificationMeta('provincia');
  @override
  late final GeneratedColumn<String> provincia = GeneratedColumn<String>(
      'PROVINCIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _paisIdMeta = const VerificationMeta('paisId');
  @override
  late final GeneratedColumn<String> paisId = GeneratedColumn<String>(
      'PAIS_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES PAISES (PAIS_ID)');
  final VerificationMeta _divisaIdMeta = const VerificationMeta('divisaId');
  @override
  late final GeneratedColumn<String> divisaId = GeneratedColumn<String>(
      'DIVISA_ID', aliasedName, true,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultConstraints: 'REFERENCES DIVISAS (DIVISA_ID)');
  final VerificationMeta _pedidoClienteMeta =
      const VerificationMeta('pedidoCliente');
  @override
  late final GeneratedColumn<String> pedidoCliente = GeneratedColumn<String>(
      'PEDIDO_CLIENTE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _observacionesMeta =
      const VerificationMeta('observaciones');
  @override
  late final GeneratedColumn<String> observaciones = GeneratedColumn<String>(
      'OBSERVACIONES', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _ivaMeta = const VerificationMeta('iva');
  @override
  late final GeneratedColumn<double> iva = GeneratedColumn<double>(
      'IVA', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _dtoBonificacionMeta =
      const VerificationMeta('dtoBonificacion');
  @override
  late final GeneratedColumn<double> dtoBonificacion = GeneratedColumn<double>(
      'DTO_BONIFICACION', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _enviadaMeta = const VerificationMeta('enviada');
  @override
  late final GeneratedColumn<String> enviada = GeneratedColumn<String>(
      'ENVIADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _tratadaMeta = const VerificationMeta('tratada');
  @override
  late final GeneratedColumn<String> tratada = GeneratedColumn<String>(
      'TRATADA', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  final VerificationMeta _errorSyncMessageMeta =
      const VerificationMeta('errorSyncMessage');
  @override
  late final GeneratedColumn<String> errorSyncMessage = GeneratedColumn<String>(
      'ERROR_SYNC', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        usuarioId,
        pedidoVentaAppId,
        empresaId,
        fechaAlta,
        clienteId,
        nombreCliente,
        direccionId,
        direccion1,
        direccion2,
        codigoPostal,
        poblacion,
        provincia,
        paisId,
        divisaId,
        pedidoCliente,
        observaciones,
        iva,
        dtoBonificacion,
        enviada,
        tratada,
        errorSyncMessage
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_LOCAL_IMP';
  @override
  String get actualTableName => 'PEDIDOS_LOCAL_IMP';
  @override
  VerificationContext validateIntegrity(
      Insertable<PedidoVentaLocalDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('USUARIO_ID')) {
      context.handle(_usuarioIdMeta,
          usuarioId.isAcceptableOrUnknown(data['USUARIO_ID']!, _usuarioIdMeta));
    }
    if (data.containsKey('PEDIDO_APP_ID')) {
      context.handle(
          _pedidoVentaAppIdMeta,
          pedidoVentaAppId.isAcceptableOrUnknown(
              data['PEDIDO_APP_ID']!, _pedidoVentaAppIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaAppIdMeta);
    }
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('FECHA_ALTA')) {
      context.handle(_fechaAltaMeta,
          fechaAlta.isAcceptableOrUnknown(data['FECHA_ALTA']!, _fechaAltaMeta));
    } else if (isInserting) {
      context.missing(_fechaAltaMeta);
    }
    if (data.containsKey('CLIENTE_ID')) {
      context.handle(_clienteIdMeta,
          clienteId.isAcceptableOrUnknown(data['CLIENTE_ID']!, _clienteIdMeta));
    } else if (isInserting) {
      context.missing(_clienteIdMeta);
    }
    if (data.containsKey('NOMBRE_CLIENTE')) {
      context.handle(
          _nombreClienteMeta,
          nombreCliente.isAcceptableOrUnknown(
              data['NOMBRE_CLIENTE']!, _nombreClienteMeta));
    } else if (isInserting) {
      context.missing(_nombreClienteMeta);
    }
    if (data.containsKey('DIRECCION_ID')) {
      context.handle(
          _direccionIdMeta,
          direccionId.isAcceptableOrUnknown(
              data['DIRECCION_ID']!, _direccionIdMeta));
    }
    if (data.containsKey('DIRECCION1')) {
      context.handle(
          _direccion1Meta,
          direccion1.isAcceptableOrUnknown(
              data['DIRECCION1']!, _direccion1Meta));
    }
    if (data.containsKey('DIRECCION2')) {
      context.handle(
          _direccion2Meta,
          direccion2.isAcceptableOrUnknown(
              data['DIRECCION2']!, _direccion2Meta));
    }
    if (data.containsKey('CODIGO_POSTAL')) {
      context.handle(
          _codigoPostalMeta,
          codigoPostal.isAcceptableOrUnknown(
              data['CODIGO_POSTAL']!, _codigoPostalMeta));
    }
    if (data.containsKey('POBLACION')) {
      context.handle(_poblacionMeta,
          poblacion.isAcceptableOrUnknown(data['POBLACION']!, _poblacionMeta));
    }
    if (data.containsKey('PROVINCIA')) {
      context.handle(_provinciaMeta,
          provincia.isAcceptableOrUnknown(data['PROVINCIA']!, _provinciaMeta));
    }
    if (data.containsKey('PAIS_ID')) {
      context.handle(_paisIdMeta,
          paisId.isAcceptableOrUnknown(data['PAIS_ID']!, _paisIdMeta));
    }
    if (data.containsKey('DIVISA_ID')) {
      context.handle(_divisaIdMeta,
          divisaId.isAcceptableOrUnknown(data['DIVISA_ID']!, _divisaIdMeta));
    }
    if (data.containsKey('PEDIDO_CLIENTE')) {
      context.handle(
          _pedidoClienteMeta,
          pedidoCliente.isAcceptableOrUnknown(
              data['PEDIDO_CLIENTE']!, _pedidoClienteMeta));
    }
    if (data.containsKey('OBSERVACIONES')) {
      context.handle(
          _observacionesMeta,
          observaciones.isAcceptableOrUnknown(
              data['OBSERVACIONES']!, _observacionesMeta));
    }
    if (data.containsKey('IVA')) {
      context.handle(
          _ivaMeta, iva.isAcceptableOrUnknown(data['IVA']!, _ivaMeta));
    } else if (isInserting) {
      context.missing(_ivaMeta);
    }
    if (data.containsKey('DTO_BONIFICACION')) {
      context.handle(
          _dtoBonificacionMeta,
          dtoBonificacion.isAcceptableOrUnknown(
              data['DTO_BONIFICACION']!, _dtoBonificacionMeta));
    } else if (isInserting) {
      context.missing(_dtoBonificacionMeta);
    }
    if (data.containsKey('ENVIADA')) {
      context.handle(_enviadaMeta,
          enviada.isAcceptableOrUnknown(data['ENVIADA']!, _enviadaMeta));
    }
    if (data.containsKey('TRATADA')) {
      context.handle(_tratadaMeta,
          tratada.isAcceptableOrUnknown(data['TRATADA']!, _tratadaMeta));
    }
    if (data.containsKey('ERROR_SYNC')) {
      context.handle(
          _errorSyncMessageMeta,
          errorSyncMessage.isAcceptableOrUnknown(
              data['ERROR_SYNC']!, _errorSyncMessageMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {pedidoVentaAppId};
  @override
  PedidoVentaLocalDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoVentaLocalDTO(
      usuarioId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USUARIO_ID']),
      pedidoVentaAppId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_APP_ID'])!,
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      clienteId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CLIENTE_ID'])!,
      nombreCliente: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}NOMBRE_CLIENTE'])!,
      direccionId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION_ID']),
      direccion1: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION1']),
      direccion2: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIRECCION2']),
      codigoPostal: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}CODIGO_POSTAL']),
      poblacion: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}POBLACION']),
      provincia: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PROVINCIA']),
      paisId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PAIS_ID']),
      divisaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DIVISA_ID']),
      pedidoCliente: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_CLIENTE']),
      observaciones: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}OBSERVACIONES']),
      fechaAlta: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}FECHA_ALTA'])!,
      iva: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}IVA'])!,
      dtoBonificacion: attachedDatabase.options.types.read(
          DriftSqlType.double, data['${effectivePrefix}DTO_BONIFICACION'])!,
      enviada: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ENVIADA'])!,
      tratada: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TRATADA'])!,
      errorSyncMessage: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ERROR_SYNC']),
    );
  }

  @override
  $PedidoVentaLocalTableTable createAlias(String alias) {
    return $PedidoVentaLocalTableTable(attachedDatabase, alias);
  }
}

class PedidoAlbaranTableCompanion extends UpdateCompanion<PedidoAlbaranDTO> {
  final Value<String> empresaId;
  final Value<String> pedidoVentaId;
  final Value<String> albaranId;
  final Value<DateTime> fechaAlbaran;
  final Value<String?> agencia;
  final Value<String?> trackId;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const PedidoAlbaranTableCompanion({
    this.empresaId = const Value.absent(),
    this.pedidoVentaId = const Value.absent(),
    this.albaranId = const Value.absent(),
    this.fechaAlbaran = const Value.absent(),
    this.agencia = const Value.absent(),
    this.trackId = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  PedidoAlbaranTableCompanion.insert({
    required String empresaId,
    required String pedidoVentaId,
    required String albaranId,
    required DateTime fechaAlbaran,
    this.agencia = const Value.absent(),
    this.trackId = const Value.absent(),
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : empresaId = Value(empresaId),
        pedidoVentaId = Value(pedidoVentaId),
        albaranId = Value(albaranId),
        fechaAlbaran = Value(fechaAlbaran),
        lastUpdated = Value(lastUpdated);
  static Insertable<PedidoAlbaranDTO> custom({
    Expression<String>? empresaId,
    Expression<String>? pedidoVentaId,
    Expression<String>? albaranId,
    Expression<DateTime>? fechaAlbaran,
    Expression<String>? agencia,
    Expression<String>? trackId,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (empresaId != null) 'EMPRESA_ID': empresaId,
      if (pedidoVentaId != null) 'PEDIDO_ID': pedidoVentaId,
      if (albaranId != null) 'ALBARAN_ID': albaranId,
      if (fechaAlbaran != null) 'FECHA_ALBARAN': fechaAlbaran,
      if (agencia != null) 'AGENCIA': agencia,
      if (trackId != null) 'TRACK_ID': trackId,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  PedidoAlbaranTableCompanion copyWith(
      {Value<String>? empresaId,
      Value<String>? pedidoVentaId,
      Value<String>? albaranId,
      Value<DateTime>? fechaAlbaran,
      Value<String?>? agencia,
      Value<String?>? trackId,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return PedidoAlbaranTableCompanion(
      empresaId: empresaId ?? this.empresaId,
      pedidoVentaId: pedidoVentaId ?? this.pedidoVentaId,
      albaranId: albaranId ?? this.albaranId,
      fechaAlbaran: fechaAlbaran ?? this.fechaAlbaran,
      agencia: agencia ?? this.agencia,
      trackId: trackId ?? this.trackId,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (empresaId.present) {
      map['EMPRESA_ID'] = Variable<String>(empresaId.value);
    }
    if (pedidoVentaId.present) {
      map['PEDIDO_ID'] = Variable<String>(pedidoVentaId.value);
    }
    if (albaranId.present) {
      map['ALBARAN_ID'] = Variable<String>(albaranId.value);
    }
    if (fechaAlbaran.present) {
      map['FECHA_ALBARAN'] = Variable<DateTime>(fechaAlbaran.value);
    }
    if (agencia.present) {
      map['AGENCIA'] = Variable<String>(agencia.value);
    }
    if (trackId.present) {
      map['TRACK_ID'] = Variable<String>(trackId.value);
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
    return (StringBuffer('PedidoAlbaranTableCompanion(')
          ..write('empresaId: $empresaId, ')
          ..write('pedidoVentaId: $pedidoVentaId, ')
          ..write('albaranId: $albaranId, ')
          ..write('fechaAlbaran: $fechaAlbaran, ')
          ..write('agencia: $agencia, ')
          ..write('trackId: $trackId, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $PedidoAlbaranTableTable extends PedidoAlbaranTable
    with TableInfo<$PedidoAlbaranTableTable, PedidoAlbaranDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PedidoAlbaranTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _empresaIdMeta = const VerificationMeta('empresaId');
  @override
  late final GeneratedColumn<String> empresaId = GeneratedColumn<String>(
      'EMPRESA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _pedidoVentaIdMeta =
      const VerificationMeta('pedidoVentaId');
  @override
  late final GeneratedColumn<String> pedidoVentaId = GeneratedColumn<String>(
      'PEDIDO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _albaranIdMeta = const VerificationMeta('albaranId');
  @override
  late final GeneratedColumn<String> albaranId = GeneratedColumn<String>(
      'ALBARAN_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _fechaAlbaranMeta =
      const VerificationMeta('fechaAlbaran');
  @override
  late final GeneratedColumn<DateTime> fechaAlbaran = GeneratedColumn<DateTime>(
      'FECHA_ALBARAN', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _agenciaMeta = const VerificationMeta('agencia');
  @override
  late final GeneratedColumn<String> agencia = GeneratedColumn<String>(
      'AGENCIA', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _trackIdMeta = const VerificationMeta('trackId');
  @override
  late final GeneratedColumn<String> trackId = GeneratedColumn<String>(
      'TRACK_ID', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        empresaId,
        pedidoVentaId,
        albaranId,
        fechaAlbaran,
        agencia,
        trackId,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'PEDIDOS_ALBARANES';
  @override
  String get actualTableName => 'PEDIDOS_ALBARANES';
  @override
  VerificationContext validateIntegrity(Insertable<PedidoAlbaranDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('EMPRESA_ID')) {
      context.handle(_empresaIdMeta,
          empresaId.isAcceptableOrUnknown(data['EMPRESA_ID']!, _empresaIdMeta));
    } else if (isInserting) {
      context.missing(_empresaIdMeta);
    }
    if (data.containsKey('PEDIDO_ID')) {
      context.handle(
          _pedidoVentaIdMeta,
          pedidoVentaId.isAcceptableOrUnknown(
              data['PEDIDO_ID']!, _pedidoVentaIdMeta));
    } else if (isInserting) {
      context.missing(_pedidoVentaIdMeta);
    }
    if (data.containsKey('ALBARAN_ID')) {
      context.handle(_albaranIdMeta,
          albaranId.isAcceptableOrUnknown(data['ALBARAN_ID']!, _albaranIdMeta));
    } else if (isInserting) {
      context.missing(_albaranIdMeta);
    }
    if (data.containsKey('FECHA_ALBARAN')) {
      context.handle(
          _fechaAlbaranMeta,
          fechaAlbaran.isAcceptableOrUnknown(
              data['FECHA_ALBARAN']!, _fechaAlbaranMeta));
    } else if (isInserting) {
      context.missing(_fechaAlbaranMeta);
    }
    if (data.containsKey('AGENCIA')) {
      context.handle(_agenciaMeta,
          agencia.isAcceptableOrUnknown(data['AGENCIA']!, _agenciaMeta));
    }
    if (data.containsKey('TRACK_ID')) {
      context.handle(_trackIdMeta,
          trackId.isAcceptableOrUnknown(data['TRACK_ID']!, _trackIdMeta));
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
  Set<GeneratedColumn> get $primaryKey => {pedidoVentaId, empresaId, albaranId};
  @override
  PedidoAlbaranDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PedidoAlbaranDTO(
      empresaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}EMPRESA_ID'])!,
      pedidoVentaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}PEDIDO_ID'])!,
      albaranId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ALBARAN_ID'])!,
      fechaAlbaran: attachedDatabase.options.types.read(
          DriftSqlType.dateTime, data['${effectivePrefix}FECHA_ALBARAN'])!,
      agencia: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}AGENCIA']),
      trackId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}TRACK_ID']),
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $PedidoAlbaranTableTable createAlias(String alias) {
    return $PedidoAlbaranTableTable(attachedDatabase, alias);
  }
}

class DescuentoGeneralTableCompanion
    extends UpdateCompanion<DescuentoGeneralDTO> {
  final Value<String> descuentoGeneralId;
  final Value<String> articuloId;
  final Value<String> familiaId;
  final Value<String> subfamiliaId;
  final Value<int> cantidadDesde;
  final Value<double> descuento;
  final Value<DateTime> lastUpdated;
  final Value<String> deleted;
  const DescuentoGeneralTableCompanion({
    this.descuentoGeneralId = const Value.absent(),
    this.articuloId = const Value.absent(),
    this.familiaId = const Value.absent(),
    this.subfamiliaId = const Value.absent(),
    this.cantidadDesde = const Value.absent(),
    this.descuento = const Value.absent(),
    this.lastUpdated = const Value.absent(),
    this.deleted = const Value.absent(),
  });
  DescuentoGeneralTableCompanion.insert({
    required String descuentoGeneralId,
    required String articuloId,
    required String familiaId,
    required String subfamiliaId,
    required int cantidadDesde,
    required double descuento,
    required DateTime lastUpdated,
    this.deleted = const Value.absent(),
  })  : descuentoGeneralId = Value(descuentoGeneralId),
        articuloId = Value(articuloId),
        familiaId = Value(familiaId),
        subfamiliaId = Value(subfamiliaId),
        cantidadDesde = Value(cantidadDesde),
        descuento = Value(descuento),
        lastUpdated = Value(lastUpdated);
  static Insertable<DescuentoGeneralDTO> custom({
    Expression<String>? descuentoGeneralId,
    Expression<String>? articuloId,
    Expression<String>? familiaId,
    Expression<String>? subfamiliaId,
    Expression<int>? cantidadDesde,
    Expression<double>? descuento,
    Expression<DateTime>? lastUpdated,
    Expression<String>? deleted,
  }) {
    return RawValuesInsertable({
      if (descuentoGeneralId != null)
        'DESCUENTO_GENERAL_ID': descuentoGeneralId,
      if (articuloId != null) 'ARTICULO_ID': articuloId,
      if (familiaId != null) 'FAMILIA_ID': familiaId,
      if (subfamiliaId != null) 'SUBFAMILIA_ID': subfamiliaId,
      if (cantidadDesde != null) 'CANTIDAD_DESDE': cantidadDesde,
      if (descuento != null) 'DESCUENTO': descuento,
      if (lastUpdated != null) 'LAST_UPDATED': lastUpdated,
      if (deleted != null) 'DELETED': deleted,
    });
  }

  DescuentoGeneralTableCompanion copyWith(
      {Value<String>? descuentoGeneralId,
      Value<String>? articuloId,
      Value<String>? familiaId,
      Value<String>? subfamiliaId,
      Value<int>? cantidadDesde,
      Value<double>? descuento,
      Value<DateTime>? lastUpdated,
      Value<String>? deleted}) {
    return DescuentoGeneralTableCompanion(
      descuentoGeneralId: descuentoGeneralId ?? this.descuentoGeneralId,
      articuloId: articuloId ?? this.articuloId,
      familiaId: familiaId ?? this.familiaId,
      subfamiliaId: subfamiliaId ?? this.subfamiliaId,
      cantidadDesde: cantidadDesde ?? this.cantidadDesde,
      descuento: descuento ?? this.descuento,
      lastUpdated: lastUpdated ?? this.lastUpdated,
      deleted: deleted ?? this.deleted,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (descuentoGeneralId.present) {
      map['DESCUENTO_GENERAL_ID'] = Variable<String>(descuentoGeneralId.value);
    }
    if (articuloId.present) {
      map['ARTICULO_ID'] = Variable<String>(articuloId.value);
    }
    if (familiaId.present) {
      map['FAMILIA_ID'] = Variable<String>(familiaId.value);
    }
    if (subfamiliaId.present) {
      map['SUBFAMILIA_ID'] = Variable<String>(subfamiliaId.value);
    }
    if (cantidadDesde.present) {
      map['CANTIDAD_DESDE'] = Variable<int>(cantidadDesde.value);
    }
    if (descuento.present) {
      map['DESCUENTO'] = Variable<double>(descuento.value);
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
    return (StringBuffer('DescuentoGeneralTableCompanion(')
          ..write('descuentoGeneralId: $descuentoGeneralId, ')
          ..write('articuloId: $articuloId, ')
          ..write('familiaId: $familiaId, ')
          ..write('subfamiliaId: $subfamiliaId, ')
          ..write('cantidadDesde: $cantidadDesde, ')
          ..write('descuento: $descuento, ')
          ..write('lastUpdated: $lastUpdated, ')
          ..write('deleted: $deleted')
          ..write(')'))
        .toString();
  }
}

class $DescuentoGeneralTableTable extends DescuentoGeneralTable
    with TableInfo<$DescuentoGeneralTableTable, DescuentoGeneralDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DescuentoGeneralTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _descuentoGeneralIdMeta =
      const VerificationMeta('descuentoGeneralId');
  @override
  late final GeneratedColumn<String> descuentoGeneralId =
      GeneratedColumn<String>('DESCUENTO_GENERAL_ID', aliasedName, false,
          type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _articuloIdMeta = const VerificationMeta('articuloId');
  @override
  late final GeneratedColumn<String> articuloId = GeneratedColumn<String>(
      'ARTICULO_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _familiaIdMeta = const VerificationMeta('familiaId');
  @override
  late final GeneratedColumn<String> familiaId = GeneratedColumn<String>(
      'FAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _subfamiliaIdMeta =
      const VerificationMeta('subfamiliaId');
  @override
  late final GeneratedColumn<String> subfamiliaId = GeneratedColumn<String>(
      'SUBFAMILIA_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _cantidadDesdeMeta =
      const VerificationMeta('cantidadDesde');
  @override
  late final GeneratedColumn<int> cantidadDesde = GeneratedColumn<int>(
      'CANTIDAD_DESDE', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _descuentoMeta = const VerificationMeta('descuento');
  @override
  late final GeneratedColumn<double> descuento = GeneratedColumn<double>(
      'DESCUENTO', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  final VerificationMeta _lastUpdatedMeta =
      const VerificationMeta('lastUpdated');
  @override
  late final GeneratedColumn<DateTime> lastUpdated = GeneratedColumn<DateTime>(
      'LAST_UPDATED', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  final VerificationMeta _deletedMeta = const VerificationMeta('deleted');
  @override
  late final GeneratedColumn<String> deleted = GeneratedColumn<String>(
      'DELETED', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('N'));
  @override
  List<GeneratedColumn> get $columns => [
        descuentoGeneralId,
        articuloId,
        familiaId,
        subfamiliaId,
        cantidadDesde,
        descuento,
        lastUpdated,
        deleted
      ];
  @override
  String get aliasedName => _alias ?? 'DESCUENTO_GENERAL';
  @override
  String get actualTableName => 'DESCUENTO_GENERAL';
  @override
  VerificationContext validateIntegrity(
      Insertable<DescuentoGeneralDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('DESCUENTO_GENERAL_ID')) {
      context.handle(
          _descuentoGeneralIdMeta,
          descuentoGeneralId.isAcceptableOrUnknown(
              data['DESCUENTO_GENERAL_ID']!, _descuentoGeneralIdMeta));
    } else if (isInserting) {
      context.missing(_descuentoGeneralIdMeta);
    }
    if (data.containsKey('ARTICULO_ID')) {
      context.handle(
          _articuloIdMeta,
          articuloId.isAcceptableOrUnknown(
              data['ARTICULO_ID']!, _articuloIdMeta));
    } else if (isInserting) {
      context.missing(_articuloIdMeta);
    }
    if (data.containsKey('FAMILIA_ID')) {
      context.handle(_familiaIdMeta,
          familiaId.isAcceptableOrUnknown(data['FAMILIA_ID']!, _familiaIdMeta));
    } else if (isInserting) {
      context.missing(_familiaIdMeta);
    }
    if (data.containsKey('SUBFAMILIA_ID')) {
      context.handle(
          _subfamiliaIdMeta,
          subfamiliaId.isAcceptableOrUnknown(
              data['SUBFAMILIA_ID']!, _subfamiliaIdMeta));
    } else if (isInserting) {
      context.missing(_subfamiliaIdMeta);
    }
    if (data.containsKey('CANTIDAD_DESDE')) {
      context.handle(
          _cantidadDesdeMeta,
          cantidadDesde.isAcceptableOrUnknown(
              data['CANTIDAD_DESDE']!, _cantidadDesdeMeta));
    } else if (isInserting) {
      context.missing(_cantidadDesdeMeta);
    }
    if (data.containsKey('DESCUENTO')) {
      context.handle(_descuentoMeta,
          descuento.isAcceptableOrUnknown(data['DESCUENTO']!, _descuentoMeta));
    } else if (isInserting) {
      context.missing(_descuentoMeta);
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
      {descuentoGeneralId, articuloId, familiaId, subfamiliaId};
  @override
  DescuentoGeneralDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DescuentoGeneralDTO(
      descuentoGeneralId: attachedDatabase.options.types.read(
          DriftSqlType.string, data['${effectivePrefix}DESCUENTO_GENERAL_ID'])!,
      articuloId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}ARTICULO_ID'])!,
      familiaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}FAMILIA_ID'])!,
      subfamiliaId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}SUBFAMILIA_ID'])!,
      cantidadDesde: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}CANTIDAD_DESDE'])!,
      descuento: attachedDatabase.options.types
          .read(DriftSqlType.double, data['${effectivePrefix}DESCUENTO'])!,
      lastUpdated: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}LAST_UPDATED'])!,
      deleted: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}DELETED'])!,
    );
  }

  @override
  $DescuentoGeneralTableTable createAlias(String alias) {
    return $DescuentoGeneralTableTable(attachedDatabase, alias);
  }
}

class LogTableCompanion extends UpdateCompanion<LogDTO> {
  final Value<int> id;
  final Value<String> level;
  final Value<String> message;
  final Value<String?> error;
  final Value<String?> stackTrace;
  final Value<String> appId;
  final Value<String> appBuild;
  final Value<String> appBuildName;
  final Value<String> userId;
  final Value<String?> userEmail;
  final Value<String?> userName;
  final Value<DateTime> timestamp;
  const LogTableCompanion({
    this.id = const Value.absent(),
    this.level = const Value.absent(),
    this.message = const Value.absent(),
    this.error = const Value.absent(),
    this.stackTrace = const Value.absent(),
    this.appId = const Value.absent(),
    this.appBuild = const Value.absent(),
    this.appBuildName = const Value.absent(),
    this.userId = const Value.absent(),
    this.userEmail = const Value.absent(),
    this.userName = const Value.absent(),
    this.timestamp = const Value.absent(),
  });
  LogTableCompanion.insert({
    this.id = const Value.absent(),
    required String level,
    required String message,
    this.error = const Value.absent(),
    this.stackTrace = const Value.absent(),
    required String appId,
    required String appBuild,
    required String appBuildName,
    required String userId,
    this.userEmail = const Value.absent(),
    this.userName = const Value.absent(),
    required DateTime timestamp,
  })  : level = Value(level),
        message = Value(message),
        appId = Value(appId),
        appBuild = Value(appBuild),
        appBuildName = Value(appBuildName),
        userId = Value(userId),
        timestamp = Value(timestamp);
  static Insertable<LogDTO> custom({
    Expression<int>? id,
    Expression<String>? level,
    Expression<String>? message,
    Expression<String>? error,
    Expression<String>? stackTrace,
    Expression<String>? appId,
    Expression<String>? appBuild,
    Expression<String>? appBuildName,
    Expression<String>? userId,
    Expression<String>? userEmail,
    Expression<String>? userName,
    Expression<DateTime>? timestamp,
  }) {
    return RawValuesInsertable({
      if (id != null) 'ID': id,
      if (level != null) 'LOG_LEVEL': level,
      if (message != null) 'LOG_MESSAGE': message,
      if (error != null) 'LOG_ERROR': error,
      if (stackTrace != null) 'LOG_STACK_TRACE': stackTrace,
      if (appId != null) 'APP_ID': appId,
      if (appBuild != null) 'APP_BUILD': appBuild,
      if (appBuildName != null) 'APP_BUILD_NAME': appBuildName,
      if (userId != null) 'USER_ID': userId,
      if (userEmail != null) 'USER_EMAIL': userEmail,
      if (userName != null) 'USER_NAME': userName,
      if (timestamp != null) 'TIMESTAMP': timestamp,
    });
  }

  LogTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? level,
      Value<String>? message,
      Value<String?>? error,
      Value<String?>? stackTrace,
      Value<String>? appId,
      Value<String>? appBuild,
      Value<String>? appBuildName,
      Value<String>? userId,
      Value<String?>? userEmail,
      Value<String?>? userName,
      Value<DateTime>? timestamp}) {
    return LogTableCompanion(
      id: id ?? this.id,
      level: level ?? this.level,
      message: message ?? this.message,
      error: error ?? this.error,
      stackTrace: stackTrace ?? this.stackTrace,
      appId: appId ?? this.appId,
      appBuild: appBuild ?? this.appBuild,
      appBuildName: appBuildName ?? this.appBuildName,
      userId: userId ?? this.userId,
      userEmail: userEmail ?? this.userEmail,
      userName: userName ?? this.userName,
      timestamp: timestamp ?? this.timestamp,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['ID'] = Variable<int>(id.value);
    }
    if (level.present) {
      map['LOG_LEVEL'] = Variable<String>(level.value);
    }
    if (message.present) {
      map['LOG_MESSAGE'] = Variable<String>(message.value);
    }
    if (error.present) {
      map['LOG_ERROR'] = Variable<String>(error.value);
    }
    if (stackTrace.present) {
      map['LOG_STACK_TRACE'] = Variable<String>(stackTrace.value);
    }
    if (appId.present) {
      map['APP_ID'] = Variable<String>(appId.value);
    }
    if (appBuild.present) {
      map['APP_BUILD'] = Variable<String>(appBuild.value);
    }
    if (appBuildName.present) {
      map['APP_BUILD_NAME'] = Variable<String>(appBuildName.value);
    }
    if (userId.present) {
      map['USER_ID'] = Variable<String>(userId.value);
    }
    if (userEmail.present) {
      map['USER_EMAIL'] = Variable<String>(userEmail.value);
    }
    if (userName.present) {
      map['USER_NAME'] = Variable<String>(userName.value);
    }
    if (timestamp.present) {
      map['TIMESTAMP'] = Variable<DateTime>(timestamp.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogTableCompanion(')
          ..write('id: $id, ')
          ..write('level: $level, ')
          ..write('message: $message, ')
          ..write('error: $error, ')
          ..write('stackTrace: $stackTrace, ')
          ..write('appId: $appId, ')
          ..write('appBuild: $appBuild, ')
          ..write('appBuildName: $appBuildName, ')
          ..write('userId: $userId, ')
          ..write('userEmail: $userEmail, ')
          ..write('userName: $userName, ')
          ..write('timestamp: $timestamp')
          ..write(')'))
        .toString();
  }
}

class $LogTableTable extends LogTable with TableInfo<$LogTableTable, LogDTO> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'ID', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _levelMeta = const VerificationMeta('level');
  @override
  late final GeneratedColumn<String> level = GeneratedColumn<String>(
      'LOG_LEVEL', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _messageMeta = const VerificationMeta('message');
  @override
  late final GeneratedColumn<String> message = GeneratedColumn<String>(
      'LOG_MESSAGE', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _errorMeta = const VerificationMeta('error');
  @override
  late final GeneratedColumn<String> error = GeneratedColumn<String>(
      'LOG_ERROR', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _stackTraceMeta = const VerificationMeta('stackTrace');
  @override
  late final GeneratedColumn<String> stackTrace = GeneratedColumn<String>(
      'LOG_STACK_TRACE', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _appIdMeta = const VerificationMeta('appId');
  @override
  late final GeneratedColumn<String> appId = GeneratedColumn<String>(
      'APP_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _appBuildMeta = const VerificationMeta('appBuild');
  @override
  late final GeneratedColumn<String> appBuild = GeneratedColumn<String>(
      'APP_BUILD', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _appBuildNameMeta =
      const VerificationMeta('appBuildName');
  @override
  late final GeneratedColumn<String> appBuildName = GeneratedColumn<String>(
      'APP_BUILD_NAME', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'USER_ID', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _userEmailMeta = const VerificationMeta('userEmail');
  @override
  late final GeneratedColumn<String> userEmail = GeneratedColumn<String>(
      'USER_EMAIL', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _userNameMeta = const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'USER_NAME', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  final VerificationMeta _timestampMeta = const VerificationMeta('timestamp');
  @override
  late final GeneratedColumn<DateTime> timestamp = GeneratedColumn<DateTime>(
      'TIMESTAMP', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        level,
        message,
        error,
        stackTrace,
        appId,
        appBuild,
        appBuildName,
        userId,
        userEmail,
        userName,
        timestamp
      ];
  @override
  String get aliasedName => _alias ?? 'LOG';
  @override
  String get actualTableName => 'LOG';
  @override
  VerificationContext validateIntegrity(Insertable<LogDTO> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('ID')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['ID']!, _idMeta));
    }
    if (data.containsKey('LOG_LEVEL')) {
      context.handle(_levelMeta,
          level.isAcceptableOrUnknown(data['LOG_LEVEL']!, _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('LOG_MESSAGE')) {
      context.handle(_messageMeta,
          message.isAcceptableOrUnknown(data['LOG_MESSAGE']!, _messageMeta));
    } else if (isInserting) {
      context.missing(_messageMeta);
    }
    if (data.containsKey('LOG_ERROR')) {
      context.handle(_errorMeta,
          error.isAcceptableOrUnknown(data['LOG_ERROR']!, _errorMeta));
    }
    if (data.containsKey('LOG_STACK_TRACE')) {
      context.handle(
          _stackTraceMeta,
          stackTrace.isAcceptableOrUnknown(
              data['LOG_STACK_TRACE']!, _stackTraceMeta));
    }
    if (data.containsKey('APP_ID')) {
      context.handle(
          _appIdMeta, appId.isAcceptableOrUnknown(data['APP_ID']!, _appIdMeta));
    } else if (isInserting) {
      context.missing(_appIdMeta);
    }
    if (data.containsKey('APP_BUILD')) {
      context.handle(_appBuildMeta,
          appBuild.isAcceptableOrUnknown(data['APP_BUILD']!, _appBuildMeta));
    } else if (isInserting) {
      context.missing(_appBuildMeta);
    }
    if (data.containsKey('APP_BUILD_NAME')) {
      context.handle(
          _appBuildNameMeta,
          appBuildName.isAcceptableOrUnknown(
              data['APP_BUILD_NAME']!, _appBuildNameMeta));
    } else if (isInserting) {
      context.missing(_appBuildNameMeta);
    }
    if (data.containsKey('USER_ID')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['USER_ID']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('USER_EMAIL')) {
      context.handle(_userEmailMeta,
          userEmail.isAcceptableOrUnknown(data['USER_EMAIL']!, _userEmailMeta));
    }
    if (data.containsKey('USER_NAME')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['USER_NAME']!, _userNameMeta));
    }
    if (data.containsKey('TIMESTAMP')) {
      context.handle(_timestampMeta,
          timestamp.isAcceptableOrUnknown(data['TIMESTAMP']!, _timestampMeta));
    } else if (isInserting) {
      context.missing(_timestampMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogDTO map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LogDTO(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}ID'])!,
      level: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_LEVEL'])!,
      message: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_MESSAGE'])!,
      error: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}LOG_ERROR']),
      appId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APP_ID'])!,
      appBuild: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APP_BUILD'])!,
      appBuildName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}APP_BUILD_NAME'])!,
      userId: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USER_ID'])!,
      userEmail: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USER_EMAIL']),
      userName: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}USER_NAME']),
      timestamp: attachedDatabase.options.types
          .read(DriftSqlType.dateTime, data['${effectivePrefix}TIMESTAMP'])!,
    );
  }

  @override
  $LogTableTable createAlias(String alias) {
    return $LogTableTable(attachedDatabase, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  _$AppDatabase.connect(DatabaseConnection c) : super.connect(c);
  late final $PaisTableTable paisTable = $PaisTableTable(this);
  late final $DivisaTableTable divisaTable = $DivisaTableTable(this);
  late final $PedidoVentaEstadoTableTable pedidoVentaEstadoTable =
      $PedidoVentaEstadoTableTable(this);
  late final $PedidoVentaTableTable pedidoVentaTable =
      $PedidoVentaTableTable(this);
  late final $PedidoVentaLineaTableTable pedidoVentaLineaTable =
      $PedidoVentaLineaTableTable(this);
  late final $PlazoDeCobroTableTable plazoDeCobroTable =
      $PlazoDeCobroTableTable(this);
  late final $MetodoDeCobroTableTable metodoDeCobroTable =
      $MetodoDeCobroTableTable(this);
  late final $ClienteTableTable clienteTable = $ClienteTableTable(this);
  late final $ClienteUsuarioTableTable clienteUsuarioTable =
      $ClienteUsuarioTableTable(this);
  late final $ClienteGrupoNetoTableTable clienteGrupoNetoTable =
      $ClienteGrupoNetoTableTable(this);
  late final $FamiliaTableTable familiaTable = $FamiliaTableTable(this);
  late final $SubfamiliaTableTable subfamiliaTable =
      $SubfamiliaTableTable(this);
  late final $ClienteDescuentoTableTable clienteDescuentoTable =
      $ClienteDescuentoTableTable(this);
  late final $ClienteContactoTableTable clienteContactoTable =
      $ClienteContactoTableTable(this);
  late final $ClienteDireccionTableTable clienteDireccionTable =
      $ClienteDireccionTableTable(this);
  late final $ClientePagoPendienteTableTable clientePagoPendienteTable =
      $ClientePagoPendienteTableTable(this);
  late final $ClientePrecioNetoTableTable clientePrecioNetoTable =
      $ClientePrecioNetoTableTable(this);
  late final $ClienteRappelTableTable clienteRappelTable =
      $ClienteRappelTableTable(this);
  late final $ClienteEstadoPotencialTableTable clienteEstadoPotencialTable =
      $ClienteEstadoPotencialTableTable(this);
  late final $ClienteTipoPotencialTableTable clienteTipoPotencialTable =
      $ClienteTipoPotencialTableTable(this);
  late final $EstadisticasArticulosTopTableTable estadisticasArticulosTopTable =
      $EstadisticasArticulosTopTableTable(this);
  late final $ArticuloTableTable articuloTable = $ArticuloTableTable(this);
  late final $ArticuloComponenteTableTable articuloComponenteTable =
      $ArticuloComponenteTableTable(this);
  late final $ArticuloEmpresaIvaTableTable articuloEmpresaIvaTable =
      $ArticuloEmpresaIvaTableTable(this);
  late final $ArticuloRecambioTableTable articuloRecambioTable =
      $ArticuloRecambioTableTable(this);
  late final $ArticuloSustitutivoTableTable articuloSustitutivoTable =
      $ArticuloSustitutivoTableTable(this);
  late final $ArticuloPrecioTarifaTableTable articuloPrecioTarifaTable =
      $ArticuloPrecioTarifaTableTable(this);
  late final $ArticuloGrupoNetoTableTable articuloGrupoNetoTable =
      $ArticuloGrupoNetoTableTable(this);
  late final $EstadisticasClienteUsuarioVentasTableTable
      estadisticasClienteUsuarioVentasTable =
      $EstadisticasClienteUsuarioVentasTableTable(this);
  late final $EstadisticasUltimosPreciosTableTable
      estadisticasUltimosPreciosTable =
      $EstadisticasUltimosPreciosTableTable(this);
  late final $VisitaTableTable visitaTable = $VisitaTableTable(this);
  late final $VisitaLocalTableTable visitaLocalTable =
      $VisitaLocalTableTable(this);
  late final $PedidoVentaLineaLocalTableTable pedidoVentaLineaLocalTable =
      $PedidoVentaLineaLocalTableTable(this);
  late final $PedidoVentaLocalTableTable pedidoVentaLocalTable =
      $PedidoVentaLocalTableTable(this);
  late final $PedidoAlbaranTableTable pedidoAlbaranTable =
      $PedidoAlbaranTableTable(this);
  late final $DescuentoGeneralTableTable descuentoGeneralTable =
      $DescuentoGeneralTableTable(this);
  late final $LogTableTable logTable = $LogTableTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        paisTable,
        divisaTable,
        pedidoVentaEstadoTable,
        pedidoVentaTable,
        pedidoVentaLineaTable,
        plazoDeCobroTable,
        metodoDeCobroTable,
        clienteTable,
        clienteUsuarioTable,
        clienteGrupoNetoTable,
        familiaTable,
        subfamiliaTable,
        clienteDescuentoTable,
        clienteContactoTable,
        clienteDireccionTable,
        clientePagoPendienteTable,
        clientePrecioNetoTable,
        clienteRappelTable,
        clienteEstadoPotencialTable,
        clienteTipoPotencialTable,
        estadisticasArticulosTopTable,
        articuloTable,
        articuloComponenteTable,
        articuloEmpresaIvaTable,
        articuloRecambioTable,
        articuloSustitutivoTable,
        articuloPrecioTarifaTable,
        articuloGrupoNetoTable,
        estadisticasClienteUsuarioVentasTable,
        estadisticasUltimosPreciosTable,
        visitaTable,
        visitaLocalTable,
        pedidoVentaLineaLocalTable,
        pedidoVentaLocalTable,
        pedidoAlbaranTable,
        descuentoGeneralTable,
        logTable
      ];
  @override
  DriftDatabaseOptions get options =>
      const DriftDatabaseOptions(storeDateTimeAsText: true);
}
