// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$ArticuloImagenCopyWithImpl<$Res>;
  $Res call({String articuloId, String nombreArchivo, String url});
}

/// @nodoc
class _$ArticuloImagenCopyWithImpl<$Res>
    implements $ArticuloImagenCopyWith<$Res> {
  _$ArticuloImagenCopyWithImpl(this._value, this._then);

  final ArticuloImagen _value;
  // ignore: unused_field
  final $Res Function(ArticuloImagen) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? nombreArchivo = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticuloImagenCopyWith<$Res>
    implements $ArticuloImagenCopyWith<$Res> {
  factory _$$_ArticuloImagenCopyWith(
          _$_ArticuloImagen value, $Res Function(_$_ArticuloImagen) then) =
      __$$_ArticuloImagenCopyWithImpl<$Res>;
  @override
  $Res call({String articuloId, String nombreArchivo, String url});
}

/// @nodoc
class __$$_ArticuloImagenCopyWithImpl<$Res>
    extends _$ArticuloImagenCopyWithImpl<$Res>
    implements _$$_ArticuloImagenCopyWith<$Res> {
  __$$_ArticuloImagenCopyWithImpl(
      _$_ArticuloImagen _value, $Res Function(_$_ArticuloImagen) _then)
      : super(_value, (v) => _then(v as _$_ArticuloImagen));

  @override
  _$_ArticuloImagen get _value => super._value as _$_ArticuloImagen;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? nombreArchivo = freezed,
    Object? url = freezed,
  }) {
    return _then(_$_ArticuloImagen(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ArticuloImagen extends _ArticuloImagen {
  const _$_ArticuloImagen(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloImagen &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.nombreArchivo, nombreArchivo) &&
            const DeepCollectionEquality().equals(other.url, url));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(nombreArchivo),
      const DeepCollectionEquality().hash(url));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloImagenCopyWith<_$_ArticuloImagen> get copyWith =>
      __$$_ArticuloImagenCopyWithImpl<_$_ArticuloImagen>(this, _$identity);
}

abstract class _ArticuloImagen extends ArticuloImagen {
  const factory _ArticuloImagen(
      {required final String articuloId,
      required final String nombreArchivo,
      required final String url}) = _$_ArticuloImagen;
  const _ArticuloImagen._() : super._();

  @override
  String get articuloId;
  @override
  String get nombreArchivo;
  @override
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloImagenCopyWith<_$_ArticuloImagen> get copyWith =>
      throw _privateConstructorUsedError;
}
