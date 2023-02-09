// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_edit_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteContactoEditParam {
  String? get clienteContactoId => throw _privateConstructorUsedError;
  bool get tratado => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteContactoEditParamCopyWith<ClienteContactoEditParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteContactoEditParamCopyWith<$Res> {
  factory $ClienteContactoEditParamCopyWith(ClienteContactoEditParam value,
          $Res Function(ClienteContactoEditParam) then) =
      _$ClienteContactoEditParamCopyWithImpl<$Res, ClienteContactoEditParam>;
  @useResult
  $Res call({String? clienteContactoId, bool tratado});
}

/// @nodoc
class _$ClienteContactoEditParamCopyWithImpl<$Res,
        $Val extends ClienteContactoEditParam>
    implements $ClienteContactoEditParamCopyWith<$Res> {
  _$ClienteContactoEditParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteContactoId = freezed,
    Object? tratado = null,
  }) {
    return _then(_value.copyWith(
      clienteContactoId: freezed == clienteContactoId
          ? _value.clienteContactoId
          : clienteContactoId // ignore: cast_nullable_to_non_nullable
              as String?,
      tratado: null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ClienteContactoEditParamCopyWith<$Res>
    implements $ClienteContactoEditParamCopyWith<$Res> {
  factory _$$_ClienteContactoEditParamCopyWith(
          _$_ClienteContactoEditParam value,
          $Res Function(_$_ClienteContactoEditParam) then) =
      __$$_ClienteContactoEditParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? clienteContactoId, bool tratado});
}

/// @nodoc
class __$$_ClienteContactoEditParamCopyWithImpl<$Res>
    extends _$ClienteContactoEditParamCopyWithImpl<$Res,
        _$_ClienteContactoEditParam>
    implements _$$_ClienteContactoEditParamCopyWith<$Res> {
  __$$_ClienteContactoEditParamCopyWithImpl(_$_ClienteContactoEditParam _value,
      $Res Function(_$_ClienteContactoEditParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteContactoId = freezed,
    Object? tratado = null,
  }) {
    return _then(_$_ClienteContactoEditParam(
      freezed == clienteContactoId
          ? _value.clienteContactoId
          : clienteContactoId // ignore: cast_nullable_to_non_nullable
              as String?,
      null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClienteContactoEditParam extends _ClienteContactoEditParam {
  const _$_ClienteContactoEditParam(this.clienteContactoId, this.tratado)
      : super._();

  @override
  final String? clienteContactoId;
  @override
  final bool tratado;

  @override
  String toString() {
    return 'ClienteContactoEditParam(clienteContactoId: $clienteContactoId, tratado: $tratado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteContactoEditParam &&
            (identical(other.clienteContactoId, clienteContactoId) ||
                other.clienteContactoId == clienteContactoId) &&
            (identical(other.tratado, tratado) || other.tratado == tratado));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteContactoId, tratado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteContactoEditParamCopyWith<_$_ClienteContactoEditParam>
      get copyWith => __$$_ClienteContactoEditParamCopyWithImpl<
          _$_ClienteContactoEditParam>(this, _$identity);
}

abstract class _ClienteContactoEditParam extends ClienteContactoEditParam {
  const factory _ClienteContactoEditParam(
          final String? clienteContactoId, final bool tratado) =
      _$_ClienteContactoEditParam;
  const _ClienteContactoEditParam._() : super._();

  @override
  String? get clienteContactoId;
  @override
  bool get tratado;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteContactoEditParamCopyWith<_$_ClienteContactoEditParam>
      get copyWith => throw _privateConstructorUsedError;
}
