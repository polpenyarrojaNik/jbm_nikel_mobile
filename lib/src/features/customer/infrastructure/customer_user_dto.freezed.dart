// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerUserDTO _$CustomerUserDTOFromJson(Map<String, dynamic> json) {
  return _CustomerUserDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerUserDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO_ID')
  String get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerUserDTOCopyWith<CustomerUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerUserDTOCopyWith<$Res> {
  factory $CustomerUserDTOCopyWith(
          CustomerUserDTO value, $Res Function(CustomerUserDTO) then) =
      _$CustomerUserDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'USUARIO_ID') String userId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerUserDTOCopyWithImpl<$Res>
    implements $CustomerUserDTOCopyWith<$Res> {
  _$CustomerUserDTOCopyWithImpl(this._value, this._then);

  final CustomerUserDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerUserDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? userId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_CustomerUserDTOCopyWith<$Res>
    implements $CustomerUserDTOCopyWith<$Res> {
  factory _$$_CustomerUserDTOCopyWith(
          _$_CustomerUserDTO value, $Res Function(_$_CustomerUserDTO) then) =
      __$$_CustomerUserDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'USUARIO_ID') String userId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerUserDTOCopyWithImpl<$Res>
    extends _$CustomerUserDTOCopyWithImpl<$Res>
    implements _$$_CustomerUserDTOCopyWith<$Res> {
  __$$_CustomerUserDTOCopyWithImpl(
      _$_CustomerUserDTO _value, $Res Function(_$_CustomerUserDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerUserDTO));

  @override
  _$_CustomerUserDTO get _value => super._value as _$_CustomerUserDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? userId = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerUserDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_CustomerUserDTO extends _CustomerUserDTO {
  const _$_CustomerUserDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'USUARIO_ID') required this.userId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerUserDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerUserDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'USUARIO_ID')
  final String userId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerUserDTO(customerId: $customerId, userId: $userId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerUserDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerUserDTOCopyWith<_$_CustomerUserDTO> get copyWith =>
      __$$_CustomerUserDTOCopyWithImpl<_$_CustomerUserDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerUserDTOToJson(
      this,
    );
  }
}

abstract class _CustomerUserDTO extends CustomerUserDTO {
  const factory _CustomerUserDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'USUARIO_ID') required final String userId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerUserDTO;
  const _CustomerUserDTO._() : super._();

  factory _CustomerUserDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerUserDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'USUARIO_ID')
  String get userId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerUserDTOCopyWith<_$_CustomerUserDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
