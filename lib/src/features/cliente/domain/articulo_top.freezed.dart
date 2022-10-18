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
      _$ArticuloTopCopyWithImpl<$Res, ArticuloTop>;
  @useResult
  $Res call({Articulo articulo, DateTime lastUpdated, bool deleted});

  $ArticuloCopyWith<$Res> get articulo;
}

/// @nodoc
class _$ArticuloTopCopyWithImpl<$Res, $Val extends ArticuloTop>
    implements $ArticuloTopCopyWith<$Res> {
  _$ArticuloTopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articulo = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      articulo: null == articulo
          ? _value.articulo
          : articulo // ignore: cast_nullable_to_non_nullable
              as Articulo,
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

  @override
  @pragma('vm:prefer-inline')
  $ArticuloCopyWith<$Res> get articulo {
    return $ArticuloCopyWith<$Res>(_value.articulo, (value) {
      return _then(_value.copyWith(articulo: value) as $Val);
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
  @useResult
  $Res call({Articulo articulo, DateTime lastUpdated, bool deleted});

  @override
  $ArticuloCopyWith<$Res> get articulo;
}

/// @nodoc
class __$$_ArticuloTopCopyWithImpl<$Res>
    extends _$ArticuloTopCopyWithImpl<$Res, _$_ArticuloTop>
    implements _$$_ArticuloTopCopyWith<$Res> {
  __$$_ArticuloTopCopyWithImpl(
      _$_ArticuloTop _value, $Res Function(_$_ArticuloTop) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articulo = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ArticuloTop(
      articulo: null == articulo
          ? _value.articulo
          : articulo // ignore: cast_nullable_to_non_nullable
              as Articulo,
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
            (identical(other.articulo, articulo) ||
                other.articulo == articulo) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, articulo, lastUpdated, deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
