// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_linea_ultimos_precios_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UltimosPreciosParam {
  String get clienteId => throw _privateConstructorUsedError;
  String get articuloId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UltimosPreciosParamCopyWith<UltimosPreciosParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UltimosPreciosParamCopyWith<$Res> {
  factory $UltimosPreciosParamCopyWith(
          UltimosPreciosParam value, $Res Function(UltimosPreciosParam) then) =
      _$UltimosPreciosParamCopyWithImpl<$Res, UltimosPreciosParam>;
  @useResult
  $Res call({String clienteId, String articuloId});
}

/// @nodoc
class _$UltimosPreciosParamCopyWithImpl<$Res, $Val extends UltimosPreciosParam>
    implements $UltimosPreciosParamCopyWith<$Res> {
  _$UltimosPreciosParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UltimosPreciosParamCopyWith<$Res>
    implements $UltimosPreciosParamCopyWith<$Res> {
  factory _$$_UltimosPreciosParamCopyWith(_$_UltimosPreciosParam value,
          $Res Function(_$_UltimosPreciosParam) then) =
      __$$_UltimosPreciosParamCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String articuloId});
}

/// @nodoc
class __$$_UltimosPreciosParamCopyWithImpl<$Res>
    extends _$UltimosPreciosParamCopyWithImpl<$Res, _$_UltimosPreciosParam>
    implements _$$_UltimosPreciosParamCopyWith<$Res> {
  __$$_UltimosPreciosParamCopyWithImpl(_$_UltimosPreciosParam _value,
      $Res Function(_$_UltimosPreciosParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
  }) {
    return _then(_$_UltimosPreciosParam(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UltimosPreciosParam extends _UltimosPreciosParam {
  const _$_UltimosPreciosParam(
      {required this.clienteId, required this.articuloId})
      : super._();

  @override
  final String clienteId;
  @override
  final String articuloId;

  @override
  String toString() {
    return 'UltimosPreciosParam(clienteId: $clienteId, articuloId: $articuloId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UltimosPreciosParam &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, articuloId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UltimosPreciosParamCopyWith<_$_UltimosPreciosParam> get copyWith =>
      __$$_UltimosPreciosParamCopyWithImpl<_$_UltimosPreciosParam>(
          this, _$identity);
}

abstract class _UltimosPreciosParam extends UltimosPreciosParam {
  const factory _UltimosPreciosParam(
      {required final String clienteId,
      required final String articuloId}) = _$_UltimosPreciosParam;
  const _UltimosPreciosParam._() : super._();

  @override
  String get clienteId;
  @override
  String get articuloId;
  @override
  @JsonKey(ignore: true)
  _$$_UltimosPreciosParamCopyWith<_$_UltimosPreciosParam> get copyWith =>
      throw _privateConstructorUsedError;
}
