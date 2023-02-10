// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_edit_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteDireccionEditParam {
  String get clienteId => throw _privateConstructorUsedError;
  String? get clienteDireccionId => throw _privateConstructorUsedError;
  Pais? get paisCliente => throw _privateConstructorUsedError;
  bool get tratado => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteDireccionEditParamCopyWith<ClienteDireccionEditParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionEditParamCopyWith<$Res> {
  factory $ClienteDireccionEditParamCopyWith(ClienteDireccionEditParam value,
          $Res Function(ClienteDireccionEditParam) then) =
      _$ClienteDireccionEditParamCopyWithImpl<$Res, ClienteDireccionEditParam>;
  @useResult
  $Res call(
      {String clienteId,
      String? clienteDireccionId,
      Pais? paisCliente,
      bool tratado});

  $PaisCopyWith<$Res>? get paisCliente;
}

/// @nodoc
class _$ClienteDireccionEditParamCopyWithImpl<$Res,
        $Val extends ClienteDireccionEditParam>
    implements $ClienteDireccionEditParamCopyWith<$Res> {
  _$ClienteDireccionEditParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? clienteDireccionId = freezed,
    Object? paisCliente = freezed,
    Object? tratado = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteDireccionId: freezed == clienteDireccionId
          ? _value.clienteDireccionId
          : clienteDireccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      paisCliente: freezed == paisCliente
          ? _value.paisCliente
          : paisCliente // ignore: cast_nullable_to_non_nullable
              as Pais?,
      tratado: null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get paisCliente {
    if (_value.paisCliente == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.paisCliente!, (value) {
      return _then(_value.copyWith(paisCliente: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ClienteDireccionEditParamCopyWith<$Res>
    implements $ClienteDireccionEditParamCopyWith<$Res> {
  factory _$$_ClienteDireccionEditParamCopyWith(
          _$_ClienteDireccionEditParam value,
          $Res Function(_$_ClienteDireccionEditParam) then) =
      __$$_ClienteDireccionEditParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clienteId,
      String? clienteDireccionId,
      Pais? paisCliente,
      bool tratado});

  @override
  $PaisCopyWith<$Res>? get paisCliente;
}

/// @nodoc
class __$$_ClienteDireccionEditParamCopyWithImpl<$Res>
    extends _$ClienteDireccionEditParamCopyWithImpl<$Res,
        _$_ClienteDireccionEditParam>
    implements _$$_ClienteDireccionEditParamCopyWith<$Res> {
  __$$_ClienteDireccionEditParamCopyWithImpl(
      _$_ClienteDireccionEditParam _value,
      $Res Function(_$_ClienteDireccionEditParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? clienteDireccionId = freezed,
    Object? paisCliente = freezed,
    Object? tratado = null,
  }) {
    return _then(_$_ClienteDireccionEditParam(
      null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == clienteDireccionId
          ? _value.clienteDireccionId
          : clienteDireccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      freezed == paisCliente
          ? _value.paisCliente
          : paisCliente // ignore: cast_nullable_to_non_nullable
              as Pais?,
      null == tratado
          ? _value.tratado
          : tratado // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClienteDireccionEditParam extends _ClienteDireccionEditParam {
  const _$_ClienteDireccionEditParam(
      this.clienteId, this.clienteDireccionId, this.paisCliente, this.tratado)
      : super._();

  @override
  final String clienteId;
  @override
  final String? clienteDireccionId;
  @override
  final Pais? paisCliente;
  @override
  final bool tratado;

  @override
  String toString() {
    return 'ClienteDireccionEditParam(clienteId: $clienteId, clienteDireccionId: $clienteDireccionId, paisCliente: $paisCliente, tratado: $tratado)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteDireccionEditParam &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.clienteDireccionId, clienteDireccionId) ||
                other.clienteDireccionId == clienteDireccionId) &&
            (identical(other.paisCliente, paisCliente) ||
                other.paisCliente == paisCliente) &&
            (identical(other.tratado, tratado) || other.tratado == tratado));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, clienteId, clienteDireccionId, paisCliente, tratado);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClienteDireccionEditParamCopyWith<_$_ClienteDireccionEditParam>
      get copyWith => __$$_ClienteDireccionEditParamCopyWithImpl<
          _$_ClienteDireccionEditParam>(this, _$identity);
}

abstract class _ClienteDireccionEditParam extends ClienteDireccionEditParam {
  const factory _ClienteDireccionEditParam(
      final String clienteId,
      final String? clienteDireccionId,
      final Pais? paisCliente,
      final bool tratado) = _$_ClienteDireccionEditParam;
  const _ClienteDireccionEditParam._() : super._();

  @override
  String get clienteId;
  @override
  String? get clienteDireccionId;
  @override
  Pais? get paisCliente;
  @override
  bool get tratado;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteDireccionEditParamCopyWith<_$_ClienteDireccionEditParam>
      get copyWith => throw _privateConstructorUsedError;
}
