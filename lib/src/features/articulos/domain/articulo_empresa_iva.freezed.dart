// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$ArticuloEmpresaIvaCopyWithImpl<$Res>;
  $Res call(
      {String articuloId,
      String empresaId,
      double iva,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class _$ArticuloEmpresaIvaCopyWithImpl<$Res>
    implements $ArticuloEmpresaIvaCopyWith<$Res> {
  _$ArticuloEmpresaIvaCopyWithImpl(this._value, this._then);

  final ArticuloEmpresaIva _value;
  // ignore: unused_field
  final $Res Function(ArticuloEmpresaIva) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? empresaId = freezed,
    Object? iva = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: empresaId == freezed
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_ArticuloEmpresaIvaCopyWith<$Res>
    implements $ArticuloEmpresaIvaCopyWith<$Res> {
  factory _$$_ArticuloEmpresaIvaCopyWith(_$_ArticuloEmpresaIva value,
          $Res Function(_$_ArticuloEmpresaIva) then) =
      __$$_ArticuloEmpresaIvaCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articuloId,
      String empresaId,
      double iva,
      DateTime lastUpdated,
      bool deleted});
}

/// @nodoc
class __$$_ArticuloEmpresaIvaCopyWithImpl<$Res>
    extends _$ArticuloEmpresaIvaCopyWithImpl<$Res>
    implements _$$_ArticuloEmpresaIvaCopyWith<$Res> {
  __$$_ArticuloEmpresaIvaCopyWithImpl(
      _$_ArticuloEmpresaIva _value, $Res Function(_$_ArticuloEmpresaIva) _then)
      : super(_value, (v) => _then(v as _$_ArticuloEmpresaIva));

  @override
  _$_ArticuloEmpresaIva get _value => super._value as _$_ArticuloEmpresaIva;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? empresaId = freezed,
    Object? iva = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloEmpresaIva(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      empresaId: empresaId == freezed
          ? _value.empresaId
          : empresaId // ignore: cast_nullable_to_non_nullable
              as String,
      iva: iva == freezed
          ? _value.iva
          : iva // ignore: cast_nullable_to_non_nullable
              as double,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ArticuloEmpresaIva extends _ArticuloEmpresaIva {
  const _$_ArticuloEmpresaIva(
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloEmpresaIva &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality().equals(other.empresaId, empresaId) &&
            const DeepCollectionEquality().equals(other.iva, iva) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(empresaId),
      const DeepCollectionEquality().hash(iva),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloEmpresaIvaCopyWith<_$_ArticuloEmpresaIva> get copyWith =>
      __$$_ArticuloEmpresaIvaCopyWithImpl<_$_ArticuloEmpresaIva>(
          this, _$identity);
}

abstract class _ArticuloEmpresaIva extends ArticuloEmpresaIva {
  const factory _ArticuloEmpresaIva(
      {required final String articuloId,
      required final String empresaId,
      required final double iva,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticuloEmpresaIva;
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
  _$$_ArticuloEmpresaIvaCopyWith<_$_ArticuloEmpresaIva> get copyWith =>
      throw _privateConstructorUsedError;
}
