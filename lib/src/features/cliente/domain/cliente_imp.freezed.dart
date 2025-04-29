// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteImp {
  String get clienteId => throw _privateConstructorUsedError;
  Sector get sector => throw _privateConstructorUsedError;

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteImpCopyWith<ClienteImp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteImpCopyWith<$Res> {
  factory $ClienteImpCopyWith(
          ClienteImp value, $Res Function(ClienteImp) then) =
      _$ClienteImpCopyWithImpl<$Res, ClienteImp>;
  @useResult
  $Res call({String clienteId, Sector sector});

  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class _$ClienteImpCopyWithImpl<$Res, $Val extends ClienteImp>
    implements $ClienteImpCopyWith<$Res> {
  _$ClienteImpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? sector = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
    ) as $Val);
  }

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $SectorCopyWith<$Res> get sector {
    return $SectorCopyWith<$Res>(_value.sector, (value) {
      return _then(_value.copyWith(sector: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteImpImplCopyWith<$Res>
    implements $ClienteImpCopyWith<$Res> {
  factory _$$ClienteImpImplCopyWith(
          _$ClienteImpImpl value, $Res Function(_$ClienteImpImpl) then) =
      __$$ClienteImpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, Sector sector});

  @override
  $SectorCopyWith<$Res> get sector;
}

/// @nodoc
class __$$ClienteImpImplCopyWithImpl<$Res>
    extends _$ClienteImpCopyWithImpl<$Res, _$ClienteImpImpl>
    implements _$$ClienteImpImplCopyWith<$Res> {
  __$$ClienteImpImplCopyWithImpl(
      _$ClienteImpImpl _value, $Res Function(_$ClienteImpImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? sector = null,
  }) {
    return _then(_$ClienteImpImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      sector: null == sector
          ? _value.sector
          : sector // ignore: cast_nullable_to_non_nullable
              as Sector,
    ));
  }
}

/// @nodoc

class _$ClienteImpImpl extends _ClienteImp {
  const _$ClienteImpImpl({required this.clienteId, required this.sector})
      : super._();

  @override
  final String clienteId;
  @override
  final Sector sector;

  @override
  String toString() {
    return 'ClienteImp(clienteId: $clienteId, sector: $sector)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteImpImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.sector, sector) || other.sector == sector));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, sector);

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteImpImplCopyWith<_$ClienteImpImpl> get copyWith =>
      __$$ClienteImpImplCopyWithImpl<_$ClienteImpImpl>(this, _$identity);
}

abstract class _ClienteImp extends ClienteImp {
  const factory _ClienteImp(
      {required final String clienteId,
      required final Sector sector}) = _$ClienteImpImpl;
  const _ClienteImp._() : super._();

  @override
  String get clienteId;
  @override
  Sector get sector;

  /// Create a copy of ClienteImp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteImpImplCopyWith<_$ClienteImpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
