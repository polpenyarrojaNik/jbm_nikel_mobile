// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_net_group_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerNetGroupDTO _$CustomerNetGroupDTOFromJson(Map<String, dynamic> json) {
  return _CustomerNetGroupDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerNetGroupDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get netGroupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String? get netGroupDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerNetGroupDTOCopyWith<CustomerNetGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerNetGroupDTOCopyWith<$Res> {
  factory $CustomerNetGroupDTOCopyWith(
          CustomerNetGroupDTO value, $Res Function(CustomerNetGroupDTO) then) =
      _$CustomerNetGroupDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'GRUPO_NETO_ID') String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerNetGroupDTOCopyWithImpl<$Res>
    implements $CustomerNetGroupDTOCopyWith<$Res> {
  _$CustomerNetGroupDTOCopyWithImpl(this._value, this._then);

  final CustomerNetGroupDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerNetGroupDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_CustomerNetGroupDTOCopyWith<$Res>
    implements $CustomerNetGroupDTOCopyWith<$Res> {
  factory _$$_CustomerNetGroupDTOCopyWith(_$_CustomerNetGroupDTO value,
          $Res Function(_$_CustomerNetGroupDTO) then) =
      __$$_CustomerNetGroupDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'GRUPO_NETO_ID') String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String? netGroupDescription,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerNetGroupDTOCopyWithImpl<$Res>
    extends _$CustomerNetGroupDTOCopyWithImpl<$Res>
    implements _$$_CustomerNetGroupDTOCopyWith<$Res> {
  __$$_CustomerNetGroupDTOCopyWithImpl(_$_CustomerNetGroupDTO _value,
      $Res Function(_$_CustomerNetGroupDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerNetGroupDTO));

  @override
  _$_CustomerNetGroupDTO get _value => super._value as _$_CustomerNetGroupDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? netGroupId = freezed,
    Object? netGroupDescription = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerNetGroupDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupId: netGroupId == freezed
          ? _value.netGroupId
          : netGroupId // ignore: cast_nullable_to_non_nullable
              as String,
      netGroupDescription: netGroupDescription == freezed
          ? _value.netGroupDescription
          : netGroupDescription // ignore: cast_nullable_to_non_nullable
              as String?,
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
class _$_CustomerNetGroupDTO extends _CustomerNetGroupDTO {
  const _$_CustomerNetGroupDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'GRUPO_NETO_ID') required this.netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') this.netGroupDescription,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerNetGroupDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerNetGroupDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  final String netGroupId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  final String? netGroupDescription;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerNetGroupDTO(customerId: $customerId, netGroupId: $netGroupId, netGroupDescription: $netGroupDescription, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerNetGroupDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupId, netGroupId) &&
            const DeepCollectionEquality()
                .equals(other.netGroupDescription, netGroupDescription) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(netGroupId),
      const DeepCollectionEquality().hash(netGroupDescription),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerNetGroupDTOCopyWith<_$_CustomerNetGroupDTO> get copyWith =>
      __$$_CustomerNetGroupDTOCopyWithImpl<_$_CustomerNetGroupDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerNetGroupDTOToJson(
      this,
    );
  }
}

abstract class _CustomerNetGroupDTO extends CustomerNetGroupDTO {
  const factory _CustomerNetGroupDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String customerId,
      @JsonKey(name: 'GRUPO_NETO_ID')
          required final String netGroupId,
      @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
          final String? netGroupDescription,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_CustomerNetGroupDTO;
  const _CustomerNetGroupDTO._() : super._();

  factory _CustomerNetGroupDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerNetGroupDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'GRUPO_NETO_ID')
  String get netGroupId;
  @override
  @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')
  String? get netGroupDescription;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerNetGroupDTOCopyWith<_$_CustomerNetGroupDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
