// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_rappel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerRappelDTO _$CustomerRappelDTOFromJson(Map<String, dynamic> json) {
  return _CustomerRappelDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerRappelDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'RAPPEL_ID')
  String get rappelId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get dateFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get dateTo => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerRappelDTOCopyWith<CustomerRappelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerRappelDTOCopyWith<$Res> {
  factory $CustomerRappelDTOCopyWith(
          CustomerRappelDTO value, $Res Function(CustomerRappelDTO) then) =
      _$CustomerRappelDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'RAPPEL_ID') String rappelId,
      @JsonKey(name: 'DESCRIPCION') String description,
      @JsonKey(name: 'FECHA_DESDE') DateTime dateFrom,
      @JsonKey(name: 'FECHA_HASTA') DateTime? dateTo,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerRappelDTOCopyWithImpl<$Res>
    implements $CustomerRappelDTOCopyWith<$Res> {
  _$CustomerRappelDTOCopyWithImpl(this._value, this._then);

  final CustomerRappelDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerRappelDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? rappelId = freezed,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
abstract class _$$_CustomerRappelDTOCopyWith<$Res>
    implements $CustomerRappelDTOCopyWith<$Res> {
  factory _$$_CustomerRappelDTOCopyWith(_$_CustomerRappelDTO value,
          $Res Function(_$_CustomerRappelDTO) then) =
      __$$_CustomerRappelDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'RAPPEL_ID') String rappelId,
      @JsonKey(name: 'DESCRIPCION') String description,
      @JsonKey(name: 'FECHA_DESDE') DateTime dateFrom,
      @JsonKey(name: 'FECHA_HASTA') DateTime? dateTo,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerRappelDTOCopyWithImpl<$Res>
    extends _$CustomerRappelDTOCopyWithImpl<$Res>
    implements _$$_CustomerRappelDTOCopyWith<$Res> {
  __$$_CustomerRappelDTOCopyWithImpl(
      _$_CustomerRappelDTO _value, $Res Function(_$_CustomerRappelDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerRappelDTO));

  @override
  _$_CustomerRappelDTO get _value => super._value as _$_CustomerRappelDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? rappelId = freezed,
    Object? description = freezed,
    Object? dateFrom = freezed,
    Object? dateTo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerRappelDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      rappelId: rappelId == freezed
          ? _value.rappelId
          : rappelId // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      dateFrom: dateFrom == freezed
          ? _value.dateFrom
          : dateFrom // ignore: cast_nullable_to_non_nullable
              as DateTime,
      dateTo: dateTo == freezed
          ? _value.dateTo
          : dateTo // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
class _$_CustomerRappelDTO extends _CustomerRappelDTO {
  const _$_CustomerRappelDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'RAPPEL_ID') required this.rappelId,
      @JsonKey(name: 'DESCRIPCION') required this.description,
      @JsonKey(name: 'FECHA_DESDE') required this.dateFrom,
      @JsonKey(name: 'FECHA_HASTA') required this.dateTo,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerRappelDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerRappelDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'RAPPEL_ID')
  final String rappelId;
  @override
  @JsonKey(name: 'DESCRIPCION')
  final String description;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  final DateTime dateFrom;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  final DateTime? dateTo;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerRappelDTO(customerId: $customerId, rappelId: $rappelId, description: $description, dateFrom: $dateFrom, dateTo: $dateTo, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerRappelDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.rappelId, rappelId) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.dateFrom, dateFrom) &&
            const DeepCollectionEquality().equals(other.dateTo, dateTo) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(rappelId),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(dateFrom),
      const DeepCollectionEquality().hash(dateTo),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerRappelDTOCopyWith<_$_CustomerRappelDTO> get copyWith =>
      __$$_CustomerRappelDTOCopyWithImpl<_$_CustomerRappelDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerRappelDTOToJson(
      this,
    );
  }
}

abstract class _CustomerRappelDTO extends CustomerRappelDTO {
  const factory _CustomerRappelDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'RAPPEL_ID') required final String rappelId,
      @JsonKey(name: 'DESCRIPCION') required final String description,
      @JsonKey(name: 'FECHA_DESDE') required final DateTime dateFrom,
      @JsonKey(name: 'FECHA_HASTA') required final DateTime? dateTo,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerRappelDTO;
  const _CustomerRappelDTO._() : super._();

  factory _CustomerRappelDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerRappelDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'RAPPEL_ID')
  String get rappelId;
  @override
  @JsonKey(name: 'DESCRIPCION')
  String get description;
  @override
  @JsonKey(name: 'FECHA_DESDE')
  DateTime get dateFrom;
  @override
  @JsonKey(name: 'FECHA_HASTA')
  DateTime? get dateTo;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerRappelDTOCopyWith<_$_CustomerRappelDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
