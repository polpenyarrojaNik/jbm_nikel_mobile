// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_sustitutivo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloSustitutivoDTO _$ArticuloSustitutivoDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticuloSustitutivoDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloSustitutivoDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  String get articuloSustitutivoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ORDEN')
  int get orden => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloSustitutivoDTOCopyWith<ArticuloSustitutivoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloSustitutivoDTOCopyWith<$Res> {
  factory $ArticuloSustitutivoDTOCopyWith(ArticuloSustitutivoDTO value,
          $Res Function(ArticuloSustitutivoDTO) then) =
      _$ArticuloSustitutivoDTOCopyWithImpl<$Res, ArticuloSustitutivoDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String articuloSustitutivoId,
      @JsonKey(name: 'ORDEN') int orden,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloSustitutivoDTOCopyWithImpl<$Res,
        $Val extends ArticuloSustitutivoDTO>
    implements $ArticuloSustitutivoDTOCopyWith<$Res> {
  _$ArticuloSustitutivoDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? articuloSustitutivoId = null,
    Object? orden = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloSustitutivoId: null == articuloSustitutivoId
          ? _value.articuloSustitutivoId
          : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
              as String,
      orden: null == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_ArticuloSustitutivoDTOCopyWith<$Res>
    implements $ArticuloSustitutivoDTOCopyWith<$Res> {
  factory _$$_ArticuloSustitutivoDTOCopyWith(_$_ArticuloSustitutivoDTO value,
          $Res Function(_$_ArticuloSustitutivoDTO) then) =
      __$$_ArticuloSustitutivoDTOCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String articuloSustitutivoId,
      @JsonKey(name: 'ORDEN') int orden,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_ArticuloSustitutivoDTOCopyWithImpl<$Res>
    extends _$ArticuloSustitutivoDTOCopyWithImpl<$Res,
        _$_ArticuloSustitutivoDTO>
    implements _$$_ArticuloSustitutivoDTOCopyWith<$Res> {
  __$$_ArticuloSustitutivoDTOCopyWithImpl(_$_ArticuloSustitutivoDTO _value,
      $Res Function(_$_ArticuloSustitutivoDTO) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? articuloSustitutivoId = null,
    Object? orden = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ArticuloSustitutivoDTO(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloSustitutivoId: null == articuloSustitutivoId
          ? _value.articuloSustitutivoId
          : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
              as String,
      orden: null == orden
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
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
class _$_ArticuloSustitutivoDTO extends _ArticuloSustitutivoDTO {
  const _$_ArticuloSustitutivoDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required this.articuloId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
          required this.articuloSustitutivoId,
      @JsonKey(name: 'ORDEN')
          required this.orden,
      @JsonKey(name: 'LAST_UPDATED')
          required this.lastUpdated,
      @JsonKey(name: 'DELETED')
          this.deleted = 'N'})
      : super._();

  factory _$_ArticuloSustitutivoDTO.fromJson(Map<String, dynamic> json) =>
      _$$_ArticuloSustitutivoDTOFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  final String articuloSustitutivoId;
  @override
  @JsonKey(name: 'ORDEN')
  final int orden;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloSustitutivoDTO(articuloId: $articuloId, articuloSustitutivoId: $articuloSustitutivoId, orden: $orden, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloSustitutivoDTO &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.articuloSustitutivoId, articuloSustitutivoId) ||
                other.articuloSustitutivoId == articuloSustitutivoId) &&
            (identical(other.orden, orden) || other.orden == orden) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, articuloId,
      articuloSustitutivoId, orden, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloSustitutivoDTOCopyWith<_$_ArticuloSustitutivoDTO> get copyWith =>
      __$$_ArticuloSustitutivoDTOCopyWithImpl<_$_ArticuloSustitutivoDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ArticuloSustitutivoDTOToJson(
      this,
    );
  }
}

abstract class _ArticuloSustitutivoDTO extends ArticuloSustitutivoDTO {
  const factory _ArticuloSustitutivoDTO(
      {@JsonKey(name: 'ARTICULO_ID')
          required final String articuloId,
      @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
          required final String articuloSustitutivoId,
      @JsonKey(name: 'ORDEN')
          required final int orden,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_ArticuloSustitutivoDTO;
  const _ArticuloSustitutivoDTO._() : super._();

  factory _ArticuloSustitutivoDTO.fromJson(Map<String, dynamic> json) =
      _$_ArticuloSustitutivoDTO.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')
  String get articuloSustitutivoId;
  @override
  @JsonKey(name: 'ORDEN')
  int get orden;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloSustitutivoDTOCopyWith<_$_ArticuloSustitutivoDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
