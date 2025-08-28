// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DevolucionDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'DEVOLUCION_ID') String get id;@JsonKey(name: 'FECHA_DEVOLUCION') DateTime get fechaDevolucion;@JsonKey(name: 'CLIENTE_ID') String? get clienteId;@JsonKey(name: 'DIRECCION_ID') String? get direccionId;@JsonKey(name: 'NOMBRE') String? get nombre;@JsonKey(name: 'DIRECCION_RECOGIDA1') String? get direccionRecogida1;@JsonKey(name: 'DIRECCION_RECOGIDA2') String? get direccionRecogida2;@JsonKey(name: 'CODIGO_POSTAL') String? get codigoPostal;@JsonKey(name: 'POBLACION') String? get poblacion;@JsonKey(name: 'PAIS_ID') String? get paisId;@JsonKey(name: 'ALMACEN_DESTINO') String? get almacenDestino;@JsonKey(name: 'AGENCIA_TRANSPORTE') String? get agenciaTransporte;@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String get devolucionEstadoId;@JsonKey(name: 'KILOS_DEVOLUCION') double get kilosDevolucion;@JsonKey(name: 'BULTOS') double get bultos;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of DevolucionDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevolucionDTOCopyWith<DevolucionDTO> get copyWith => _$DevolucionDTOCopyWithImpl<DevolucionDTO>(this as DevolucionDTO, _$identity);

  /// Serializes this DevolucionDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevolucionDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.id, id) || other.id == id)&&(identical(other.fechaDevolucion, fechaDevolucion) || other.fechaDevolucion == fechaDevolucion)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccionRecogida1, direccionRecogida1) || other.direccionRecogida1 == direccionRecogida1)&&(identical(other.direccionRecogida2, direccionRecogida2) || other.direccionRecogida2 == direccionRecogida2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.almacenDestino, almacenDestino) || other.almacenDestino == almacenDestino)&&(identical(other.agenciaTransporte, agenciaTransporte) || other.agenciaTransporte == agenciaTransporte)&&(identical(other.devolucionEstadoId, devolucionEstadoId) || other.devolucionEstadoId == devolucionEstadoId)&&(identical(other.kilosDevolucion, kilosDevolucion) || other.kilosDevolucion == kilosDevolucion)&&(identical(other.bultos, bultos) || other.bultos == bultos)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,id,fechaDevolucion,clienteId,direccionId,nombre,direccionRecogida1,direccionRecogida2,codigoPostal,poblacion,paisId,almacenDestino,agenciaTransporte,devolucionEstadoId,kilosDevolucion,bultos,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionDTO(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, paisId: $paisId, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstadoId: $devolucionEstadoId, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DevolucionDTOCopyWith<$Res>  {
  factory $DevolucionDTOCopyWith(DevolucionDTO value, $Res Function(DevolucionDTO) _then) = _$DevolucionDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'DEVOLUCION_ID') String id,@JsonKey(name: 'FECHA_DEVOLUCION') DateTime fechaDevolucion,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION_RECOGIDA1') String? direccionRecogida1,@JsonKey(name: 'DIRECCION_RECOGIDA2') String? direccionRecogida2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'ALMACEN_DESTINO') String? almacenDestino,@JsonKey(name: 'AGENCIA_TRANSPORTE') String? agenciaTransporte,@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String devolucionEstadoId,@JsonKey(name: 'KILOS_DEVOLUCION') double kilosDevolucion,@JsonKey(name: 'BULTOS') double bultos,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$DevolucionDTOCopyWithImpl<$Res>
    implements $DevolucionDTOCopyWith<$Res> {
  _$DevolucionDTOCopyWithImpl(this._self, this._then);

  final DevolucionDTO _self;
  final $Res Function(DevolucionDTO) _then;

/// Create a copy of DevolucionDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? id = null,Object? fechaDevolucion = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombre = freezed,Object? direccionRecogida1 = freezed,Object? direccionRecogida2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? paisId = freezed,Object? almacenDestino = freezed,Object? agenciaTransporte = freezed,Object? devolucionEstadoId = null,Object? kilosDevolucion = null,Object? bultos = null,Object? lastUpdated = null,Object? deleted = null,}) {
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
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,almacenDestino: freezed == almacenDestino ? _self.almacenDestino : almacenDestino // ignore: cast_nullable_to_non_nullable
as String?,agenciaTransporte: freezed == agenciaTransporte ? _self.agenciaTransporte : agenciaTransporte // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstadoId: null == devolucionEstadoId ? _self.devolucionEstadoId : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
as String,kilosDevolucion: null == kilosDevolucion ? _self.kilosDevolucion : kilosDevolucion // ignore: cast_nullable_to_non_nullable
as double,bultos: null == bultos ? _self.bultos : bultos // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DevolucionDTO].
extension DevolucionDTOPatterns on DevolucionDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevolucionDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevolucionDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevolucionDTO value)  $default,){
final _that = this;
switch (_that) {
case _DevolucionDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevolucionDTO value)?  $default,){
final _that = this;
switch (_that) {
case _DevolucionDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String id, @JsonKey(name: 'FECHA_DEVOLUCION')  DateTime fechaDevolucion, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION_RECOGIDA1')  String? direccionRecogida1, @JsonKey(name: 'DIRECCION_RECOGIDA2')  String? direccionRecogida2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'ALMACEN_DESTINO')  String? almacenDestino, @JsonKey(name: 'AGENCIA_TRANSPORTE')  String? agenciaTransporte, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String devolucionEstadoId, @JsonKey(name: 'KILOS_DEVOLUCION')  double kilosDevolucion, @JsonKey(name: 'BULTOS')  double bultos, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevolucionDTO() when $default != null:
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.paisId,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstadoId,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String id, @JsonKey(name: 'FECHA_DEVOLUCION')  DateTime fechaDevolucion, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION_RECOGIDA1')  String? direccionRecogida1, @JsonKey(name: 'DIRECCION_RECOGIDA2')  String? direccionRecogida2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'ALMACEN_DESTINO')  String? almacenDestino, @JsonKey(name: 'AGENCIA_TRANSPORTE')  String? agenciaTransporte, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String devolucionEstadoId, @JsonKey(name: 'KILOS_DEVOLUCION')  double kilosDevolucion, @JsonKey(name: 'BULTOS')  double bultos, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _DevolucionDTO():
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.paisId,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstadoId,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String id, @JsonKey(name: 'FECHA_DEVOLUCION')  DateTime fechaDevolucion, @JsonKey(name: 'CLIENTE_ID')  String? clienteId, @JsonKey(name: 'DIRECCION_ID')  String? direccionId, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'DIRECCION_RECOGIDA1')  String? direccionRecogida1, @JsonKey(name: 'DIRECCION_RECOGIDA2')  String? direccionRecogida2, @JsonKey(name: 'CODIGO_POSTAL')  String? codigoPostal, @JsonKey(name: 'POBLACION')  String? poblacion, @JsonKey(name: 'PAIS_ID')  String? paisId, @JsonKey(name: 'ALMACEN_DESTINO')  String? almacenDestino, @JsonKey(name: 'AGENCIA_TRANSPORTE')  String? agenciaTransporte, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String devolucionEstadoId, @JsonKey(name: 'KILOS_DEVOLUCION')  double kilosDevolucion, @JsonKey(name: 'BULTOS')  double bultos, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _DevolucionDTO() when $default != null:
return $default(_that.empresaId,_that.id,_that.fechaDevolucion,_that.clienteId,_that.direccionId,_that.nombre,_that.direccionRecogida1,_that.direccionRecogida2,_that.codigoPostal,_that.poblacion,_that.paisId,_that.almacenDestino,_that.agenciaTransporte,_that.devolucionEstadoId,_that.kilosDevolucion,_that.bultos,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DevolucionDTO extends DevolucionDTO {
  const _DevolucionDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'DEVOLUCION_ID') required this.id, @JsonKey(name: 'FECHA_DEVOLUCION') required this.fechaDevolucion, @JsonKey(name: 'CLIENTE_ID') this.clienteId, @JsonKey(name: 'DIRECCION_ID') this.direccionId, @JsonKey(name: 'NOMBRE') this.nombre, @JsonKey(name: 'DIRECCION_RECOGIDA1') this.direccionRecogida1, @JsonKey(name: 'DIRECCION_RECOGIDA2') this.direccionRecogida2, @JsonKey(name: 'CODIGO_POSTAL') this.codigoPostal, @JsonKey(name: 'POBLACION') this.poblacion, @JsonKey(name: 'PAIS_ID') this.paisId, @JsonKey(name: 'ALMACEN_DESTINO') this.almacenDestino, @JsonKey(name: 'AGENCIA_TRANSPORTE') this.agenciaTransporte, @JsonKey(name: 'DEVOLUCION_ESTADO_ID') required this.devolucionEstadoId, @JsonKey(name: 'KILOS_DEVOLUCION') required this.kilosDevolucion, @JsonKey(name: 'BULTOS') required this.bultos, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _DevolucionDTO.fromJson(Map<String, dynamic> json) => _$DevolucionDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'DEVOLUCION_ID') final  String id;
@override@JsonKey(name: 'FECHA_DEVOLUCION') final  DateTime fechaDevolucion;
@override@JsonKey(name: 'CLIENTE_ID') final  String? clienteId;
@override@JsonKey(name: 'DIRECCION_ID') final  String? direccionId;
@override@JsonKey(name: 'NOMBRE') final  String? nombre;
@override@JsonKey(name: 'DIRECCION_RECOGIDA1') final  String? direccionRecogida1;
@override@JsonKey(name: 'DIRECCION_RECOGIDA2') final  String? direccionRecogida2;
@override@JsonKey(name: 'CODIGO_POSTAL') final  String? codigoPostal;
@override@JsonKey(name: 'POBLACION') final  String? poblacion;
@override@JsonKey(name: 'PAIS_ID') final  String? paisId;
@override@JsonKey(name: 'ALMACEN_DESTINO') final  String? almacenDestino;
@override@JsonKey(name: 'AGENCIA_TRANSPORTE') final  String? agenciaTransporte;
@override@JsonKey(name: 'DEVOLUCION_ESTADO_ID') final  String devolucionEstadoId;
@override@JsonKey(name: 'KILOS_DEVOLUCION') final  double kilosDevolucion;
@override@JsonKey(name: 'BULTOS') final  double bultos;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of DevolucionDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevolucionDTOCopyWith<_DevolucionDTO> get copyWith => __$DevolucionDTOCopyWithImpl<_DevolucionDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DevolucionDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevolucionDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.id, id) || other.id == id)&&(identical(other.fechaDevolucion, fechaDevolucion) || other.fechaDevolucion == fechaDevolucion)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.direccionId, direccionId) || other.direccionId == direccionId)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.direccionRecogida1, direccionRecogida1) || other.direccionRecogida1 == direccionRecogida1)&&(identical(other.direccionRecogida2, direccionRecogida2) || other.direccionRecogida2 == direccionRecogida2)&&(identical(other.codigoPostal, codigoPostal) || other.codigoPostal == codigoPostal)&&(identical(other.poblacion, poblacion) || other.poblacion == poblacion)&&(identical(other.paisId, paisId) || other.paisId == paisId)&&(identical(other.almacenDestino, almacenDestino) || other.almacenDestino == almacenDestino)&&(identical(other.agenciaTransporte, agenciaTransporte) || other.agenciaTransporte == agenciaTransporte)&&(identical(other.devolucionEstadoId, devolucionEstadoId) || other.devolucionEstadoId == devolucionEstadoId)&&(identical(other.kilosDevolucion, kilosDevolucion) || other.kilosDevolucion == kilosDevolucion)&&(identical(other.bultos, bultos) || other.bultos == bultos)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,id,fechaDevolucion,clienteId,direccionId,nombre,direccionRecogida1,direccionRecogida2,codigoPostal,poblacion,paisId,almacenDestino,agenciaTransporte,devolucionEstadoId,kilosDevolucion,bultos,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionDTO(empresaId: $empresaId, id: $id, fechaDevolucion: $fechaDevolucion, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccionRecogida1: $direccionRecogida1, direccionRecogida2: $direccionRecogida2, codigoPostal: $codigoPostal, poblacion: $poblacion, paisId: $paisId, almacenDestino: $almacenDestino, agenciaTransporte: $agenciaTransporte, devolucionEstadoId: $devolucionEstadoId, kilosDevolucion: $kilosDevolucion, bultos: $bultos, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DevolucionDTOCopyWith<$Res> implements $DevolucionDTOCopyWith<$Res> {
  factory _$DevolucionDTOCopyWith(_DevolucionDTO value, $Res Function(_DevolucionDTO) _then) = __$DevolucionDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'DEVOLUCION_ID') String id,@JsonKey(name: 'FECHA_DEVOLUCION') DateTime fechaDevolucion,@JsonKey(name: 'CLIENTE_ID') String? clienteId,@JsonKey(name: 'DIRECCION_ID') String? direccionId,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'DIRECCION_RECOGIDA1') String? direccionRecogida1,@JsonKey(name: 'DIRECCION_RECOGIDA2') String? direccionRecogida2,@JsonKey(name: 'CODIGO_POSTAL') String? codigoPostal,@JsonKey(name: 'POBLACION') String? poblacion,@JsonKey(name: 'PAIS_ID') String? paisId,@JsonKey(name: 'ALMACEN_DESTINO') String? almacenDestino,@JsonKey(name: 'AGENCIA_TRANSPORTE') String? agenciaTransporte,@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String devolucionEstadoId,@JsonKey(name: 'KILOS_DEVOLUCION') double kilosDevolucion,@JsonKey(name: 'BULTOS') double bultos,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$DevolucionDTOCopyWithImpl<$Res>
    implements _$DevolucionDTOCopyWith<$Res> {
  __$DevolucionDTOCopyWithImpl(this._self, this._then);

  final _DevolucionDTO _self;
  final $Res Function(_DevolucionDTO) _then;

/// Create a copy of DevolucionDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? id = null,Object? fechaDevolucion = null,Object? clienteId = freezed,Object? direccionId = freezed,Object? nombre = freezed,Object? direccionRecogida1 = freezed,Object? direccionRecogida2 = freezed,Object? codigoPostal = freezed,Object? poblacion = freezed,Object? paisId = freezed,Object? almacenDestino = freezed,Object? agenciaTransporte = freezed,Object? devolucionEstadoId = null,Object? kilosDevolucion = null,Object? bultos = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DevolucionDTO(
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
as String?,paisId: freezed == paisId ? _self.paisId : paisId // ignore: cast_nullable_to_non_nullable
as String?,almacenDestino: freezed == almacenDestino ? _self.almacenDestino : almacenDestino // ignore: cast_nullable_to_non_nullable
as String?,agenciaTransporte: freezed == agenciaTransporte ? _self.agenciaTransporte : agenciaTransporte // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstadoId: null == devolucionEstadoId ? _self.devolucionEstadoId : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
as String,kilosDevolucion: null == kilosDevolucion ? _self.kilosDevolucion : kilosDevolucion // ignore: cast_nullable_to_non_nullable
as double,bultos: null == bultos ? _self.bultos : bultos // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
