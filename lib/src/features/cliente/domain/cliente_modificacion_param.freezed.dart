// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_modificacion_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteModificacionParam {
  String get clienteId => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool get tratado => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteModificacionParamCopyWith<ClienteModificacionParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteModificacionParamCopyWith<$Res> {
  factory $ClienteModificacionParamCopyWith(ClienteModificacionParam value,
          $Res Function(ClienteModificacionParam) then) =
      _$ClienteModificacionParamCopyWithImpl<$Res, ClienteModificacionParam>;
  @useResult
  $Res call({String clienteId, String? id, bool tratado});
}

/// @nodoc
class _$ClienteModificacionParamCopyWithImpl<$Res,
        $Val extends ClienteModificacionParam>
    implements $ClienteModificacionParamCopyWith<$Res> {
  _$ClienteModificacionParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? id = freezed,
    Object? tratado = null,
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
      tratado: null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteModificacionParamCopyWith<$Res>
    implements $ClienteModificacionParamCopyWith<$Res> {
  factory _$$_ClienteModificacionParamCopyWith(
          _$_ClienteModificacionParam value,
          $Res Function(_$_ClienteModificacionParam) then) =
      __$$_ClienteModificacionParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String? id, bool tratado});
}

/// @nodoc
class __$$_ClienteModificacionParamCopyWithImpl<$Res>
    extends _$ClienteModificacionParamCopyWithImpl<$Res,
        _$_ClienteModificacionParam>
    implements _$$_ClienteModificacionParamCopyWith<$Res> {
  __$$_ClienteModificacionParamCopyWithImpl(_$_ClienteModificacionParam _value,
      $Res Function(_$_ClienteModificacionParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? id = freezed,
    Object? tratado = null,
  }) {
    return _then(_$_ClienteModificacionParam(
      null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClienteModificacionParam extends _ClienteModificacionParam {
  const _$_ClienteModificacionParam(this.clienteId, this.id, this.tratado)
      : super._();

  @override
  final String clienteId;
  @override
  final String? id;
  @override
  final bool tratado;

  @override
  String toString() {
    return 'ClienteModificacionParam(clienteId: $clienteId, id: $id, tratado: $tratado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteModificacionParam &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.tratado, tratado) || other.tratado == tratado));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, id, tratado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteModificacionParamCopyWith<_$_ClienteModificacionParam>
      get copyWith => __$$_ClienteModificacionParamCopyWithImpl<
          _$_ClienteModificacionParam>(this, _$identity);
}

abstract class _ClienteModificacionParam extends ClienteModificacionParam {
  const factory _ClienteModificacionParam(
          final String clienteId, final String? id, final bool tratado) =
      _$_ClienteModificacionParam;
  const _ClienteModificacionParam._() : super._();

  @override
  String get clienteId;
  @override
  String? get id;
  @override
  bool get tratado;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteModificacionParamCopyWith<_$_ClienteModificacionParam>
      get copyWith => throw _privateConstructorUsedError;
}
