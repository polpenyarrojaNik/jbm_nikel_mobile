// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_empresa_iva.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloEmpresaIva {
  String get articuloId => throw _privateConstructorUsedError;
  String get empresaId => throw _privateConstructorUsedError;
  double get iva => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloEmpresaIvaCopyWith<ArticuloEmpresaIva> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloEmpresaIvaCopyWith<$Res> {
  factory $ArticuloEmpresaIvaCopyWith(
          ArticuloEmpresaIva value, $Res Function(ArticuloEmpresaIva) then) =
      _$ArticuloEmpresaIvaCopyWithImpl<$Res, ArticuloEmpresaIva>;
  @useResult
  $Res call(
      {String articuloId,
      String empresaId,
      double iva,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticuloEmpresaIvaCopyWithImpl<$Res, $Val extends ArticuloEmpresaIva>
    implements $ArticuloEmpresaIvaCopyWith<$Res> {
  _$ArticuloEmpresaIvaCopyWithImpl(this._value, this._then);

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
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ArticuloEmpresaIvaImplCopyWith<$Res>
    implements $ArticuloEmpresaIvaCopyWith<$Res> {
  factory _$$ArticuloEmpresaIvaImplCopyWith(_$ArticuloEmpresaIvaImpl value,
          $Res Function(_$ArticuloEmpresaIvaImpl) then) =
      __$$ArticuloEmpresaIvaImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String articuloId,
      String empresaId,
      double iva,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$ArticuloEmpresaIvaImplCopyWithImpl<$Res>
    extends _$ArticuloEmpresaIvaCopyWithImpl<$Res, _$ArticuloEmpresaIvaImpl>
    implements _$$ArticuloEmpresaIvaImplCopyWith<$Res> {
  __$$ArticuloEmpresaIvaImplCopyWithImpl(_$ArticuloEmpresaIvaImpl _value,
      $Res Function(_$ArticuloEmpresaIvaImpl) _then)
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
    return _then(_$ArticuloEmpresaIvaImpl(
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
              as bool,
    ));
  }
}

/// @nodoc

class _$ArticuloEmpresaIvaImpl extends _ArticuloEmpresaIva {
  const _$ArticuloEmpresaIvaImpl(
      {required this.articuloId,
      required this.empresaId,
      required this.iva,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articuloId;
  @override
  final String empresaId;
  @override
  final double iva;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticuloEmpresaIva(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloEmpresaIvaImpl &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.empresaId, empresaId) ||
                other.empresaId == empresaId) &&
            (identical(other.iva, iva) || other.iva == iva) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, empresaId, iva, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloEmpresaIvaImplCopyWith<_$ArticuloEmpresaIvaImpl> get copyWith =>
      __$$ArticuloEmpresaIvaImplCopyWithImpl<_$ArticuloEmpresaIvaImpl>(
          this, _$identity);
}

abstract class _ArticuloEmpresaIva extends ArticuloEmpresaIva {
  const factory _ArticuloEmpresaIva(
      {required final String articuloId,
      required final String empresaId,
      required final double iva,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$ArticuloEmpresaIvaImpl;
  const _ArticuloEmpresaIva._() : super._();

  @override
  String get articuloId;
  @override
  String get empresaId;
  @override
  double get iva;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ArticuloEmpresaIvaImplCopyWith<_$ArticuloEmpresaIvaImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
