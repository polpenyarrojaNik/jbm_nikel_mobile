// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_imagen.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloImagen {
  String get articuloId => throw _privateConstructorUsedError;
  String get nombreArchivo => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloImagenCopyWith<ArticuloImagen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloImagenCopyWith<$Res> {
  factory $ArticuloImagenCopyWith(
          ArticuloImagen value, $Res Function(ArticuloImagen) then) =
      _$ArticuloImagenCopyWithImpl<$Res, ArticuloImagen>;
  @useResult
  $Res call({String articuloId, String nombreArchivo, String url});
}

/// @nodoc
class _$ArticuloImagenCopyWithImpl<$Res, $Val extends ArticuloImagen>
    implements $ArticuloImagenCopyWith<$Res> {
  _$ArticuloImagenCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = null,
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: null == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticuloImagenImplCopyWith<$Res>
    implements $ArticuloImagenCopyWith<$Res> {
  factory _$$ArticuloImagenImplCopyWith(_$ArticuloImagenImpl value,
          $Res Function(_$ArticuloImagenImpl) then) =
      __$$ArticuloImagenImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String articuloId, String nombreArchivo, String url});
}

/// @nodoc
class __$$ArticuloImagenImplCopyWithImpl<$Res>
    extends _$ArticuloImagenCopyWithImpl<$Res, _$ArticuloImagenImpl>
    implements _$$ArticuloImagenImplCopyWith<$Res> {
  __$$ArticuloImagenImplCopyWithImpl(
      _$ArticuloImagenImpl _value, $Res Function(_$ArticuloImagenImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = null,
    Object? url = null,
  }) {
    return _then(_$ArticuloImagenImpl(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: null == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ArticuloImagenImpl extends _ArticuloImagen {
  const _$ArticuloImagenImpl(
      {required this.articuloId,
      required this.nombreArchivo,
      required this.url})
      : super._();

  @override
  final String articuloId;
  @override
  final String nombreArchivo;
  @override
  final String url;

  @override
  String toString() {
    return 'ArticuloImagen(articuloId: $articuloId, nombreArchivo: $nombreArchivo, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloImagenImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo) &&
            (identical(other.url, url) || other.url == url));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articuloId, nombreArchivo, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloImagenImplCopyWith<_$ArticuloImagenImpl> get copyWith =>
      __$$ArticuloImagenImplCopyWithImpl<_$ArticuloImagenImpl>(
          this, _$identity);
}

abstract class _ArticuloImagen extends ArticuloImagen {
  const factory _ArticuloImagen(
      {required final String articuloId,
      required final String nombreArchivo,
      required final String url}) = _$ArticuloImagenImpl;
  const _ArticuloImagen._() : super._();

  @override
  String get articuloId;
  @override
  String get nombreArchivo;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$ArticuloImagenImplCopyWith<_$ArticuloImagenImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
