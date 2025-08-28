// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Devolucion {

 String get empresaId; String get id; DateTime get fechaDevolucion; String? get clienteId; String? get direccionId; String? get nombre; String? get direccionRecogida1; String? get direccionRecogida2; String? get codigoPostal; String? get poblacion; Pais? get pais; String? get almacenDestino; String? get agenciaTransporte; DevolucionEstado get devolucionEstado; double get kilosDevolucion; double get bultos; DateTime get lastUpdated; bool get deleted;
/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevolucionCopyWith<Devolucion> get copyWith => _$DevolucionCopyWithImpl<Devolucion>(this as Devolucion, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Devolucion&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.id, id) || other.id == id)&&(identical(other.fechaDevolucion, fechaDevolucion) || other.fechaDevolucion == fechaDevolucion)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccionRecogida1, direccionRecogida1) || other.direccionRecogida1 == direccionRecogida1)&&(identical(other.direccionRecogida2, direccionRecogida2) || other.direccionRecogida2 == direccionRecogida2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.almacenDestino, almacenDestino) || other.almacenDestino == almacenDestino)&&(identical(other.agenciaTransporte, agenciaTransporte) || other.agenciaTransporte == agenciaTransporte)&&(identical(other.devolucionEstado, devolucionEstado) || other.devolucionEstado == devolucionEstado)&&(identical(other.kilosDevolucion, kilosDevolucion) || other.kilosDevolucion == kilosDevolucion)&&(identical(other.bultos, bultos) || other.bultos == bultos)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,id,fechaDevolucion,clienteId,direccionId,nombre,direccionRecogida1,direccionRecogida2,codigoPostal,poblacion,pais,almacenDestino,agenciaTransporte,devolucionEstado,kilosDevolucion,bultos,lastUpdated,deleted);

@override
String toString() {
  return 'Devolucion(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, pais: $pais, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstado: $devolucionEstado, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DevolucionCopyWith<$Res>  {
  factory $DevolucionCopyWith(Devolucion value, $Res Function(Devolucion) _then) = _$DevolucionCopyWithImpl;
@useResult
$Res call({
 String empresaId, String id, DateTime fechaDevolucion, String? clienteId, String? direccionId, String? nombre, String? direccionRecogida1, String? direccionRecogida2, String? codigoPostal, String? poblacion, Pais? pais, String? almacenDestino, String? agenciaTransporte, DevolucionEstado devolucionEstado, double kilosDevolucion, double bultos, DateTime lastUpdated, bool deleted
});


$PaisCopyWith<$Res>? get pais;$DevolucionEstadoCopyWith<$Res> get devolucionEstado;

}
/// @nodoc
class _$DevolucionCopyWithImpl<$Res>
    implements $DevolucionCopyWith<$Res> {
  _$DevolucionCopyWithImpl(this._self, this._then);

  final Devolucion _self;
  final $Res Function(Devolucion) _then;

/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? id = null,Object? fechaDevolucion = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombre = freezed,Object? direccionRecogida1 = freezed,Object? direccionRecogida2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? pais = freezed,Object? almacenDestino = freezed,Object? agenciaTransporte = freezed,Object? devolucionEstado = null,Object? kilosDevolucion = null,Object? bultos = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fechaDevolucion: null == fechaDevolucion ? _self.fechaDevolucion : fechaDevolucion // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccionRecogida1: freezed == direccionRecogida1 ? _self.direccionRecogida1 : direccionRecogida1 // ignore: cast_nullable_to_non_nullable
as String?,direccionRecogida2: freezed == direccionRecogida2 ? _self.direccionRecogida2 : direccionRecogida2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,almacenDestino: freezed == almacenDestino ? _self.almacenDestino : almacenDestino // ignore: cast_nullable_to_non_nullable
as String?,agenciaTransporte: freezed == agenciaTransporte ? _self.agenciaTransporte : agenciaTransporte // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstado: null == devolucionEstado ? _self.devolucionEstado : devolucionEstado // ignore: cast_nullable_to_non_nullable
as DevolucionEstado,kilosDevolucion: null == kilosDevolucion ? _self.kilosDevolucion : kilosDevolucion // ignore: cast_nullable_to_non_nullable
as double,bultos: null == bultos ? _self.bultos : bultos // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionEstadoCopyWith<$Res> get devolucionEstado {
  
  return $DevolucionEstadoCopyWith<$Res>(_self.devolucionEstado, (value) {
    return _then(_self.copyWith(devolucionEstado: value));
  });
}
}


