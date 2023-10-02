// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteImpParam {
  String get clienteId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get impId => throw _privateConstructorUsedError;
  Pais? get clientePais => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteImpParamCopyWith<ClienteImpParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteImpParamCopyWith<$Res> {
  factory $ClienteImpParamCopyWith(
          ClienteImpParam value, $Res Function(ClienteImpParam) then) =
      _$ClienteImpParamCopyWithImpl<$Res, ClienteImpParam>;
  @useResult
  $Res call({String clienteId, String? id, String? impId, Pais? clientePais});

  $PaisCopyWith<$Res>? get clientePais;
}

/// @nodoc
class _$ClienteImpParamCopyWithImpl<$Res, $Val extends ClienteImpParam>
    implements $ClienteImpParamCopyWith<$Res> {
  _$ClienteImpParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? id = freezed,
    Object? impId = freezed,
    Object? clientePais = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      impId: freezed == impId
          ? _value.impId
          : impId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePais: freezed == clientePais
          ? _value.clientePais
          : clientePais // ignore: cast_nullable_to_non_nullable
              as Pais?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get clientePais {
    if (_value.clientePais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.clientePais!, (value) {
      return _then(_value.copyWith(clientePais: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteImpParamImplCopyWith<$Res>
    implements $ClienteImpParamCopyWith<$Res> {
  factory _$$ClienteImpParamImplCopyWith(_$ClienteImpParamImpl value,
          $Res Function(_$ClienteImpParamImpl) then) =
      __$$ClienteImpParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String? id, String? impId, Pais? clientePais});

  @override
  $PaisCopyWith<$Res>? get clientePais;
}

/// @nodoc
class __$$ClienteImpParamImplCopyWithImpl<$Res>
    extends _$ClienteImpParamCopyWithImpl<$Res, _$ClienteImpParamImpl>
    implements _$$ClienteImpParamImplCopyWith<$Res> {
  __$$ClienteImpParamImplCopyWithImpl(
      _$ClienteImpParamImpl _value, $Res Function(_$ClienteImpParamImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? id = freezed,
    Object? impId = freezed,
    Object? clientePais = freezed,
  }) {
    return _then(_$ClienteImpParamImpl(
      null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      impId: freezed == impId
          ? _value.impId
          : impId // ignore: cast_nullable_to_non_nullable
              as String?,
      clientePais: freezed == clientePais
          ? _value.clientePais
          : clientePais // ignore: cast_nullable_to_non_nullable
              as Pais?,
    ));
  }
}

/// @nodoc

class _$ClienteImpParamImpl extends _ClienteImpParam {
  const _$ClienteImpParamImpl(this.clienteId,
      {this.id, this.impId, this.clientePais})
      : super._();

  @override
  final String clienteId;
  @override
  final String? id;
  @override
  final String? impId;
  @override
  final Pais? clientePais;

  @override
  String toString() {
    return 'ClienteImpParam(clienteId: $clienteId, id: $id, impId: $impId, clientePais: $clientePais)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteImpParamImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.impId, impId) || other.impId == impId) &&
            (identical(other.clientePais, clientePais) ||
                other.clientePais == clientePais));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, clienteId, id, impId, clientePais);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteImpParamImplCopyWith<_$ClienteImpParamImpl> get copyWith =>
      __$$ClienteImpParamImplCopyWithImpl<_$ClienteImpParamImpl>(
          this, _$identity);
}

abstract class _ClienteImpParam extends ClienteImpParam {
  const factory _ClienteImpParam(final String clienteId,
      {final String? id,
      final String? impId,
      final Pais? clientePais}) = _$ClienteImpParamImpl;
  const _ClienteImpParam._() : super._();

  @override
  String get clienteId;
  @override
  String? get id;
  @override
  String? get impId;
  @override
  Pais? get clientePais;
  @override
  @JsonKey(ignore: true)
  _$$ClienteImpParamImplCopyWith<_$ClienteImpParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
