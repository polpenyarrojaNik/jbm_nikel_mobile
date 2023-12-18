// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_empresa_iva_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ArticuloEmpresaIvaDTO _$ArticuloEmpresaIvaDTOFromJson(
    Map<String, dynamic> json) {
  return _ArticuloEmpresaIvaDTO.fromJson(json);
}

/// @nodoc
mixin _$ArticuloEmpresaIvaDTO {
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA')
  double get iva => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArticuloEmpresaIvaDTOCopyWith<ArticuloEmpresaIvaDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloEmpresaIvaDTOCopyWith<$Res> {
  factory $ArticuloEmpresaIvaDTOCopyWith(ArticuloEmpresaIvaDTO value,
          $Res Function(ArticuloEmpresaIvaDTO) then) =
      _$ArticuloEmpresaIvaDTOCopyWithImpl<$Res, ArticuloEmpresaIvaDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$ArticuloEmpresaIvaDTOCopyWithImpl<$Res,
        $Val extends ArticuloEmpresaIvaDTO>
    implements $ArticuloEmpresaIvaDTOCopyWith<$Res> {
  _$ArticuloEmpresaIvaDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? empresaId = null,
    Object? iva = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$ArticuloEmpresaIvaDTOImplCopyWith<$Res>
    implements $ArticuloEmpresaIvaDTOCopyWith<$Res> {
  factory _$$ArticuloEmpresaIvaDTOImplCopyWith(
          _$ArticuloEmpresaIvaDTOImpl value,
          $Res Function(_$ArticuloEmpresaIvaDTOImpl) then) =
      __$$ArticuloEmpresaIvaDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'ARTICULO_ID') String articuloId,
      @JsonKey(name: 'EMPRESA_ID') String empresaId,
      @JsonKey(name: 'IVA') double iva,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$ArticuloEmpresaIvaDTOImplCopyWithImpl<$Res>
    extends _$ArticuloEmpresaIvaDTOCopyWithImpl<$Res,
        _$ArticuloEmpresaIvaDTOImpl>
    implements _$$ArticuloEmpresaIvaDTOImplCopyWith<$Res> {
  __$$ArticuloEmpresaIvaDTOImplCopyWithImpl(_$ArticuloEmpresaIvaDTOImpl _value,
      $Res Function(_$ArticuloEmpresaIvaDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? empresaId = null,
    Object? iva = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ArticuloEmpresaIvaDTOImpl(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: null == empresaId
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: null == iva
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$ArticuloEmpresaIvaDTOImpl extends _ArticuloEmpresaIvaDTO {
  const _$ArticuloEmpresaIvaDTOImpl(
      {@JsonKey(name: 'ARTICULO_ID') required this.articuloId,
      @JsonKey(name: 'EMPRESA_ID') required this.empresaId,
      @JsonKey(name: 'IVA') required this.iva,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$ArticuloEmpresaIvaDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArticuloEmpresaIvaDTOImplFromJson(json);

  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articuloId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String empresaId;
  @override
  @JsonKey(name: 'IVA')
  final double iva;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'ArticuloEmpresaIvaDTO(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloEmpresaIvaDTOImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, empresaId, iva, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloEmpresaIvaDTOImplCopyWith<_$ArticuloEmpresaIvaDTOImpl>
      get copyWith => __$$ArticuloEmpresaIvaDTOImplCopyWithImpl<
          _$ArticuloEmpresaIvaDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArticuloEmpresaIvaDTOImplToJson(
      this,
    );
  }
}

abstract class _ArticuloEmpresaIvaDTO extends ArticuloEmpresaIvaDTO {
  const factory _ArticuloEmpresaIvaDTO(
          {@JsonKey(name: 'ARTICULO_ID') required final String articuloId,
          @JsonKey(name: 'EMPRESA_ID') required final String empresaId,
          @JsonKey(name: 'IVA') required final double iva,
          @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
          @JsonKey(name: 'DELETED') final String deleted}) =
      _$ArticuloEmpresaIvaDTOImpl;
  const _ArticuloEmpresaIvaDTO._() : super._();

  factory _ArticuloEmpresaIvaDTO.fromJson(Map<String, dynamic> json) =
      _$ArticuloEmpresaIvaDTOImpl.fromJson;

  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articuloId;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get empresaId;
  @override
  @JsonKey(name: 'IVA')
  double get iva;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ArticuloEmpresaIvaDTOImplCopyWith<_$ArticuloEmpresaIvaDTOImpl>
      get copyWith => throw _privateConstructorUsedError;
}
