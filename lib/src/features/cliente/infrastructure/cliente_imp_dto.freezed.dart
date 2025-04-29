// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

ClienteImpDTO _$ClienteImpDTOFromJson(Map<String, dynamic> json) {
  return _ClienteImpDTO.fromJson(json);
}

/// @nodoc
mixin _$ClienteImpDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SECTOR_ID')
  String get sectorId => throw _privateConstructorUsedError;

  /// Serializes this ClienteImpDTO to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ClienteImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteImpDTOCopyWith<ClienteImpDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteImpDTOCopyWith<$Res> {
  factory $ClienteImpDTOCopyWith(
    ClienteImpDTO value,
    $Res Function(ClienteImpDTO) then,
  ) = _$ClienteImpDTOCopyWithImpl<$Res, ClienteImpDTO>;
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'SECTOR_ID') String sectorId,
  });
}

/// @nodoc
class _$ClienteImpDTOCopyWithImpl<$Res, $Val extends ClienteImpDTO>
    implements $ClienteImpDTOCopyWith<$Res> {
  _$ClienteImpDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clienteId = null, Object? sectorId = null}) {
    return _then(
      _value.copyWith(
            clienteId:
                null == clienteId
                    ? _value.clienteId
                    : clienteId // ignore: cast_nullable_to_non_nullable
                        as String,
            sectorId:
                null == sectorId
                    ? _value.sectorId
                    : sectorId // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClienteImpDTOImplCopyWith<$Res>
    implements $ClienteImpDTOCopyWith<$Res> {
  factory _$$ClienteImpDTOImplCopyWith(
    _$ClienteImpDTOImpl value,
    $Res Function(_$ClienteImpDTOImpl) then,
  ) = __$$ClienteImpDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    @JsonKey(name: 'CLIENTE_ID') String clienteId,
    @JsonKey(name: 'SECTOR_ID') String sectorId,
  });
}

/// @nodoc
class __$$ClienteImpDTOImplCopyWithImpl<$Res>
    extends _$ClienteImpDTOCopyWithImpl<$Res, _$ClienteImpDTOImpl>
    implements _$$ClienteImpDTOImplCopyWith<$Res> {
  __$$ClienteImpDTOImplCopyWithImpl(
    _$ClienteImpDTOImpl _value,
    $Res Function(_$ClienteImpDTOImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClienteImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? clienteId = null, Object? sectorId = null}) {
    return _then(
      _$ClienteImpDTOImpl(
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        sectorId:
            null == sectorId
                ? _value.sectorId
                : sectorId // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$ClienteImpDTOImpl extends _ClienteImpDTO {
  const _$ClienteImpDTOImpl({
    @JsonKey(name: 'CLIENTE_ID') required this.clienteId,
    @JsonKey(name: 'SECTOR_ID') required this.sectorId,
  }) : super._();

  factory _$ClienteImpDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ClienteImpDTOImplFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String clienteId;
  @override
  @JsonKey(name: 'SECTOR_ID')
  final String sectorId;

  @override
  String toString() {
    return 'ClienteImpDTO(clienteId: $clienteId, sectorId: $sectorId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteImpDTOImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.sectorId, sectorId) ||
                other.sectorId == sectorId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, clienteId, sectorId);

  /// Create a copy of ClienteImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteImpDTOImplCopyWith<_$ClienteImpDTOImpl> get copyWith =>
      __$$ClienteImpDTOImplCopyWithImpl<_$ClienteImpDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ClienteImpDTOImplToJson(this);
  }
}

abstract class _ClienteImpDTO extends ClienteImpDTO {
  const factory _ClienteImpDTO({
    @JsonKey(name: 'CLIENTE_ID') required final String clienteId,
    @JsonKey(name: 'SECTOR_ID') required final String sectorId,
  }) = _$ClienteImpDTOImpl;
  const _ClienteImpDTO._() : super._();

  factory _ClienteImpDTO.fromJson(Map<String, dynamic> json) =
      _$ClienteImpDTOImpl.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get clienteId;
  @override
  @JsonKey(name: 'SECTOR_ID')
  String get sectorId;

  /// Create a copy of ClienteImpDTO
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteImpDTOImplCopyWith<_$ClienteImpDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
