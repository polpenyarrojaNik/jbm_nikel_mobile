// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'visit_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VisitDTO _$VisitDTOFromJson(Map<String, dynamic> json) {
  return _VisitDTO.fromJson(json);
}

/// @nodoc
mixin _$VisitDTO {
  @JsonKey(name: 'VISITA_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA')
  DateTime get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl => throw _privateConstructorUsedError;
  @JsonKey(name: 'CONTACTO')
  String? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: 'RESUMEN')
  String? get summary => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD')
  double get latitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD')
  double get longitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VisitDTOCopyWith<VisitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VisitDTOCopyWith<$Res> {
  factory $VisitDTOCopyWith(VisitDTO value, $Res Function(VisitDTO) then) =
      _$VisitDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'VISITA_ID') String id,
      @JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'FECHA') DateTime date,
      @JsonKey(name: 'NUM_EMPL') String numEmpl,
      @JsonKey(name: 'CONTACTO') String? contact,
      @JsonKey(name: 'RESUMEN') String? summary,
      @JsonKey(name: 'LATITUD') double latitude,
      @JsonKey(name: 'LONGITUD') double longitude,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$VisitDTOCopyWithImpl<$Res> implements $VisitDTOCopyWith<$Res> {
  _$VisitDTOCopyWithImpl(this._value, this._then);

  final VisitDTO _value;
  // ignore: unused_field
  final $Res Function(VisitDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? date = freezed,
    Object? numEmpl = freezed,
    Object? contact = freezed,
    Object? summary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numEmpl: numEmpl == freezed
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_VisitDTOCopyWith<$Res> implements $VisitDTOCopyWith<$Res> {
  factory _$$_VisitDTOCopyWith(
          _$_VisitDTO value, $Res Function(_$_VisitDTO) then) =
      __$$_VisitDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'VISITA_ID') String id,
      @JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'FECHA') DateTime date,
      @JsonKey(name: 'NUM_EMPL') String numEmpl,
      @JsonKey(name: 'CONTACTO') String? contact,
      @JsonKey(name: 'RESUMEN') String? summary,
      @JsonKey(name: 'LATITUD') double latitude,
      @JsonKey(name: 'LONGITUD') double longitude,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_VisitDTOCopyWithImpl<$Res> extends _$VisitDTOCopyWithImpl<$Res>
    implements _$$_VisitDTOCopyWith<$Res> {
  __$$_VisitDTOCopyWithImpl(
      _$_VisitDTO _value, $Res Function(_$_VisitDTO) _then)
      : super(_value, (v) => _then(v as _$_VisitDTO));

  @override
  _$_VisitDTO get _value => super._value as _$_VisitDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerId = freezed,
    Object? date = freezed,
    Object? numEmpl = freezed,
    Object? contact = freezed,
    Object? summary = freezed,
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_VisitDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      numEmpl: numEmpl == freezed
          ? _value.numEmpl
          : numEmpl // ignore: cast_nullable_to_non_nullable
              as String,
      contact: contact == freezed
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      summary: summary == freezed
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as String?,
      latitude: latitude == freezed
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double,
      longitude: longitude == freezed
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VisitDTO extends _VisitDTO {
  const _$_VisitDTO(
      {@JsonKey(name: 'VISITA_ID') required this.id,
      @JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'FECHA') required this.date,
      @JsonKey(name: 'NUM_EMPL') required this.numEmpl,
      @JsonKey(name: 'CONTACTO') this.contact,
      @JsonKey(name: 'RESUMEN') this.summary,
      @JsonKey(name: 'LATITUD') required this.latitude,
      @JsonKey(name: 'LONGITUD') required this.longitude,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_VisitDTO.fromJson(Map<String, dynamic> json) =>
      _$$_VisitDTOFromJson(json);

  @override
  @JsonKey(name: 'VISITA_ID')
  final String id;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'FECHA')
  final DateTime date;
  @override
  @JsonKey(name: 'NUM_EMPL')
  final String numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  final String? contact;
  @override
  @JsonKey(name: 'RESUMEN')
  final String? summary;
  @override
  @JsonKey(name: 'LATITUD')
  final double latitude;
  @override
  @JsonKey(name: 'LONGITUD')
  final double longitude;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'VisitDTO(id: $id, customerId: $customerId, date: $date, numEmpl: $numEmpl, contact: $contact, summary: $summary, latitude: $latitude, longitude: $longitude, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VisitDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.numEmpl, numEmpl) &&
            const DeepCollectionEquality().equals(other.contact, contact) &&
            const DeepCollectionEquality().equals(other.summary, summary) &&
            const DeepCollectionEquality().equals(other.latitude, latitude) &&
            const DeepCollectionEquality().equals(other.longitude, longitude) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(numEmpl),
      const DeepCollectionEquality().hash(contact),
      const DeepCollectionEquality().hash(summary),
      const DeepCollectionEquality().hash(latitude),
      const DeepCollectionEquality().hash(longitude),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_VisitDTOCopyWith<_$_VisitDTO> get copyWith =>
      __$$_VisitDTOCopyWithImpl<_$_VisitDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VisitDTOToJson(
      this,
    );
  }
}

abstract class _VisitDTO extends VisitDTO {
  const factory _VisitDTO(
      {@JsonKey(name: 'VISITA_ID') required final String id,
      @JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'FECHA') required final DateTime date,
      @JsonKey(name: 'NUM_EMPL') required final String numEmpl,
      @JsonKey(name: 'CONTACTO') final String? contact,
      @JsonKey(name: 'RESUMEN') final String? summary,
      @JsonKey(name: 'LATITUD') required final double latitude,
      @JsonKey(name: 'LONGITUD') required final double longitude,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_VisitDTO;
  const _VisitDTO._() : super._();

  factory _VisitDTO.fromJson(Map<String, dynamic> json) = _$_VisitDTO.fromJson;

  @override
  @JsonKey(name: 'VISITA_ID')
  String get id;
  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'FECHA')
  DateTime get date;
  @override
  @JsonKey(name: 'NUM_EMPL')
  String get numEmpl;
  @override
  @JsonKey(name: 'CONTACTO')
  String? get contact;
  @override
  @JsonKey(name: 'RESUMEN')
  String? get summary;
  @override
  @JsonKey(name: 'LATITUD')
  double get latitude;
  @override
  @JsonKey(name: 'LONGITUD')
  double get longitude;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_VisitDTOCopyWith<_$_VisitDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
