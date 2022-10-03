// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_documento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloDocumento {
  String get articuloId => throw _privateConstructorUsedError;
  String? get nombreArchivo => throw _privateConstructorUsedError;
  String get idiomaId => throw _privateConstructorUsedError;
  String? get observaciones => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloDocumentoCopyWith<ArticuloDocumento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloDocumentoCopyWith<$Res> {
  factory $ArticuloDocumentoCopyWith(
          ArticuloDocumento value, $Res Function(ArticuloDocumento) then) =
      _$ArticuloDocumentoCopyWithImpl<$Res>;
  $Res call(
      {String articuloId,
      String? nombreArchivo,
      String idiomaId,
      String? observaciones});
}

/// @nodoc
class _$ArticuloDocumentoCopyWithImpl<$Res>
    implements $ArticuloDocumentoCopyWith<$Res> {
  _$ArticuloDocumentoCopyWithImpl(this._value, this._then);

  final ArticuloDocumento _value;
  // ignore: unused_field
  final $Res Function(ArticuloDocumento) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? nombreArchivo = freezed,
    Object? idiomaId = freezed,
    Object? observaciones = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: idiomaId == freezed
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: observaciones == freezed
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticuloDocumentoCopyWith<$Res>
    implements $ArticuloDocumentoCopyWith<$Res> {
  factory _$$_ArticuloDocumentoCopyWith(_$_ArticuloDocumento value,
          $Res Function(_$_ArticuloDocumento) then) =
      __$$_ArticuloDocumentoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articuloId,
      String? nombreArchivo,
      String idiomaId,
      String? observaciones});
}

/// @nodoc
class __$$_ArticuloDocumentoCopyWithImpl<$Res>
    extends _$ArticuloDocumentoCopyWithImpl<$Res>
    implements _$$_ArticuloDocumentoCopyWith<$Res> {
  __$$_ArticuloDocumentoCopyWithImpl(
      _$_ArticuloDocumento _value, $Res Function(_$_ArticuloDocumento) _then)
      : super(_value, (v) => _then(v as _$_ArticuloDocumento));

  @override
  _$_ArticuloDocumento get _value => super._value as _$_ArticuloDocumento;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? nombreArchivo = freezed,
    Object? idiomaId = freezed,
    Object? observaciones = freezed,
  }) {
    return _then(_$_ArticuloDocumento(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: nombreArchivo == freezed
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: idiomaId == freezed
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: observaciones == freezed
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ArticuloDocumento extends _ArticuloDocumento {
  const _$_ArticuloDocumento(
      {required this.articuloId,
      this.nombreArchivo,
      required this.idiomaId,
      this.observaciones})
      : super._();

  @override
  final String articuloId;
  @override
  final String? nombreArchivo;
  @override
  final String idiomaId;
  @override
  final String? observaciones;

  @override
  String toString() {
    return 'ArticuloDocumento(articuloId: $articuloId, nombreArchivo: $nombreArchivo, idiomaId: $idiomaId, observaciones: $observaciones)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloDocumento &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.nombreArchivo, nombreArchivo) &&
            const DeepCollectionEquality().equals(other.idiomaId, idiomaId) &&
            const DeepCollectionEquality()
                .equals(other.observaciones, observaciones));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(nombreArchivo),
      const DeepCollectionEquality().hash(idiomaId),
      const DeepCollectionEquality().hash(observaciones));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloDocumentoCopyWith<_$_ArticuloDocumento> get copyWith =>
      __$$_ArticuloDocumentoCopyWithImpl<_$_ArticuloDocumento>(
          this, _$identity);
}

abstract class _ArticuloDocumento extends ArticuloDocumento {
  const factory _ArticuloDocumento(
      {required final String articuloId,
      final String? nombreArchivo,
      required final String idiomaId,
      final String? observaciones}) = _$_ArticuloDocumento;
  const _ArticuloDocumento._() : super._();

  @override
  String get articuloId;
  @override
  String? get nombreArchivo;
  @override
  String get idiomaId;
  @override
  String? get observaciones;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloDocumentoCopyWith<_$_ArticuloDocumento> get copyWith =>
      throw _privateConstructorUsedError;
}
