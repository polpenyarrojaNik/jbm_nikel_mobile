// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteDireccionDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'NOMBRE') String? get nombre;@JsonKey(name: 'DIRECCION1') String? get direccion1;@JsonKey(name: 'DIRECCION2') String? get direccion2;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'LATITUD') double get latitud;@JsonKey(name: 'LONGITUD') double get longitud;@JsonKey(name: 'PREDETERMINADA_SN') String? get predeterminada;@JsonKey(name: 'TELEFONO') String? get telefono;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteDireccionDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDireccionDTOCopyWith<ClienteDireccionDTO> get copyWith => _$ClienteDireccionDTOCopyWithImpl<ClienteDireccionDTO>(this as ClienteDireccionDTO, _$identity);

  /// Serializes this ClienteDireccionDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDireccionDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.predeterminada, predeterminada) || other.predeterminada == predeterminada)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,latitud,longitud,predeterminada,telefono,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDireccionDTO(clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, latitud: $latitud, longitud: $longitud, predeterminada: $predeterminada, telefono: $telefono, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteDireccionDTOCopyWith<$Res>  {
  factory $ClienteDireccionDTOCopyWith(ClienteDireccionDTO value, $Res Function(ClienteDireccionDTO) _then) = _$ClienteDireccionDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,@JsonKey(name: 'TELEFONO') String? telefono,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteDireccionDTOCopyWithImpl<$Res>
    implements $ClienteDireccionDTOCopyWith<$Res> {
  _$ClienteDireccionDTOCopyWithImpl(this._self, this._then);

  final ClienteDireccionDTO _self;
  final $Res Function(ClienteDireccionDTO) _then;

/// Create a copy of ClienteDireccionDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? latitud = null,Object? longitud = null,Object? predeterminada = freezed,Object? telefono = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,predeterminada: freezed == predeterminada ? _self.predeterminada : predeterminada // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteDireccionDTO].
extension ClienteDireccionDTOPatterns on ClienteDireccionDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDireccionDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDireccionDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDireccionDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDireccionDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'PREDETERMINADA_SN')  String? predeterminada, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDireccionDTO() when $default != null:
return $default(_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.latitud,_that.longitud,_that.predeterminada,_that.telefono,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'PREDETERMINADA_SN')  String? predeterminada, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionDTO():
return $default(_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.latitud,_that.longitud,_that.predeterminada,_that.telefono,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'LATITUD')  double latitud, @JsonKey(name: 'LONGITUD')  double longitud, @JsonKey(name: 'PREDETERMINADA_SN')  String? predeterminada, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionDTO() when $default != null:
return $default(_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.latitud,_that.longitud,_that.predeterminada,_that.telefono,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteDireccionDTO extends ClienteDireccionDTO {
  const _ClienteDireccionDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'DIRECCION_ID') required this.direccionId, @JsonKey(name: 'NOMBRE') this.nombre, @JsonKey(name: 'DIRECCION1') this.direccion1, @JsonKey(name: 'DIRECCION2') this.direccion2, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'LATITUD') required this.latitud, @JsonKey(name: 'LONGITUD') required this.longitud, @JsonKey(name: 'PREDETERMINADA_SN') this.predeterminada, @JsonKey(name: 'TELEFONO') this.telefono, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteDireccionDTO.fromJson(Map<String, dynamic> json) => _$ClienteDireccionDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'NOMBRE') final  String? nombre;
@override@JsonKey(name: 'DIRECCION1') final  String? direccion1;
@override@JsonKey(name: 'DIRECCION2') final  String? direccion2;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'LATITUD') final  double latitud;
@override@JsonKey(name: 'LONGITUD') final  double longitud;
@override@JsonKey(name: 'PREDETERMINADA_SN') final  String? predeterminada;
@override@JsonKey(name: 'TELEFONO') final  String? telefono;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteDireccionDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDireccionDTOCopyWith<_ClienteDireccionDTO> get copyWith => __$ClienteDireccionDTOCopyWithImpl<_ClienteDireccionDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteDireccionDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDireccionDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.latitud, latitud) || other.latitud == latitud)&&(identical(other.longitud, longitud) || other.longitud == longitud)&&(identical(other.predeterminada, predeterminada) || other.predeterminada == predeterminada)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,latitud,longitud,predeterminada,telefono,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteDireccionDTO(clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, latitud: $latitud, longitud: $longitud, predeterminada: $predeterminada, telefono: $telefono, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteDireccionDTOCopyWith<$Res> implements $ClienteDireccionDTOCopyWith<$Res> {
  factory _$ClienteDireccionDTOCopyWith(_ClienteDireccionDTO value, $Res Function(_ClienteDireccionDTO) _then) = __$ClienteDireccionDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'LATITUD') double latitud,@JsonKey(name: 'LONGITUD') double longitud,@JsonKey(name: 'PREDETERMINADA_SN') String? predeterminada,@JsonKey(name: 'TELEFONO') String? telefono,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteDireccionDTOCopyWithImpl<$Res>
    implements _$ClienteDireccionDTOCopyWith<$Res> {
  __$ClienteDireccionDTOCopyWithImpl(this._self, this._then);

  final _ClienteDireccionDTO _self;
  final $Res Function(_ClienteDireccionDTO) _then;

/// Create a copy of ClienteDireccionDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? latitud = null,Object? longitud = null,Object? predeterminada = freezed,Object? telefono = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteDireccionDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,latitud: null == latitud ? _self.latitud : latitud // ignore: cast_nullable_to_non_nullable
as double,longitud: null == longitud ? _self.longitud : longitud // ignore: cast_nullable_to_non_nullable
as double,predeterminada: freezed == predeterminada ? _self.predeterminada : predeterminada // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
