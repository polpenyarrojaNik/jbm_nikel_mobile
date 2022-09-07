// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_sustitutivo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloSustitutivo {
  String get articuloId => throw _privateConstructorUsedError;
  Articulo get articuloSustitutivo => throw _privateConstructorUsedError;
  double get orden => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloSustitutivoCopyWith<ArticuloSustitutivo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloSustitutivoCopyWith<$Res> {
  factory $ArticuloSustitutivoCopyWith(
          ArticuloSustitutivo value, $Res Function(ArticuloSustitutivo) then) =
      _$ArticuloSustitutivoCopyWithImpl<$Res>;
  $Res call(
      {String articuloId,
      Articulo articuloSustitutivo,
      double orden,
      DateTime lastUpdated,
      bool deleted});

  $ArticuloCopyWith<$Res> get articuloSustitutivo;
}

/// @nodoc
class _$ArticuloSustitutivoCopyWithImpl<$Res>
    implements $ArticuloSustitutivoCopyWith<$Res> {
  _$ArticuloSustitutivoCopyWithImpl(this._value, this._then);

  final ArticuloSustitutivo _value;
  // ignore: unused_field
  final $Res Function(ArticuloSustitutivo) _then;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? articuloSustitutivo = freezed,
    Object? orden = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloSustitutivo: articuloSustitutivo == freezed
          ? _value.articuloSustitutivo
          : articuloSustitutivo // ignore: cast_nullable_to_non_nullable
              as Articulo,
      orden: orden == freezed
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
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

  @override
  $ArticuloCopyWith<$Res> get articuloSustitutivo {
    return $ArticuloCopyWith<$Res>(_value.articuloSustitutivo, (value) {
      return _then(_value.copyWith(articuloSustitutivo: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArticuloSustitutivoCopyWith<$Res>
    implements $ArticuloSustitutivoCopyWith<$Res> {
  factory _$$_ArticuloSustitutivoCopyWith(_$_ArticuloSustitutivo value,
          $Res Function(_$_ArticuloSustitutivo) then) =
      __$$_ArticuloSustitutivoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String articuloId,
      Articulo articuloSustitutivo,
      double orden,
      DateTime lastUpdated,
      bool deleted});

  @override
  $ArticuloCopyWith<$Res> get articuloSustitutivo;
}

/// @nodoc
class __$$_ArticuloSustitutivoCopyWithImpl<$Res>
    extends _$ArticuloSustitutivoCopyWithImpl<$Res>
    implements _$$_ArticuloSustitutivoCopyWith<$Res> {
  __$$_ArticuloSustitutivoCopyWithImpl(_$_ArticuloSustitutivo _value,
      $Res Function(_$_ArticuloSustitutivo) _then)
      : super(_value, (v) => _then(v as _$_ArticuloSustitutivo));

  @override
  _$_ArticuloSustitutivo get _value => super._value as _$_ArticuloSustitutivo;

  @override
  $Res call({
    Object? articuloId = freezed,
    Object? articuloSustitutivo = freezed,
    Object? orden = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloSustitutivo(
      articuloId: articuloId == freezed
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloSustitutivo: articuloSustitutivo == freezed
          ? _value.articuloSustitutivo
          : articuloSustitutivo // ignore: cast_nullable_to_non_nullable
              as Articulo,
      orden: orden == freezed
          ? _value.orden
          : orden // ignore: cast_nullable_to_non_nullable
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

class _$_ArticuloSustitutivo extends _ArticuloSustitutivo {
  const _$_ArticuloSustitutivo(
      {required this.articuloId,
      required this.articuloSustitutivo,
      required this.orden,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String articuloId;
  @override
  final Articulo articuloSustitutivo;
  @override
  final double orden;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticuloSustitutivo(articuloId: $articuloId, articuloSustitutivo: $articuloSustitutivo, orden: $orden, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloSustitutivo &&
            const DeepCollectionEquality()
                .equals(other.articuloId, articuloId) &&
            const DeepCollectionEquality()
                .equals(other.articuloSustitutivo, articuloSustitutivo) &&
            const DeepCollectionEquality().equals(other.orden, orden) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articuloId),
      const DeepCollectionEquality().hash(articuloSustitutivo),
      const DeepCollectionEquality().hash(orden),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloSustitutivoCopyWith<_$_ArticuloSustitutivo> get copyWith =>
      __$$_ArticuloSustitutivoCopyWithImpl<_$_ArticuloSustitutivo>(
          this, _$identity);
}

abstract class _ArticuloSustitutivo extends ArticuloSustitutivo {
  const factory _ArticuloSustitutivo(
      {required final String articuloId,
      required final Articulo articuloSustitutivo,
      required final double orden,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticuloSustitutivo;
  const _ArticuloSustitutivo._() : super._();

  @override
  String get articuloId;
  @override
  Articulo get articuloSustitutivo;
  @override
  double get orden;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloSustitutivoCopyWith<_$_ArticuloSustitutivo> get copyWith =>
      throw _privateConstructorUsedError;
}
