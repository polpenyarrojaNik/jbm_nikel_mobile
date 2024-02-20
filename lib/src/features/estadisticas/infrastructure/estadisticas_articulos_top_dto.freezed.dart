// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_articulos_top_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EstadisitcasArticulosTopDTO _$EstadisitcasArticulosTopDTOFromJson(
    Map<String, dynamic> json) {
  return _EstadisitcasArticulosTopDTO.fromJson(json);
}

/// @nodoc
mixin _$EstadisitcasArticulosTopDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EstadisitcasArticulosTopDTOCopyWith<EstadisitcasArticulosTopDTO>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstadisitcasArticulosTopDTOCopyWith<$Res> {
  factory $EstadisitcasArticulosTopDTOCopyWith(
          EstadisitcasArticulosTopDTO value,
          $Res Function(EstadisitcasArticulosTopDTO) then) =
      _$EstadisitcasArticulosTopDTOCopyWithImpl<$Res,
          EstadisitcasArticulosTopDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$EstadisitcasArticulosTopDTOCopyWithImpl<$Res,
        $Val extends EstadisitcasArticulosTopDTO>
    implements $EstadisitcasArticulosTopDTOCopyWith<$Res> {
  _$EstadisitcasArticulosTopDTOCopyWithImpl(this._value, this._then);

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
abstract class _$$EstadisitcasArticulosTopDTOImplCopyWith<$Res>
    implements $EstadisitcasArticulosTopDTOCopyWith<$Res> {
  factory _$$EstadisitcasArticulosTopDTOImplCopyWith(
          _$EstadisitcasArticulosTopDTOImpl value,
          $Res Function(_$EstadisitcasArticulosTopDTOImpl) then) =
      __$$EstadisitcasArticulosTopDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$EstadisitcasArticulosTopDTOImplCopyWithImpl<$Res>
    extends _$EstadisitcasArticulosTopDTOCopyWithImpl<$Res,
        _$EstadisitcasArticulosTopDTOImpl>
    implements _$$EstadisitcasArticulosTopDTOImplCopyWith<$Res> {
  __$$EstadisitcasArticulosTopDTOImplCopyWithImpl(
      _$EstadisitcasArticulosTopDTOImpl _value,
      $Res Function(_$EstadisitcasArticulosTopDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$EstadisitcasArticulosTopDTOImpl(
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
class _$EstadisitcasArticulosTopDTOImpl extends _EstadisitcasArticulosTopDTO {
  const _$EstadisitcasArticulosTopDTOImpl(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$EstadisitcasArticulosTopDTOImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EstadisitcasArticulosTopDTOImplFromJson(json);

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
    return 'EstadisitcasArticulosTopDTO(articuloId: $articuloId, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EstadisitcasArticulosTopDTOImpl &&
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
  _$$EstadisitcasArticulosTopDTOImplCopyWith<_$EstadisitcasArticulosTopDTOImpl>
      get copyWith => __$$EstadisitcasArticulosTopDTOImplCopyWithImpl<
          _$EstadisitcasArticulosTopDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EstadisitcasArticulosTopDTOImplToJson(
      this,
    );
  }
}

abstract class _EstadisitcasArticulosTopDTO
    extends EstadisitcasArticulosTopDTO {
  const factory _EstadisitcasArticulosTopDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$EstadisitcasArticulosTopDTOImpl;
  const _EstadisitcasArticulosTopDTO._() : super._();

  factory _EstadisitcasArticulosTopDTO.fromJson(Map<String, dynamic> json) =
      _$EstadisitcasArticulosTopDTOImpl.fromJson;

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
  _$$EstadisitcasArticulosTopDTOImplCopyWith<_$EstadisitcasArticulosTopDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
