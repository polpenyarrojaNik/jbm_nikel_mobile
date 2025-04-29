// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precio_promocion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$PrecioPromocion {
  Money get precio => throw _privateConstructorUsedError;
  int get tipoPrecio => throw _privateConstructorUsedError;
  double get dto => throw _privateConstructorUsedError;

  /// Create a copy of PrecioPromocion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PrecioPromocionCopyWith<PrecioPromocion> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecioPromocionCopyWith<$Res> {
  factory $PrecioPromocionCopyWith(
    PrecioPromocion value,
    $Res Function(PrecioPromocion) then,
  ) = _$PrecioPromocionCopyWithImpl<$Res, PrecioPromocion>;
  @useResult
  $Res call({Money precio, int tipoPrecio, double dto});
}

/// @nodoc
class _$PrecioPromocionCopyWithImpl<$Res, $Val extends PrecioPromocion>
    implements $PrecioPromocionCopyWith<$Res> {
  _$PrecioPromocionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PrecioPromocion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precio = null,
    Object? tipoPrecio = null,
    Object? dto = null,
  }) {
    return _then(
      _value.copyWith(
            precio:
                null == precio
                    ? _value.precio
                    : precio // ignore: cast_nullable_to_non_nullable
                        as Money,
            tipoPrecio:
                null == tipoPrecio
                    ? _value.tipoPrecio
                    : tipoPrecio // ignore: cast_nullable_to_non_nullable
                        as int,
            dto:
                null == dto
                    ? _value.dto
                    : dto // ignore: cast_nullable_to_non_nullable
                        as double,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PrecioPromocionImplCopyWith<$Res>
    implements $PrecioPromocionCopyWith<$Res> {
  factory _$$PrecioPromocionImplCopyWith(
    _$PrecioPromocionImpl value,
    $Res Function(_$PrecioPromocionImpl) then,
  ) = __$$PrecioPromocionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money precio, int tipoPrecio, double dto});
}

/// @nodoc
class __$$PrecioPromocionImplCopyWithImpl<$Res>
    extends _$PrecioPromocionCopyWithImpl<$Res, _$PrecioPromocionImpl>
    implements _$$PrecioPromocionImplCopyWith<$Res> {
  __$$PrecioPromocionImplCopyWithImpl(
    _$PrecioPromocionImpl _value,
    $Res Function(_$PrecioPromocionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of PrecioPromocion
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precio = null,
    Object? tipoPrecio = null,
    Object? dto = null,
  }) {
    return _then(
      _$PrecioPromocionImpl(
        precio:
            null == precio
                ? _value.precio
                : precio // ignore: cast_nullable_to_non_nullable
                    as Money,
        tipoPrecio:
            null == tipoPrecio
                ? _value.tipoPrecio
                : tipoPrecio // ignore: cast_nullable_to_non_nullable
                    as int,
        dto:
            null == dto
                ? _value.dto
                : dto // ignore: cast_nullable_to_non_nullable
                    as double,
      ),
    );
  }
}

/// @nodoc

class _$PrecioPromocionImpl extends _PrecioPromocion {
  const _$PrecioPromocionImpl({
    required this.precio,
    required this.tipoPrecio,
    required this.dto,
  }) : super._();

  @override
  final Money precio;
  @override
  final int tipoPrecio;
  @override
  final double dto;

  @override
  String toString() {
    return 'PrecioPromocion(precio: $precio, tipoPrecio: $tipoPrecio, dto: $dto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrecioPromocionImpl &&
            (identical(other.precio, precio) || other.precio == precio) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio) &&
            (identical(other.dto, dto) || other.dto == dto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, precio, tipoPrecio, dto);

  /// Create a copy of PrecioPromocion
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PrecioPromocionImplCopyWith<_$PrecioPromocionImpl> get copyWith =>
      __$$PrecioPromocionImplCopyWithImpl<_$PrecioPromocionImpl>(
        this,
        _$identity,
      );
}

abstract class _PrecioPromocion extends PrecioPromocion {
  const factory _PrecioPromocion({
    required final Money precio,
    required final int tipoPrecio,
    required final double dto,
  }) = _$PrecioPromocionImpl;
  const _PrecioPromocion._() : super._();

  @override
  Money get precio;
  @override
  int get tipoPrecio;
  @override
  double get dto;

  /// Create a copy of PrecioPromocion
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PrecioPromocionImplCopyWith<_$PrecioPromocionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
