// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'articulo_top.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ArticuloTop {
  Articulo get articulo => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ArticuloTopCopyWith<ArticuloTop> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArticuloTopCopyWith<$Res> {
  factory $ArticuloTopCopyWith(
          ArticuloTop value, $Res Function(ArticuloTop) then) =
      _$ArticuloTopCopyWithImpl<$Res>;
  $Res call({Articulo articulo, DateTime lastUpdated, bool deleted});

  $ArticuloCopyWith<$Res> get articulo;
}

/// @nodoc
class _$ArticuloTopCopyWithImpl<$Res> implements $ArticuloTopCopyWith<$Res> {
  _$ArticuloTopCopyWithImpl(this._value, this._then);

  final ArticuloTop _value;
  // ignore: unused_field
  final $Res Function(ArticuloTop) _then;

  @override
  $Res call({
    Object? articulo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      articulo: articulo == freezed
          ? _value.articulo
          : articulo // ignore: cast_nullable_to_non_nullable
              as Articulo,
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
  $ArticuloCopyWith<$Res> get articulo {
    return $ArticuloCopyWith<$Res>(_value.articulo, (value) {
      return _then(_value.copyWith(articulo: value));
    });
  }
}

/// @nodoc
abstract class _$$_ArticuloTopCopyWith<$Res>
    implements $ArticuloTopCopyWith<$Res> {
  factory _$$_ArticuloTopCopyWith(
          _$_ArticuloTop value, $Res Function(_$_ArticuloTop) then) =
      __$$_ArticuloTopCopyWithImpl<$Res>;
  @override
  $Res call({Articulo articulo, DateTime lastUpdated, bool deleted});

  @override
  $ArticuloCopyWith<$Res> get articulo;
}

/// @nodoc
class __$$_ArticuloTopCopyWithImpl<$Res> extends _$ArticuloTopCopyWithImpl<$Res>
    implements _$$_ArticuloTopCopyWith<$Res> {
  __$$_ArticuloTopCopyWithImpl(
      _$_ArticuloTop _value, $Res Function(_$_ArticuloTop) _then)
      : super(_value, (v) => _then(v as _$_ArticuloTop));

  @override
  _$_ArticuloTop get _value => super._value as _$_ArticuloTop;

  @override
  $Res call({
    Object? articulo = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ArticuloTop(
      articulo: articulo == freezed
          ? _value.articulo
          : articulo // ignore: cast_nullable_to_non_nullable
              as Articulo,
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

class _$_ArticuloTop extends _ArticuloTop {
  const _$_ArticuloTop(
      {required this.articulo,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final Articulo articulo;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ArticuloTop(articulo: $articulo, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloTop &&
            const DeepCollectionEquality().equals(other.articulo, articulo) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(articulo),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ArticuloTopCopyWith<_$_ArticuloTop> get copyWith =>
      __$$_ArticuloTopCopyWithImpl<_$_ArticuloTop>(this, _$identity);
}

abstract class _ArticuloTop extends ArticuloTop {
  const factory _ArticuloTop(
      {required final Articulo articulo,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ArticuloTop;
  const _ArticuloTop._() : super._();

  @override
  Articulo get articulo;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloTopCopyWith<_$_ArticuloTop> get copyWith =>
      throw _privateConstructorUsedError;
}
