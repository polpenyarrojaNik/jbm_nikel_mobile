// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_top.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ArticuloTop {
  String get articuloId => throw _privateConstructorUsedError;
  String get descripcion => throw _privateConstructorUsedError;
  Money get ventasTotal => throw _privateConstructorUsedError;
  Money get ventasCliente => throw _privateConstructorUsedError;

  /// Create a copy of ArticuloTop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of ArticuloTop
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$ArticuloTopImplCopyWith<$Res>
    implements $ArticuloTopCopyWith<$Res> {
  factory _$$ArticuloTopImplCopyWith(
          _$ArticuloTopImpl value, $Res Function(_$ArticuloTopImpl) then) =
      __$$ArticuloTopImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String articuloId,
      String descripcion,
      Money ventasTotal,
      Money ventasCliente});
}

/// @nodoc
class __$$ArticuloTopImplCopyWithImpl<$Res>
    extends _$ArticuloTopCopyWithImpl<$Res, _$ArticuloTopImpl>
    implements _$$ArticuloTopImplCopyWith<$Res> {
  __$$ArticuloTopImplCopyWithImpl(
      _$ArticuloTopImpl _value, $Res Function(_$ArticuloTopImpl) _then)
      : super(_value, _then);

  /// Create a copy of ArticuloTop
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? articuloId = null,
    Object? descripcion = null,
    Object? ventasTotal = null,
    Object? ventasCliente = null,
  }) {
    return _then(_$ArticuloTopImpl(
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

class _$ArticuloTopImpl extends _ArticuloTop {
  const _$ArticuloTopImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArticuloTopImpl &&
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

  /// Create a copy of ArticuloTop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ArticuloTopImplCopyWith<_$ArticuloTopImpl> get copyWith =>
      __$$ArticuloTopImplCopyWithImpl<_$ArticuloTopImpl>(this, _$identity);
}

abstract class _ArticuloTop extends ArticuloTop {
  const factory _ArticuloTop(
      {required final String articuloId,
      required final String descripcion,
      required final Money ventasTotal,
      required final Money ventasCliente}) = _$ArticuloTopImpl;
  const _ArticuloTop._() : super._();

  @override
  String get articuloId;
  @override
  String get descripcion;
  @override
  Money get ventasTotal;
  @override
  Money get ventasCliente;

  /// Create a copy of ArticuloTop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ArticuloTopImplCopyWith<_$ArticuloTopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
