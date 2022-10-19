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
  String get articuloId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  Money get ventasTotal => throw _privateConstructorUsedError;
  Money get ventasCliente => throw _privateConstructorUsedError;

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
  $Res call(
      {String articuloId,
      String descripcion,
      Money ventasTotal,
      Money ventasCliente});
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
    Object? articuloId = null,
    Object? descripcion = null,
    Object? ventasTotal = null,
    Object? ventasCliente = null,
  }) {
    return _then(_value.copyWith(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      ventasTotal: null == ventasTotal
          ? _value.ventasTotal
          : ventasTotal // ignore: cast_nullable_to_non_nullable
              as Money,
      ventasCliente: null == ventasCliente
          ? _value.ventasCliente
          : ventasCliente // ignore: cast_nullable_to_non_nullable
              as Money,
    ) as $Val);
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
  $Res call(
      {String articuloId,
      String descripcion,
      Money ventasTotal,
      Money ventasCliente});
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
    Object? articuloId = null,
    Object? descripcion = null,
    Object? ventasTotal = null,
    Object? ventasCliente = null,
  }) {
    return _then(_$_ArticuloTop(
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: null == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String,
      ventasTotal: null == ventasTotal
          ? _value.ventasTotal
          : ventasTotal // ignore: cast_nullable_to_non_nullable
              as Money,
      ventasCliente: null == ventasCliente
          ? _value.ventasCliente
          : ventasCliente // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }
}

/// @nodoc

class _$_ArticuloTop extends _ArticuloTop {
  const _$_ArticuloTop(
      {required this.articuloId,
      required this.descripcion,
      required this.ventasTotal,
      required this.ventasCliente})
      : super._();

  @override
  final String articuloId;
  @override
  final String descripcion;
  @override
  final Money ventasTotal;
  @override
  final Money ventasCliente;

  @override
  String toString() {
    return 'ArticuloTop(articuloId: $articuloId, descripcion: $descripcion, ventasTotal: $ventasTotal, ventasCliente: $ventasCliente)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ArticuloTop &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.ventasTotal, ventasTotal) ||
                other.ventasTotal == ventasTotal) &&
            (identical(other.ventasCliente, ventasCliente) ||
                other.ventasCliente == ventasCliente));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, articuloId, descripcion, ventasTotal, ventasCliente);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ArticuloTopCopyWith<_$_ArticuloTop> get copyWith =>
      __$$_ArticuloTopCopyWithImpl<_$_ArticuloTop>(this, _$identity);
}

abstract class _ArticuloTop extends ArticuloTop {
  const factory _ArticuloTop(
      {required final String articuloId,
      required final String descripcion,
      required final Money ventasTotal,
      required final Money ventasCliente}) = _$_ArticuloTop;
  const _ArticuloTop._() : super._();

  @override
  String get articuloId;
  @override
  String get descripcion;
  @override
  Money get ventasTotal;
  @override
  Money get ventasCliente;
  @override
  @JsonKey(ignore: true)
  _$$_ArticuloTopCopyWith<_$_ArticuloTop> get copyWith =>
      throw _privateConstructorUsedError;
}
