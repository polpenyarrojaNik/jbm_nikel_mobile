// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'seleccionar_cantidad_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SeleccionarCantidadParam {
  String get articuloId => throw _privateConstructorUsedError;
  String get clienteId => throw _privateConstructorUsedError;
  ArticuloPrecio? get articuloPrecio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeleccionarCantidadParamCopyWith<SeleccionarCantidadParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeleccionarCantidadParamCopyWith<$Res> {
  factory $SeleccionarCantidadParamCopyWith(SeleccionarCantidadParam value,
          $Res Function(SeleccionarCantidadParam) then) =
      _$SeleccionarCantidadParamCopyWithImpl<$Res>;
  $Res call(
      {String articuloId, String clienteId, ArticuloPrecio? articuloPrecio});

  $ArticuloPrecioCopyWith<$Res>? get articuloPrecio;
}

/// @nodoc
class _$SeleccionarCantidadParamCopyWithImpl<$Res>
    implements $SeleccionarCantidadParamCopyWith<$Res> {
  _$SeleccionarCantidadParamCopyWithImpl(this._value, this._then);

  final SeleccionarCantidadParam _value;
  // ignore: unused_field
  final $Res Function(SeleccionarCantidadParam) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? clienteId = freezed,
    Object? articuloPrecio = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloPrecio: articuloPrecio == freezed
          ? _value.articuloPrecio
          : articuloPrecio // ignore: cast_nullable_to_non_nullable
              as ArticuloPrecio?,
    ));
  }

  @override
  $ArticuloPrecioCopyWith<$Res>? get articuloPrecio {
    if (_value.articuloPrecio == null) {
      return null;
    }

    return $ArticuloPrecioCopyWith<$Res>(_value.articuloPrecio!, (value) {
      return _then(_value.copyWith(articuloPrecio: value));
    });
  }
}

/// @nodoc
abstract class _$$_SeleccionarCantidadParamCopyWith<$Res>
    implements $SeleccionarCantidadParamCopyWith<$Res> {
  factory _$$_SeleccionarCantidadParamCopyWith(
          _$_SeleccionarCantidadParam value,
          $Res Function(_$_SeleccionarCantidadParam) then) =
      __$$_SeleccionarCantidadParamCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articuloId, String clienteId, ArticuloPrecio? articuloPrecio});

  @override
  $ArticuloPrecioCopyWith<$Res>? get articuloPrecio;
}

/// @nodoc
class __$$_SeleccionarCantidadParamCopyWithImpl<$Res>
    extends _$SeleccionarCantidadParamCopyWithImpl<$Res>
    implements _$$_SeleccionarCantidadParamCopyWith<$Res> {
  __$$_SeleccionarCantidadParamCopyWithImpl(_$_SeleccionarCantidadParam _value,
      $Res Function(_$_SeleccionarCantidadParam) _then)
      : super(_value, (v) => _then(v as _$_SeleccionarCantidadParam));

  @override
  _$_SeleccionarCantidadParam get _value =>
      super._value as _$_SeleccionarCantidadParam;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? clienteId = freezed,
    Object? articuloPrecio = freezed,
  }) {
    return _then(_$_SeleccionarCantidadParam(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloPrecio: articuloPrecio == freezed
          ? _value.articuloPrecio
          : articuloPrecio // ignore: cast_nullable_to_non_nullable
              as ArticuloPrecio?,
    ));
  }
}

/// @nodoc

class _$_SeleccionarCantidadParam extends _SeleccionarCantidadParam {
  const _$_SeleccionarCantidadParam(
      {required this.articuloId,
      required this.clienteId,
      required this.articuloPrecio})
      : super._();

  @override
  final String articuloId;
  @override
  final String clienteId;
  @override
  final ArticuloPrecio? articuloPrecio;

  @override
  String toString() {
    return 'SeleccionarCantidadParam(articuloId: $articuloId, clienteId: $clienteId, articuloPrecio: $articuloPrecio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeleccionarCantidadParam &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.articuloPrecio, articuloPrecio));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(articuloPrecio));

  @JsonKey(ignore: true)
  @override
  _$$_SeleccionarCantidadParamCopyWith<_$_SeleccionarCantidadParam>
      get copyWith => __$$_SeleccionarCantidadParamCopyWithImpl<
          _$_SeleccionarCantidadParam>(this, _$identity);
}

abstract class _SeleccionarCantidadParam extends SeleccionarCantidadParam {
  const factory _SeleccionarCantidadParam(
          {required final String articuloId,
          required final String clienteId,
          required final ArticuloPrecio? articuloPrecio}) =
      _$_SeleccionarCantidadParam;
  const _SeleccionarCantidadParam._() : super._();

  @override
  String get articuloId;
  @override
  String get clienteId;
  @override
  ArticuloPrecio? get articuloPrecio;
  @override
  @JsonKey(ignore: true)
  _$$_SeleccionarCantidadParamCopyWith<_$_SeleccionarCantidadParam>
      get copyWith => throw _privateConstructorUsedError;
}
