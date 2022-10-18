// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_imagen_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloImagenDTO _$ArticuloImagenDTOFromJson(Map<String, dynamic> json) {
  return _ArticuloImagenDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloImagenDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get nombreArchivo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloImagenDTOCopyWith<ArticuloImagenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloImagenDTOCopyWith<$Res> {
  factory $ArticuloImagenDTOCopyWith(
          ArticuloImagenDTO value, $Res Function(ArticuloImagenDTO) then) =
      _$ArticuloImagenDTOCopyWithImpl<$Res, ArticuloImagenDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String nombreArchivo});
}

/// @nodoc
class _$ArticuloImagenDTOCopyWithImpl<$Res, $Val extends ArticuloImagenDTO>
    implements $ArticuloImagenDTOCopyWith<$Res> {
  _$ArticuloImagenDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticuloImagenDTOCopyWith<$Res>
    implements $ArticuloImagenDTOCopyWith<$Res> {
  factory _$$_ArticuloImagenDTOCopyWith(_$_ArticuloImagenDTO value,
          $Res Function(_$_ArticuloImagenDTO) then) =
      __$$_ArticuloImagenDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') String nombreArchivo});
}

/// @nodoc
class __$$_ArticuloImagenDTOCopyWithImpl<$Res>
    extends _$ArticuloImagenDTOCopyWithImpl<$Res, _$_ArticuloImagenDTO>
    implements _$$_ArticuloImagenDTOCopyWith<$Res> {
  __$$_ArticuloImagenDTOCopyWithImpl(
      _$_ArticuloImagenDTO _value, $Res Function(_$_ArticuloImagenDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? nombreArchivo = null,
  }) {
    return _then(_$_ArticuloImagenDTO(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreArchivo: null == nombreArchivo
          ? _value.nombreArchivo
          : nombreArchivo // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticuloImagenDTO extends _ArticuloImagenDTO {
  const _$_ArticuloImagenDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreArchivo})
      : super._();

  factory _$_ArticuloImagenDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloImagenDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  final String nombreArchivo;

  @override
  String toString() {
    return 'ArticuloImagenDTO(articuloId: $articuloId, nombreArchivo: $nombreArchivo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloImagenDTO &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.nombreArchivo, nombreArchivo) ||
                other.nombreArchivo == nombreArchivo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, articuloId, nombreArchivo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloImagenDTOCopyWith<_$_ArticuloImagenDTO> get copyWith =>
      __$$_ArticuloImagenDTOCopyWithImpl<_$_ArticuloImagenDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloImagenDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloImagenDTO extends ArticuloImagenDTO {
  const factory _ArticuloImagenDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required final String articuloId,
      @JsonKey(name: 'NOMBRE_ARCHIVO')
          required final String nombreArchivo}) = _$_ArticuloImagenDTO;
  const _ArticuloImagenDTO._() : super._();

  factory _ArticuloImagenDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloImagenDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'NOMBRE_ARCHIVO')
  String get nombreArchivo;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloImagenDTOCopyWith<_$_ArticuloImagenDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
