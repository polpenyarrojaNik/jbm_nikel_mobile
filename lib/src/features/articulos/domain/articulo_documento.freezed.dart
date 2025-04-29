// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_documento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticuloDocumento {
  String get articuloId => throw _privateConstructorUsedError;
  String? get nombreArchivo => throw _privateConstructorUsedError;
  String get idiomaId => throw _privateConstructorUsedError;
  String? get observaciones => throw _privateConstructorUsedError;

  /// Create a copy of ArticuloDocumento
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ArticuloDocumentoCopyWith<ArticuloDocumento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloDocumentoCopyWith<$Res> {
  factory $ArticuloDocumentoCopyWith(
          ArticuloDocumento value, $Res Function(ArticuloDocumento) then) =
      _$ArticuloDocumentoCopyWithImpl<$Res, ArticuloDocumento>;
  @useResult
  $Res call(
      {String articuloId,
      String? nombreArchivo,
      String idiomaId,
      String? observaciones});
}

/// @nodoc
class _$ArticuloDocumentoCopyWithImpl<$Res, $Val extends ArticuloDocumento>
    implements $ArticuloDocumentoCopyWith<$Res> {
  _$ArticuloDocumentoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ArticuloDocumento
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = freezed,
    Object? idiomaId = null,
    Object? observaciones = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticuloDocumentoImplCopyWith<$Res>
    implements $ArticuloDocumentoCopyWith<$Res> {
  factory _$$ArticuloDocumentoImplCopyWith(_$ArticuloDocumentoImpl value,
          $Res Function(_$ArticuloDocumentoImpl) then) =
      __$$ArticuloDocumentoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String articuloId,
      String? nombreArchivo,
      String idiomaId,
      String? observaciones});
}

/// @nodoc
class __$$ArticuloDocumentoImplCopyWithImpl<$Res>
    extends _$ArticuloDocumentoCopyWithImpl<$Res, _$ArticuloDocumentoImpl>
    implements _$$ArticuloDocumentoImplCopyWith<$Res> {
  __$$ArticuloDocumentoImplCopyWithImpl(_$ArticuloDocumentoImpl _value,
      $Res Function(_$ArticuloDocumentoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticuloDocumento
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = freezed,
    Object? idiomaId = null,
    Object? observaciones = freezed,
  }) {
    return _then(_$ArticuloDocumentoImpl(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: freezed == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String?,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      observaciones: freezed == observaciones
          ? _value.observaciones
          : observaciones // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ArticuloDocumentoImpl extends _ArticuloDocumento {
  const _$ArticuloDocumentoImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloDocumentoImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo) &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.observaciones, observaciones) ||
                other.observaciones == observaciones));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, nombreArchivo, idiomaId, observaciones);

  /// Create a copy of ArticuloDocumento
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloDocumentoImplCopyWith<_$ArticuloDocumentoImpl> get copyWith =>
      __$$ArticuloDocumentoImplCopyWithImpl<_$ArticuloDocumentoImpl>(
          this, _$identity);
}

abstract class _ArticuloDocumento extends ArticuloDocumento {
  const factory _ArticuloDocumento(
      {required final String articuloId,
      final String? nombreArchivo,
      required final String idiomaId,
      final String? observaciones}) = _$ArticuloDocumentoImpl;
  const _ArticuloDocumento._() : super._();

  @override
  String get articuloId;
  @override
  String? get nombreArchivo;
  @override
  String get idiomaId;
  @override
  String? get observaciones;

  /// Create a copy of ArticuloDocumento
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticuloDocumentoImplCopyWith<_$ArticuloDocumentoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
