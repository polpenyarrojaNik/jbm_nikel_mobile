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
  $Res call({String clienteId, String? id, String? impId});
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteImpParamCopyWith<$Res>
    implements $ClienteImpParamCopyWith<$Res> {
  factory _$$_ClienteImpParamCopyWith(
          _$_ClienteImpParam value, $Res Function(_$_ClienteImpParam) then) =
      __$$_ClienteImpParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String? id, String? impId});
}

/// @nodoc
class __$$_ClienteImpParamCopyWithImpl<$Res>
    extends _$ClienteImpParamCopyWithImpl<$Res, _$_ClienteImpParam>
    implements _$$_ClienteImpParamCopyWith<$Res> {
  __$$_ClienteImpParamCopyWithImpl(
      _$_ClienteImpParam _value, $Res Function(_$_ClienteImpParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? id = freezed,
    Object? impId = freezed,
  }) {
    return _then(_$_ClienteImpParam(
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
    ));
  }
}

/// @nodoc

class _$_ClienteImpParam extends _ClienteImpParam {
  const _$_ClienteImpParam(this.clienteId, {this.id, this.impId}) : super._();

  @override
  final String clienteId;
  @override
  final String? id;
  @override
  final String? impId;

  @override
  String toString() {
    return 'ClienteImpParam(clienteId: $clienteId, id: $id, impId: $impId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteImpParam &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.impId, impId) || other.impId == impId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, id, impId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteImpParamCopyWith<_$_ClienteImpParam> get copyWith =>
      __$$_ClienteImpParamCopyWithImpl<_$_ClienteImpParam>(this, _$identity);
}

abstract class _ClienteImpParam extends ClienteImpParam {
  const factory _ClienteImpParam(final String clienteId,
      {final String? id, final String? impId}) = _$_ClienteImpParam;
  const _ClienteImpParam._() : super._();

  @override
  String get clienteId;
  @override
  String? get id;
  @override
  String? get impId;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteImpParamCopyWith<_$_ClienteImpParam> get copyWith =>
      throw _privateConstructorUsedError;
}