/// Adds pattern-matching-related methods to [Devolucion].
extension DevolucionPatterns on Devolucion {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Devolucion value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Devolucion() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Devolucion value)  $default,){
final _that = this;
switch (_that) {
case _Devolucion():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Devolucion value)?  $default,){
final _that = this;
switch (_that) {
case _Devolucion() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String empresaId,  String id,  DateTime fechaDevolucion,  String? clienteId,  String? direccionId,  String? nombre,  String? direccionRecogida1,  String? direccionRecogida2,  String? codigoPostal,  String? poblacion,  Pais? pais,  String? almacenDestino,  String? agenciaTransporte,  DevolucionEstado devolucionEstado,  double kilosDevolucion,  double bultos,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Devolucion() when $default != null:
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.pais,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstado,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String empresaId,  String id,  DateTime fechaDevolucion,  String? clienteId,  String? direccionId,  String? nombre,  String? direccionRecogida1,  String? direccionRecogida2,  String? codigoPostal,  String? poblacion,  Pais? pais,  String? almacenDestino,  String? agenciaTransporte,  DevolucionEstado devolucionEstado,  double kilosDevolucion,  double bultos,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _Devolucion():
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.pais,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstado,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String empresaId,  String id,  DateTime fechaDevolucion,  String? clienteId,  String? direccionId,  String? nombre,  String? direccionRecogida1,  String? direccionRecogida2,  String? codigoPostal,  String? poblacion,  Pais? pais,  String? almacenDestino,  String? agenciaTransporte,  DevolucionEstado devolucionEstado,  double kilosDevolucion,  double bultos,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _Devolucion() when $default != null:
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.pais,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstado,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _Devolucion extends Devolucion {
  const _Devolucion({required this.empresaId, required this.id, required this.fechaDevolucion, this.clienteId, this.direccionId, this.nombre, this.direccionRecogida1, this.direccionRecogida2, this.codigoPostal, this.poblacion, this.pais, this.almacenDestino, this.agenciaTransporte, required this.devolucionEstado, required this.kilosDevolucion, required this.bultos, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String empresaId;
@override final  String id;
@override final  DateTime fechaDevolucion;
@override final  String? clienteId;
@override final  String? direccionId;
@override final  String? nombre;
@override final  String? direccionRecogida1;
@override final  String? direccionRecogida2;
@override final  String? codigoPostal;
@override final  String? poblacion;
@override final  Pais? pais;
@override final  String? almacenDestino;
@override final  String? agenciaTransporte;
@override final  DevolucionEstado devolucionEstado;
@override final  double kilosDevolucion;
@override final  double bultos;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevolucionCopyWith<_Devolucion> get copyWith => __$DevolucionCopyWithImpl<_Devolucion>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Devolucion&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.id, id) || other.id == id)&&(identical(other.fechaDevolucion, fechaDevolucion) || other.fechaDevolucion == fechaDevolucion)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccionRecogida1, direccionRecogida1) || other.direccionRecogida1 == direccionRecogida1)&&(identical(other.direccionRecogida2, direccionRecogida2) || other.direccionRecogida2 == direccionRecogida2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.pais, pais) || other.pais == pais)&&(identical(other.almacenDestino, almacenDestino) || other.almacenDestino == almacenDestino)&&(identical(other.agenciaTransporte, agenciaTransporte) || other.agenciaTransporte == agenciaTransporte)&&(identical(other.devolucionEstado, devolucionEstado) || other.devolucionEstado == devolucionEstado)&&(identical(other.kilosDevolucion, kilosDevolucion) || other.kilosDevolucion == kilosDevolucion)&&(identical(other.bultos, bultos) || other.bultos == bultos)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,id,fechaDevolucion,clienteId,direccionId,nombre,direccionRecogida1,direccionRecogida2,codigoPostal,poblacion,pais,almacenDestino,agenciaTransporte,devolucionEstado,kilosDevolucion,bultos,lastUpdated,deleted);

