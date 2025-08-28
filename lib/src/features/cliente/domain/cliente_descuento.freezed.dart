// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_descuento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteDescuento {

 String get clienteId; String get articuloId; String? get descripcion; Familia get familia; Subfamilia get subfamilia; int get cantidadDesde; double get descuento; DateTime get lastUpdated; bool get deleted;
/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDescuentoCopyWith<ClienteDescuento> get copyWith => _$ClienteDescuentoCopyWithImpl<ClienteDescuento>(this as ClienteDescuento, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDescuento&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.familia, familia) || other.familia == familia)&&(identical(other.subfamilia, subfamilia) || other.subfamilia == subfamilia)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,descripcion,familia,subfamilia,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDescuento(clienteId: $clienteId, articuloId: $articuloId, descripcion: $descripcion, familia: $familia, subfamilia: $subfamilia, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteDescuentoCopyWith<$Res>  {
  factory $ClienteDescuentoCopyWith(ClienteDescuento value, $Res Function(ClienteDescuento) _then) = _$ClienteDescuentoCopyWithImpl;
@useResult
$Res call({
 String clienteId, String articuloId, String? descripcion, Familia familia, Subfamilia subfamilia, int cantidadDesde, double descuento, DateTime lastUpdated, bool deleted
});


$FamiliaCopyWith<$Res> get familia;$SubfamiliaCopyWith<$Res> get subfamilia;

}
/// @nodoc
class _$ClienteDescuentoCopyWithImpl<$Res>
    implements $ClienteDescuentoCopyWith<$Res> {
  _$ClienteDescuentoCopyWithImpl(this._self, this._then);

  final ClienteDescuento _self;
  final $Res Function(ClienteDescuento) _then;

/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? articuloId = null,Object? descripcion = freezed,Object? familia = null,Object? subfamilia = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,familia: null == familia ? _self.familia : familia // ignore: cast_nullable_to_non_nullable
as Familia,subfamilia: null == subfamilia ? _self.subfamilia : subfamilia // ignore: cast_nullable_to_non_nullable
as Subfamilia,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamiliaCopyWith<$Res> get familia {
  
  return $FamiliaCopyWith<$Res>(_self.familia, (value) {
    return _then(_self.copyWith(familia: value));
  });
}/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubfamiliaCopyWith<$Res> get subfamilia {
  
  return $SubfamiliaCopyWith<$Res>(_self.subfamilia, (value) {
    return _then(_self.copyWith(subfamilia: value));
  });
}
}


/// Adds pattern-matching-related methods to [ClienteDescuento].
extension ClienteDescuentoPatterns on ClienteDescuento {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDescuento value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDescuento() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDescuento value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDescuento():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDescuento value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDescuento() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String clienteId,  String articuloId,  String? descripcion,  Familia familia,  Subfamilia subfamilia,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDescuento() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.familia,_that.subfamilia,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String clienteId,  String articuloId,  String? descripcion,  Familia familia,  Subfamilia subfamilia,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteDescuento():
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.familia,_that.subfamilia,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String clienteId,  String articuloId,  String? descripcion,  Familia familia,  Subfamilia subfamilia,  int cantidadDesde,  double descuento,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDescuento() when $default != null:
return $default(_that.clienteId,_that.articuloId,_that.descripcion,_that.familia,_that.subfamilia,_that.cantidadDesde,_that.descuento,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteDescuento extends ClienteDescuento {
  const _ClienteDescuento({required this.clienteId, required this.articuloId, required this.descripcion, required this.familia, required this.subfamilia, required this.cantidadDesde, required this.descuento, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String clienteId;
@override final  String articuloId;
@override final  String? descripcion;
@override final  Familia familia;
@override final  Subfamilia subfamilia;
@override final  int cantidadDesde;
@override final  double descuento;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDescuentoCopyWith<_ClienteDescuento> get copyWith => __$ClienteDescuentoCopyWithImpl<_ClienteDescuento>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDescuento&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.familia, familia) || other.familia == familia)&&(identical(other.subfamilia, subfamilia) || other.subfamilia == subfamilia)&&(identical(other.cantidadDesde, cantidadDesde) || other.cantidadDesde == cantidadDesde)&&(identical(other.descuento, descuento) || other.descuento == descuento)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,clienteId,articuloId,descripcion,familia,subfamilia,cantidadDesde,descuento,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDescuento(clienteId: $clienteId, articuloId: $articuloId, descripcion: $descripcion, familia: $familia, subfamilia: $subfamilia, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteDescuentoCopyWith<$Res> implements $ClienteDescuentoCopyWith<$Res> {
  factory _$ClienteDescuentoCopyWith(_ClienteDescuento value, $Res Function(_ClienteDescuento) _then) = __$ClienteDescuentoCopyWithImpl;
@override @useResult
$Res call({
 String clienteId, String articuloId, String? descripcion, Familia familia, Subfamilia subfamilia, int cantidadDesde, double descuento, DateTime lastUpdated, bool deleted
});


@override $FamiliaCopyWith<$Res> get familia;@override $SubfamiliaCopyWith<$Res> get subfamilia;

}
/// @nodoc
class __$ClienteDescuentoCopyWithImpl<$Res>
    implements _$ClienteDescuentoCopyWith<$Res> {
  __$ClienteDescuentoCopyWithImpl(this._self, this._then);

  final _ClienteDescuento _self;
  final $Res Function(_ClienteDescuento) _then;

/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? articuloId = null,Object? descripcion = freezed,Object? familia = null,Object? subfamilia = null,Object? cantidadDesde = null,Object? descuento = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteDescuento(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,descripcion: freezed == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String?,familia: null == familia ? _self.familia : familia // ignore: cast_nullable_to_non_nullable
as Familia,subfamilia: null == subfamilia ? _self.subfamilia : subfamilia // ignore: cast_nullable_to_non_nullable
as Subfamilia,cantidadDesde: null == cantidadDesde ? _self.cantidadDesde : cantidadDesde // ignore: cast_nullable_to_non_nullable
as int,descuento: null == descuento ? _self.descuento : descuento // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$FamiliaCopyWith<$Res> get familia {
  
  return $FamiliaCopyWith<$Res>(_self.familia, (value) {
    return _then(_self.copyWith(familia: value));
  });
}/// Create a copy of ClienteDescuento
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SubfamiliaCopyWith<$Res> get subfamilia {
  
  return $SubfamiliaCopyWith<$Res>(_self.subfamilia, (value) {
    return _then(_self.copyWith(subfamilia: value));
  });
}
}

// dart format on
