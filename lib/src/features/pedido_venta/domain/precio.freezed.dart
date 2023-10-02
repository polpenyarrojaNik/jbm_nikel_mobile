// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'precio.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Precio {
  Money get precio => throw _privateConstructorUsedError;
  int get tipoPrecio => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrecioCopyWith<Precio> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrecioCopyWith<$Res> {
  factory $PrecioCopyWith(Precio value, $Res Function(Precio) then) =
      _$PrecioCopyWithImpl<$Res, Precio>;
  @useResult
  $Res call({Money precio, int tipoPrecio});
}

/// @nodoc
class _$PrecioCopyWithImpl<$Res, $Val extends Precio>
    implements $PrecioCopyWith<$Res> {
  _$PrecioCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precio = null,
    Object? tipoPrecio = null,
  }) {
    return _then(_value.copyWith(
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as Money,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PrecioImplCopyWith<$Res> implements $PrecioCopyWith<$Res> {
  factory _$$PrecioImplCopyWith(
          _$PrecioImpl value, $Res Function(_$PrecioImpl) then) =
      __$$PrecioImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Money precio, int tipoPrecio});
}

/// @nodoc
class __$$PrecioImplCopyWithImpl<$Res>
    extends _$PrecioCopyWithImpl<$Res, _$PrecioImpl>
    implements _$$PrecioImplCopyWith<$Res> {
  __$$PrecioImplCopyWithImpl(
      _$PrecioImpl _value, $Res Function(_$PrecioImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? precio = null,
    Object? tipoPrecio = null,
  }) {
    return _then(_$PrecioImpl(
      precio: null == precio
          ? _value.precio
          : precio // ignore: cast_nullable_to_non_nullable
              as Money,
      tipoPrecio: null == tipoPrecio
          ? _value.tipoPrecio
          : tipoPrecio // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PrecioImpl extends _Precio {
  const _$PrecioImpl({required this.precio, required this.tipoPrecio})
      : super._();

  @override
  final Money precio;
  @override
  final int tipoPrecio;

  @override
  String toString() {
    return 'Precio(precio: $precio, tipoPrecio: $tipoPrecio)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PrecioImpl &&
            (identical(other.precio, precio) || other.precio == precio) &&
            (identical(other.tipoPrecio, tipoPrecio) ||
                other.tipoPrecio == tipoPrecio));
  }

  @override
  int get hashCode => Object.hash(runtimeType, precio, tipoPrecio);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PrecioImplCopyWith<_$PrecioImpl> get copyWith =>
      __$$PrecioImplCopyWithImpl<_$PrecioImpl>(this, _$identity);
}

abstract class _Precio extends Precio {
  const factory _Precio(
      {required final Money precio,
      required final int tipoPrecio}) = _$PrecioImpl;
  const _Precio._() : super._();

  @override
  Money get precio;
  @override
  int get tipoPrecio;
  @override
  @JsonKey(ignore: true)
  _$$PrecioImplCopyWith<_$PrecioImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
