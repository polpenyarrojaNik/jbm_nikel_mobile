// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'get_cliente_alrededor_arg.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GetClienteAlrededorArg {

 LatLng get latLng; double get radiusDistance; bool get showDireccionesEnvio; bool get showPotenciales;
/// Create a copy of GetClienteAlrededorArg
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetClienteAlrededorArgCopyWith<GetClienteAlrededorArg> get copyWith => _$GetClienteAlrededorArgCopyWithImpl<GetClienteAlrededorArg>(this as GetClienteAlrededorArg, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetClienteAlrededorArg&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.radiusDistance, radiusDistance) || other.radiusDistance == radiusDistance)&&(identical(other.showDireccionesEnvio, showDireccionesEnvio) || other.showDireccionesEnvio == showDireccionesEnvio)&&(identical(other.showPotenciales, showPotenciales) || other.showPotenciales == showPotenciales));
}


@override
int get hashCode => Object.hash(runtimeType,latLng,radiusDistance,showDireccionesEnvio,showPotenciales);

@override
String toString() {
  return 'GetClienteAlrededorArg(latLng: $latLng, radiusDistance: $radiusDistance, showDireccionesEnvio: $showDireccionesEnvio, showPotenciales: $showPotenciales)';
}


}

/// @nodoc
abstract mixin class $GetClienteAlrededorArgCopyWith<$Res>  {
  factory $GetClienteAlrededorArgCopyWith(GetClienteAlrededorArg value, $Res Function(GetClienteAlrededorArg) _then) = _$GetClienteAlrededorArgCopyWithImpl;
@useResult
$Res call({
 LatLng latLng, double radiusDistance, bool showDireccionesEnvio, bool showPotenciales
});




}
/// @nodoc
class _$GetClienteAlrededorArgCopyWithImpl<$Res>
    implements $GetClienteAlrededorArgCopyWith<$Res> {
  _$GetClienteAlrededorArgCopyWithImpl(this._self, this._then);

  final GetClienteAlrededorArg _self;
  final $Res Function(GetClienteAlrededorArg) _then;

/// Create a copy of GetClienteAlrededorArg
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? latLng = null,Object? radiusDistance = null,Object? showDireccionesEnvio = null,Object? showPotenciales = null,}) {
  return _then(_self.copyWith(
latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng,radiusDistance: null == radiusDistance ? _self.radiusDistance : radiusDistance // ignore: cast_nullable_to_non_nullable
as double,showDireccionesEnvio: null == showDireccionesEnvio ? _self.showDireccionesEnvio : showDireccionesEnvio // ignore: cast_nullable_to_non_nullable
as bool,showPotenciales: null == showPotenciales ? _self.showPotenciales : showPotenciales // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GetClienteAlrededorArg].
extension GetClienteAlrededorArgPatterns on GetClienteAlrededorArg {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GetClienteAlrededorArg value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GetClienteAlrededorArg() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GetClienteAlrededorArg value)  $default,){
final _that = this;
switch (_that) {
case _GetClienteAlrededorArg():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GetClienteAlrededorArg value)?  $default,){
final _that = this;
switch (_that) {
case _GetClienteAlrededorArg() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( LatLng latLng,  double radiusDistance,  bool showDireccionesEnvio,  bool showPotenciales)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GetClienteAlrededorArg() when $default != null:
return $default(_that.latLng,_that.radiusDistance,_that.showDireccionesEnvio,_that.showPotenciales);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( LatLng latLng,  double radiusDistance,  bool showDireccionesEnvio,  bool showPotenciales)  $default,) {final _that = this;
switch (_that) {
case _GetClienteAlrededorArg():
return $default(_that.latLng,_that.radiusDistance,_that.showDireccionesEnvio,_that.showPotenciales);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( LatLng latLng,  double radiusDistance,  bool showDireccionesEnvio,  bool showPotenciales)?  $default,) {final _that = this;
switch (_that) {
case _GetClienteAlrededorArg() when $default != null:
return $default(_that.latLng,_that.radiusDistance,_that.showDireccionesEnvio,_that.showPotenciales);case _:
  return null;

}
}

}

/// @nodoc


class _GetClienteAlrededorArg extends GetClienteAlrededorArg {
  const _GetClienteAlrededorArg({required this.latLng, required this.radiusDistance, required this.showDireccionesEnvio, required this.showPotenciales}): super._();
  

@override final  LatLng latLng;
@override final  double radiusDistance;
@override final  bool showDireccionesEnvio;
@override final  bool showPotenciales;

/// Create a copy of GetClienteAlrededorArg
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetClienteAlrededorArgCopyWith<_GetClienteAlrededorArg> get copyWith => __$GetClienteAlrededorArgCopyWithImpl<_GetClienteAlrededorArg>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetClienteAlrededorArg&&(identical(other.latLng, latLng) || other.latLng == latLng)&&(identical(other.radiusDistance, radiusDistance) || other.radiusDistance == radiusDistance)&&(identical(other.showDireccionesEnvio, showDireccionesEnvio) || other.showDireccionesEnvio == showDireccionesEnvio)&&(identical(other.showPotenciales, showPotenciales) || other.showPotenciales == showPotenciales));
}


@override
int get hashCode => Object.hash(runtimeType,latLng,radiusDistance,showDireccionesEnvio,showPotenciales);

@override
String toString() {
  return 'GetClienteAlrededorArg(latLng: $latLng, radiusDistance: $radiusDistance, showDireccionesEnvio: $showDireccionesEnvio, showPotenciales: $showPotenciales)';
}


}

/// @nodoc
abstract mixin class _$GetClienteAlrededorArgCopyWith<$Res> implements $GetClienteAlrededorArgCopyWith<$Res> {
  factory _$GetClienteAlrededorArgCopyWith(_GetClienteAlrededorArg value, $Res Function(_GetClienteAlrededorArg) _then) = __$GetClienteAlrededorArgCopyWithImpl;
@override @useResult
$Res call({
 LatLng latLng, double radiusDistance, bool showDireccionesEnvio, bool showPotenciales
});




}
/// @nodoc
class __$GetClienteAlrededorArgCopyWithImpl<$Res>
    implements _$GetClienteAlrededorArgCopyWith<$Res> {
  __$GetClienteAlrededorArgCopyWithImpl(this._self, this._then);

  final _GetClienteAlrededorArg _self;
  final $Res Function(_GetClienteAlrededorArg) _then;

/// Create a copy of GetClienteAlrededorArg
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? latLng = null,Object? radiusDistance = null,Object? showDireccionesEnvio = null,Object? showPotenciales = null,}) {
  return _then(_GetClienteAlrededorArg(
latLng: null == latLng ? _self.latLng : latLng // ignore: cast_nullable_to_non_nullable
as LatLng,radiusDistance: null == radiusDistance ? _self.radiusDistance : radiusDistance // ignore: cast_nullable_to_non_nullable
as double,showDireccionesEnvio: null == showDireccionesEnvio ? _self.showDireccionesEnvio : showDireccionesEnvio // ignore: cast_nullable_to_non_nullable
as bool,showPotenciales: null == showPotenciales ? _self.showPotenciales : showPotenciales // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
