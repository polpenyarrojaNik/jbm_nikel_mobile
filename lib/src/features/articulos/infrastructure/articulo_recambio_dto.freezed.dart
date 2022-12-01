// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_recambio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloRecambioDTO _$ArticuloRecambioDTOFromJson(Map<String, dynamic> json) {
  return _ArticuloRecambioDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloRecambioDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'RECAMBIO_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCRIPCION')
  String get descripcion => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  int get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloRecambioDTOCopyWith<ArticuloRecambioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloRecambioDTOCopyWith<$Res> {
  factory $ArticuloRecambioDTOCopyWith(
          ArticuloRecambioDTO value, $Res Function(ArticuloRecambioDTO) then) =
      _$ArticuloRecambioDTOCopyWithImpl<$Res, ArticuloRecambioDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'RECAMBIO_ID') String id,
      @JsonKey(name: 'DESCRIPCION') String descripcion,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloRecambioDTOCopyWithImpl<$Res, $Val extends ArticuloRecambioDTO>
    implements $ArticuloRecambioDTOCopyWith<$Res> {
  _$ArticuloRecambioDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? id = null,
    Object? descripcion = null,
    Object? cantidad = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ArticuloRecambioDTOCopyWith<$Res>
    implements $ArticuloRecambioDTOCopyWith<$Res> {
  factory _$$_ArticuloRecambioDTOCopyWith(_$_ArticuloRecambioDTO value,
          $Res Function(_$_ArticuloRecambioDTO) then) =
      __$$_ArticuloRecambioDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'RECAMBIO_ID') String id,
      @JsonKey(name: 'DESCRIPCION') String descripcion,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloRecambioDTOCopyWithImpl<$Res>
    extends _$ArticuloRecambioDTOCopyWithImpl<$Res, _$_ArticuloRecambioDTO>
    implements _$$_ArticuloRecambioDTOCopyWith<$Res> {
  __$$_ArticuloRecambioDTOCopyWithImpl(_$_ArticuloRecambioDTO _value,
      $Res Function(_$_ArticuloRecambioDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? id = null,
    Object? descripcion = null,
    Object? cantidad = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ArticuloRecambioDTO(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: null == cantidad
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticuloRecambioDTO extends _ArticuloRecambioDTO {
  const _$_ArticuloRecambioDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'RECAMBIO_ID') required this.id,
      @JsonKey(name: 'DESCRIPCION') required this.descripcion,
      @JsonKey(name: 'CANTIDAD') required this.cantidad,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticuloRecambioDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloRecambioDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'RECAMBIO_ID')
  final String id;
  @override
  @JsonKey(name: 'DESCRIPCION')
  final String descripcion;
  @override
  @JsonKey(name: 'CANTIDAD')
  final int cantidad;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloRecambioDTO(articuloId: $articuloId, id: $id, descripcion: $descripcion, cantidad: $cantidad, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloRecambioDTO &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.cantidad, cantidad) ||
                other.cantidad == cantidad) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, id, descripcion, cantidad, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloRecambioDTOCopyWith<_$_ArticuloRecambioDTO> get copyWith =>
      __$$_ArticuloRecambioDTOCopyWithImpl<_$_ArticuloRecambioDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloRecambioDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloRecambioDTO extends ArticuloRecambioDTO {
  const factory _ArticuloRecambioDTO(
      {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
      @JsonKey(name: 'RECAMBIO_ID') required final String id,
      @JsonKey(name: 'DESCRIPCION') required final String descripcion,
      @JsonKey(name: 'CANTIDAD') required final int cantidad,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ArticuloRecambioDTO;
  const _ArticuloRecambioDTO._() : super._();

  factory _ArticuloRecambioDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloRecambioDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'RECAMBIO_ID')
  String get id;
  @override
  @JsonKey(name: 'DESCRIPCION')
  String get descripcion;
  @override
  @JsonKey(name: 'CANTIDAD')
  int get cantidad;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloRecambioDTOCopyWith<_$_ArticuloRecambioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
