// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_top_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloTopDTO _$ArticuloTopDTOFromJson(Map<String, dynamic> json) {
  return _ArticuloTopDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloTopDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloTopDTOCopyWith<ArticuloTopDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloTopDTOCopyWith<$Res> {
  factory $ArticuloTopDTOCopyWith(
          ArticuloTopDTO value, $Res Function(ArticuloTopDTO) then) =
      _$ArticuloTopDTOCopyWithImpl<$Res, ArticuloTopDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloTopDTOCopyWithImpl<$Res, $Val extends ArticuloTopDTO>
    implements $ArticuloTopDTOCopyWith<$Res> {
  _$ArticuloTopDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
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
abstract class _$$_ArticuloTopDTOCopyWith<$Res>
    implements $ArticuloTopDTOCopyWith<$Res> {
  factory _$$_ArticuloTopDTOCopyWith(
          _$_ArticuloTopDTO value, $Res Function(_$_ArticuloTopDTO) then) =
      __$$_ArticuloTopDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloTopDTOCopyWithImpl<$Res>
    extends _$ArticuloTopDTOCopyWithImpl<$Res, _$_ArticuloTopDTO>
    implements _$$_ArticuloTopDTOCopyWith<$Res> {
  __$$_ArticuloTopDTOCopyWithImpl(
      _$_ArticuloTopDTO _value, $Res Function(_$_ArticuloTopDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ArticuloTopDTO(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
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
class _$_ArticuloTopDTO extends _ArticuloTopDTO {
  const _$_ArticuloTopDTO(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_ArticuloTopDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloTopDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloTopDTO(articuloId: $articuloId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloTopDTO &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, articuloId, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloTopDTOCopyWith<_$_ArticuloTopDTO> get copyWith =>
      __$$_ArticuloTopDTOCopyWithImpl<_$_ArticuloTopDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloTopDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloTopDTO extends ArticuloTopDTO {
  const factory _ArticuloTopDTO(
      {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_ArticuloTopDTO;
  const _ArticuloTopDTO._() : super._();

  factory _ArticuloTopDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloTopDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloTopDTOCopyWith<_$_ArticuloTopDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
