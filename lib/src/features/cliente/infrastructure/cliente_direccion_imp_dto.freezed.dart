// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_imp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteDireccionImpDTO {

@JsonKey(name: 'GUID') String get id;@JsonKey(name: 'FECHA') DateTime get fecha;@JsonKey(name: 'USUARIO_ID') String get usuarioId;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'NOMBRE') String? get nombre;@JsonKey(name: 'DIRECCION1') String? get direccion1;@JsonKey(name: 'DIRECCION2') String? get direccion2;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PROVINCIA') String? get provincia;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'TELEFONO') String? get telefono;@JsonKey(name: 'ENVIADA', defaultValue: 'N') String get enviada;@JsonKey(name: 'BORRAR', defaultValue: 'N') String get borrar;
/// Create a copy of ClienteDireccionImpDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteDireccionImpDTOCopyWith<ClienteDireccionImpDTO> get copyWith => _$ClienteDireccionImpDTOCopyWithImpl<ClienteDireccionImpDTO>(this as ClienteDireccionImpDTO, _$identity);

  /// Serializes this ClienteDireccionImpDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteDireccionImpDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,telefono,enviada,borrar);

@override
String toString() {
  return 'ClienteDireccionImpDTO(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, telefono: $telefono, enviada: $enviada, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class $ClienteDireccionImpDTOCopyWith<$Res>  {
  factory $ClienteDireccionImpDTOCopyWith(ClienteDireccionImpDTO value, $Res Function(ClienteDireccionImpDTO) _then) = _$ClienteDireccionImpDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'GUID') String id,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'TELEFONO') String? telefono,@JsonKey(name: 'ENVIADA', defaultValue: 'N') String enviada,@JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar
});




}
/// @nodoc
class _$ClienteDireccionImpDTOCopyWithImpl<$Res>
    implements $ClienteDireccionImpDTOCopyWith<$Res> {
  _$ClienteDireccionImpDTOCopyWithImpl(this._self, this._then);

  final ClienteDireccionImpDTO _self;
  final $Res Function(ClienteDireccionImpDTO) _then;

/// Create a copy of ClienteDireccionImpDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? telefono = freezed,Object? enviada = null,Object? borrar = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteDireccionImpDTO].
extension ClienteDireccionImpDTOPatterns on ClienteDireccionImpDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteDireccionImpDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteDireccionImpDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteDireccionImpDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'GUID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'ENVIADA', defaultValue: 'N')  String enviada, @JsonKey(name: 'BORRAR', defaultValue: 'N')  String borrar)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.telefono,_that.enviada,_that.borrar);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'GUID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'ENVIADA', defaultValue: 'N')  String enviada, @JsonKey(name: 'BORRAR', defaultValue: 'N')  String borrar)  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO():
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.telefono,_that.enviada,_that.borrar);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'GUID')  String id, @JsonKey(name: 'FECHA')  DateTime fecha, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION1')  String? direccion1, @JsonKey(name: 'DIRECCION2')  String? direccion2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PROVINCIA')  String? provincia, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'TELEFONO')  String? telefono, @JsonKey(name: 'ENVIADA', defaultValue: 'N')  String enviada, @JsonKey(name: 'BORRAR', defaultValue: 'N')  String borrar)?  $default,) {final _that = this;
switch (_that) {
case _ClienteDireccionImpDTO() when $default != null:
return $default(_that.id,_that.fecha,_that.usuarioId,_that.clienteId,_that.direccionId,_that.nombre,_that.direccion1,_that.direccion2,_that.codigoPostal,_that.poblacion,_that.provincia,_that.paisId,_that.telefono,_that.enviada,_that.borrar);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteDireccionImpDTO extends ClienteDireccionImpDTO {
  const _ClienteDireccionImpDTO({@JsonKey(name: 'GUID') required this.id, @JsonKey(name: 'FECHA') required this.fecha, @JsonKey(name: 'USUARIO_ID') required this.usuarioId, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'DIRECCION_ID') required this.direccionId, @JsonKey(name: 'NOMBRE') this.nombre, @JsonKey(name: 'DIRECCION1') this.direccion1, @JsonKey(name: 'DIRECCION2') this.direccion2, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PROVINCIA') this.provincia, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'TELEFONO') this.telefono, @JsonKey(name: 'ENVIADA', defaultValue: 'N') required this.enviada, @JsonKey(name: 'BORRAR', defaultValue: 'N') required this.borrar}): super._();
  factory _ClienteDireccionImpDTO.fromJson(Map<String, dynamic> json) => _$ClienteDireccionImpDTOFromJson(json);

@override@JsonKey(name: 'GUID') final  String id;
@override@JsonKey(name: 'FECHA') final  DateTime fecha;
@override@JsonKey(name: 'USUARIO_ID') final  String usuarioId;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'NOMBRE') final  String? nombre;
@override@JsonKey(name: 'DIRECCION1') final  String? direccion1;
@override@JsonKey(name: 'DIRECCION2') final  String? direccion2;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PROVINCIA') final  String? provincia;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'TELEFONO') final  String? telefono;
@override@JsonKey(name: 'ENVIADA', defaultValue: 'N') final  String enviada;
@override@JsonKey(name: 'BORRAR', defaultValue: 'N') final  String borrar;

/// Create a copy of ClienteDireccionImpDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteDireccionImpDTOCopyWith<_ClienteDireccionImpDTO> get copyWith => __$ClienteDireccionImpDTOCopyWithImpl<_ClienteDireccionImpDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteDireccionImpDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteDireccionImpDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.fecha, fecha) || other.fecha == fecha)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccion1, direccion1) || other.direccion1 == direccion1)&&(identical(other.direccion2, direccion2) || other.direccion2 == direccion2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.provincia, provincia) || other.provincia == provincia)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.telefono, telefono) || other.telefono == telefono)&&(identical(other.enviada, enviada) || other.enviada == enviada)&&(identical(other.borrar, borrar) || other.borrar == borrar));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,fecha,usuarioId,clienteId,direccionId,nombre,direccion1,direccion2,codigoPostal,poblacion,provincia,paisId,telefono,enviada,borrar);

@override
String toString() {
  return 'ClienteDireccionImpDTO(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, paisId: $paisId, telefono: $telefono, enviada: $enviada, borrar: $borrar)';
}


}

/// @nodoc
abstract mixin class _$ClienteDireccionImpDTOCopyWith<$Res> implements $ClienteDireccionImpDTOCopyWith<$Res> {
  factory _$ClienteDireccionImpDTOCopyWith(_ClienteDireccionImpDTO value, $Res Function(_ClienteDireccionImpDTO) _then) = __$ClienteDireccionImpDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'GUID') String id,@JsonKey(name: 'FECHA') DateTime fecha,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION1') String? direccion1,@JsonKey(name: 'DIRECCION2') String? direccion2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PROVINCIA') String? provincia,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'TELEFONO') String? telefono,@JsonKey(name: 'ENVIADA', defaultValue: 'N') String enviada,@JsonKey(name: 'BORRAR', defaultValue: 'N') String borrar
});




}
/// @nodoc
class __$ClienteDireccionImpDTOCopyWithImpl<$Res>
    implements _$ClienteDireccionImpDTOCopyWith<$Res> {
  __$ClienteDireccionImpDTOCopyWithImpl(this._self, this._then);

  final _ClienteDireccionImpDTO _self;
  final $Res Function(_ClienteDireccionImpDTO) _then;

/// Create a copy of ClienteDireccionImpDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? fecha = null,Object? usuarioId = null,Object? clienteId = null,Object? direccionId = freezed,Object? nombre = freezed,Object? direccion1 = freezed,Object? direccion2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? provincia = freezed,Object? paisId = freezed,Object? telefono = freezed,Object? enviada = null,Object? borrar = null,}) {
  return _then(_ClienteDireccionImpDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,fecha: null == fecha ? _self.fecha : fecha // ignore: cast_nullable_to_non_nullable
as DateTime,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,direccionId: freezed == direccionId ? _self.direccionId : direccionId // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,direccion1: freezed == direccion1 ? _self.direccion1 : direccion1 // ignore: cast_nullable_to_non_nullable
as String?,direccion2: freezed == direccion2 ? _self.direccion2 : direccion2 // ignore: cast_nullable_to_non_nullable
as String?,codigoPostal: freezed == codigoPostal ? _self.codigoPostal : codigoPostal // ignore: cast_nullable_to_non_nullable
as String?,poblacion: freezed == poblacion ? _self.poblacion : poblacion // ignore: cast_nullable_to_non_nullable
as String?,provincia: freezed == provincia ? _self.provincia : provincia // ignore: cast_nullable_to_non_nullable
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,telefono: freezed == telefono ? _self.telefono : telefono // ignore: cast_nullable_to_non_nullable
as String?,enviada: null == enviada ? _self.enviada : enviada // ignore: cast_nullable_to_non_nullable
as String,borrar: null == borrar ? _self.borrar : borrar // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
