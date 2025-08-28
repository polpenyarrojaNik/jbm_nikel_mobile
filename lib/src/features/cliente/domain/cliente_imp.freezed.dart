// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteImp {

 String get clienteId; Sector get sector;
/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteImpCopyWith<ClienteImp> get copyWith => _$ClienteImpCopyWithImpl<ClienteImp>(this as ClienteImp, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteImp&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.sector, sector) || other.sector == sector));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,sector);

@override
String toString() {
  return 'ClienteImp(clienteId: $clienteId, sector: $sector)';
}


}

/// @nodoc
abstract mixin class $ClienteImpCopyWith<$Res>  {
  factory $ClienteImpCopyWith(ClienteImp value, $Res Function(ClienteImp) _then) = _$ClienteImpCopyWithImpl;
@useResult
$Res call({
 String clienteId, Sector sector
});


$SectorCopyWith<$Res> get sector;

}
/// @nodoc
class _$ClienteImpCopyWithImpl<$Res>
    implements $ClienteImpCopyWith<$Res> {
  _$ClienteImpCopyWithImpl(this._self, this._then);

  final ClienteImp _self;
  final $Res Function(ClienteImp) _then;

/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? sector = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector,
  ));
}
/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res> get sector {
  
  return $SectorCopyWith<$Res>(_self.sector, (value) {
    return _then(_self.copyWith(sector: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteImp].
extension ClienteImpPatterns on ClienteImp {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteImp value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteImp() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteImp value)  $default,){
final _that = this;
switch (_that) {
case _ClienteImp():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteImp value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteImp() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  Sector sector)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteImp() when $default != null:
return $default(_that.clienteId,_that.sector);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  Sector sector)  $default,) {final _that = this;
switch (_that) {
case _ClienteImp():
return $default(_that.clienteId,_that.sector);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  Sector sector)?  $default,) {final _that = this;
switch (_that) {
case _ClienteImp() when $default != null:
return $default(_that.clienteId,_that.sector);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteImp extends ClienteImp {
  const _ClienteImp({required this.clienteId, required this.sector}): super._();
  

@override final  String clienteId;
@override final  Sector sector;

/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteImpCopyWith<_ClienteImp> get copyWith => __$ClienteImpCopyWithImpl<_ClienteImp>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteImp&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.sector, sector) || other.sector == sector));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,sector);

@override
String toString() {
  return 'ClienteImp(clienteId: $clienteId, sector: $sector)';
}


}

/// @nodoc
abstract mixin class _$ClienteImpCopyWith<$Res> implements $ClienteImpCopyWith<$Res> {
  factory _$ClienteImpCopyWith(_ClienteImp value, $Res Function(_ClienteImp) _then) = __$ClienteImpCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, Sector sector
});


@override $SectorCopyWith<$Res> get sector;

}
/// @nodoc
class __$ClienteImpCopyWithImpl<$Res>
    implements _$ClienteImpCopyWith<$Res> {
  __$ClienteImpCopyWithImpl(this._self, this._then);

  final _ClienteImp _self;
  final $Res Function(_ClienteImp) _then;

/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? sector = null,}) {
  return _then(_ClienteImp(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,sector: null == sector ? _self.sector : sector // ignore: cast_nullable_to_non_nullable
as Sector,
  ));
}

/// Create a copy of ClienteImp
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SectorCopyWith<$Res> get sector {
  
  return $SectorCopyWith<$Res>(_self.sector, (value) {
    return _then(_self.copyWith(sector: value));
  });
}
}

// dart format on
