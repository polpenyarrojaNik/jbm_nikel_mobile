// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'get_cliente_alrededor_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetClienteAlrededorArg {
  LatLng get latLng => throw _privateConstructorUsedError;
  double get radiusDistance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetClienteAlrededorArgCopyWith<GetClienteAlrededorArg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetClienteAlrededorArgCopyWith<$Res> {
  factory $GetClienteAlrededorArgCopyWith(GetClienteAlrededorArg value,
          $Res Function(GetClienteAlrededorArg) then) =
      _$GetClienteAlrededorArgCopyWithImpl<$Res>;
  $Res call({LatLng latLng, double radiusDistance});
}

/// @nodoc
class _$GetClienteAlrededorArgCopyWithImpl<$Res>
    implements $GetClienteAlrededorArgCopyWith<$Res> {
  _$GetClienteAlrededorArgCopyWithImpl(this._value, this._then);

  final GetClienteAlrededorArg _value;
  // ignore: unused_field
  final $Res Function(GetClienteAlrededorArg) _then;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? radiusDistance = freezed,
  }) {
    return _then(_value.copyWith(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      radiusDistance: radiusDistance == freezed
          ? _value.radiusDistance
          : radiusDistance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_GetClienteAlrededorArgCopyWith<$Res>
    implements $GetClienteAlrededorArgCopyWith<$Res> {
  factory _$$_GetClienteAlrededorArgCopyWith(_$_GetClienteAlrededorArg value,
          $Res Function(_$_GetClienteAlrededorArg) then) =
      __$$_GetClienteAlrededorArgCopyWithImpl<$Res>;
  @override
  $Res call({LatLng latLng, double radiusDistance});
}

/// @nodoc
class __$$_GetClienteAlrededorArgCopyWithImpl<$Res>
    extends _$GetClienteAlrededorArgCopyWithImpl<$Res>
    implements _$$_GetClienteAlrededorArgCopyWith<$Res> {
  __$$_GetClienteAlrededorArgCopyWithImpl(_$_GetClienteAlrededorArg _value,
      $Res Function(_$_GetClienteAlrededorArg) _then)
      : super(_value, (v) => _then(v as _$_GetClienteAlrededorArg));

  @override
  _$_GetClienteAlrededorArg get _value =>
      super._value as _$_GetClienteAlrededorArg;

  @override
  $Res call({
    Object? latLng = freezed,
    Object? radiusDistance = freezed,
  }) {
    return _then(_$_GetClienteAlrededorArg(
      latLng: latLng == freezed
          ? _value.latLng
          : latLng // ignore: cast_nullable_to_non_nullable
              as LatLng,
      radiusDistance: radiusDistance == freezed
          ? _value.radiusDistance
          : radiusDistance // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_GetClienteAlrededorArg extends _GetClienteAlrededorArg {
  const _$_GetClienteAlrededorArg(
      {required this.latLng, required this.radiusDistance})
      : super._();

  @override
  final LatLng latLng;
  @override
  final double radiusDistance;

  @override
  String toString() {
    return 'GetClienteAlrededorArg(latLng: $latLng, radiusDistance: $radiusDistance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetClienteAlrededorArg &&
            const DeepCollectionEquality().equals(other.latLng, latLng) &&
            const DeepCollectionEquality()
                .equals(other.radiusDistance, radiusDistance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(latLng),
      const DeepCollectionEquality().hash(radiusDistance));

  @JsonKey(ignore: true)
  @override
  _$$_GetClienteAlrededorArgCopyWith<_$_GetClienteAlrededorArg> get copyWith =>
      __$$_GetClienteAlrededorArgCopyWithImpl<_$_GetClienteAlrededorArg>(
          this, _$identity);
}

abstract class _GetClienteAlrededorArg extends GetClienteAlrededorArg {
  const factory _GetClienteAlrededorArg(
      {required final LatLng latLng,
      required final double radiusDistance}) = _$_GetClienteAlrededorArg;
  const _GetClienteAlrededorArg._() : super._();

  @override
  LatLng get latLng;
  @override
  double get radiusDistance;
  @override
  @JsonKey(ignore: true)
  _$$_GetClienteAlrededorArgCopyWith<_$_GetClienteAlrededorArg> get copyWith =>
      throw _privateConstructorUsedError;
}
