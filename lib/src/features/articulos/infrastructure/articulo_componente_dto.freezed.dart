// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_componente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloComponenteDTO _$ArticuloComponenteDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticuloComponenteDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloComponenteDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
  String get articuloComponenteId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  int get cantidad => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloComponenteDTOCopyWith<ArticuloComponenteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloComponenteDTOCopyWith<$Res> {
  factory $ArticuloComponenteDTOCopyWith(ArticuloComponenteDTO value,
          $Res Function(ArticuloComponenteDTO) then) =
      _$ArticuloComponenteDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_COMPONENTE_ID') String articuloComponenteId,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloComponenteDTOCopyWithImpl<$Res>
    implements $ArticuloComponenteDTOCopyWith<$Res> {
  _$ArticuloComponenteDTOCopyWithImpl(this._value, this._then);

  final ArticuloComponenteDTO _value;
  // ignore: unused_field
  final $Res Function(ArticuloComponenteDTO) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? articuloComponenteId = freezed,
    Object? cantidad = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloComponenteId: articuloComponenteId == freezed
          ? _value.articuloComponenteId
          : articuloComponenteId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticuloComponenteDTOCopyWith<$Res>
    implements $ArticuloComponenteDTOCopyWith<$Res> {
  factory _$$_ArticuloComponenteDTOCopyWith(_$_ArticuloComponenteDTO value,
          $Res Function(_$_ArticuloComponenteDTO) then) =
      __$$_ArticuloComponenteDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_COMPONENTE_ID') String articuloComponenteId,
      @JsonKey(name: 'CANTIDAD') int cantidad,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloComponenteDTOCopyWithImpl<$Res>
    extends _$ArticuloComponenteDTOCopyWithImpl<$Res>
    implements _$$_ArticuloComponenteDTOCopyWith<$Res> {
  __$$_ArticuloComponenteDTOCopyWithImpl(_$_ArticuloComponenteDTO _value,
      $Res Function(_$_ArticuloComponenteDTO) _then)
      : super(_value, (v) => _then(v as _$_ArticuloComponenteDTO));

  @override
  _$_ArticuloComponenteDTO get _value =>
      super._value as _$_ArticuloComponenteDTO;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? articuloComponenteId = freezed,
    Object? cantidad = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloComponenteDTO(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloComponenteId: articuloComponenteId == freezed
          ? _value.articuloComponenteId
          : articuloComponenteId // ignore: cast_nullable_to_non_nullable
              as String,
      cantidad: cantidad == freezed
          ? _value.cantidad
          : cantidad // ignore: cast_nullable_to_non_nullable
              as int,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ArticuloComponenteDTO extends _ArticuloComponenteDTO {
  const _$_ArticuloComponenteDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required this.articuloId,
      @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
          required this.articuloComponenteId,
      @JsonKey(name: 'CANTIDAD')
          required this.cantidad,
      @JsonKey(name: 'LAST_UPDATED')
          required this.lastUpdated,
      @JsonKey(name: 'DELETED')
          this.deleted = 'N'})
      : super._();

  factory _$_ArticuloComponenteDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloComponenteDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
  final String articuloComponenteId;
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
    return 'ArticuloComponenteDTO(articuloId: $articuloId, articuloComponenteId: $articuloComponenteId, cantidad: $cantidad, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloComponenteDTO &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.articuloComponenteId, articuloComponenteId) &&
            const DeepCollectionEquality().equals(other.cantidad, cantidad) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(articuloComponenteId),
      const DeepCollectionEquality().hash(cantidad),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloComponenteDTOCopyWith<_$_ArticuloComponenteDTO> get copyWith =>
      __$$_ArticuloComponenteDTOCopyWithImpl<_$_ArticuloComponenteDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloComponenteDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloComponenteDTO extends ArticuloComponenteDTO {
  const factory _ArticuloComponenteDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required final String articuloId,
      @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
          required final String articuloComponenteId,
      @JsonKey(name: 'CANTIDAD')
          required final int cantidad,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_ArticuloComponenteDTO;
  const _ArticuloComponenteDTO._() : super._();

  factory _ArticuloComponenteDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloComponenteDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'ARTICULO_COMPONENTE_ID')
  String get articuloComponenteId;
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
  _$$_ArticuloComponenteDTOCopyWith<_$_ArticuloComponenteDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