@override
String toString() {
  return 'Devolucion(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, pais: $pais, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstado: $devolucionEstado, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DevolucionCopyWith<$Res> implements $DevolucionCopyWith<$Res> {
  factory _$DevolucionCopyWith(_Devolucion value, $Res Function(_Devolucion) _then) = __$DevolucionCopyWithImpl;
@override @useResult
$Res call({
 String empresaId, String id, DateTime fechaDevolucion, String? clienteId, String? direccionId, String? nombre, String? direccionRecogida1, String? direccionRecogida2, String? codigoPostal, String? poblacion, Pais? pais, String? almacenDestino, String? agenciaTransporte, DevolucionEstado devolucionEstado, double kilosDevolucion, double bultos, DateTime lastUpdated, bool deleted
});


@override $PaisCopyWith<$Res>? get pais;@override $DevolucionEstadoCopyWith<$Res> get devolucionEstado;

}
/// @nodoc
class __$DevolucionCopyWithImpl<$Res>
    implements _$DevolucionCopyWith<$Res> {
  __$DevolucionCopyWithImpl(this._self, this._then);

  final _Devolucion _self;
  final $Res Function(_Devolucion) _then;

/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? id = null,Object? fechaDevolucion = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombre = freezed,Object? direccionRecogida1 = freezed,Object? direccionRecogida2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? pais = freezed,Object? almacenDestino = freezed,Object? agenciaTransporte = freezed,Object? devolucionEstado = null,Object? kilosDevolucion = null,Object? bultos = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_Devolucion(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fechaDevolucion: null == fechaDevolucion ? _self.fechaDevolucion : fechaDevolucion // ignore: cast_nullable_to_non_nullable
as DateTime,clienteId: freezed == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String?,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccionRecogida1: freezed == direccionRecogida1 ? _self.direccionRecogida1 : direccionRecogida1 // ignore: cast_nullable_to_non_nullable
as String?,direccionRecogida2: freezed == direccionRecogida2 ? _self.direccionRecogida2 : direccionRecogida2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,pais: freezed == pais ? _self.pais : pais // ignore: cast_nullable_to_non_nullable
as Pais?,almacenDestino: freezed == almacenDestino ? _self.almacenDestino : almacenDestino // ignore: cast_nullable_to_non_nullable
as String?,agenciaTransporte: freezed == agenciaTransporte ? _self.agenciaTransporte : agenciaTransporte // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstado: null == devolucionEstado ? _self.devolucionEstado : devolucionEstado // ignore: cast_nullable_to_non_nullable
as DevolucionEstado,kilosDevolucion: null == kilosDevolucion ? _self.kilosDevolucion : kilosDevolucion // ignore: cast_nullable_to_non_nullable
as double,bultos: null == bultos ? _self.bultos : bultos // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaisCopyWith<$Res>? get pais {
    if (_self.pais == null) {
    return null;
  }

  return $PaisCopyWith<$Res>(_self.pais!, (value) {
    return _then(_self.copyWith(pais: value));
  });
}/// Create a copy of Devolucion
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionEstadoCopyWith<$Res> get devolucionEstado {
  
  return $DevolucionEstadoCopyWith<$Res>(_self.devolucionEstado, (value) {
    return _then(_self.copyWith(devolucionEstado: value));
  });
}
}

// dart format on
