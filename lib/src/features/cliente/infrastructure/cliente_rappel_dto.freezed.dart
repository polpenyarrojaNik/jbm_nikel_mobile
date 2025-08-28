// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_rappel_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteRappelDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'RAPPEL_ID') String get rappelId;@JsonKey(name: 'DESCRIPCION') String get descripcion;@JsonKey(name: 'FECHA_DESDE') DateTime get fechaDesDe;@JsonKey(name: 'FECHA_HASTA') DateTime? get fechaHasta;@JsonKey(name: 'NOMBRE_ARCHIVO') String? get nombreArchivo;@JsonKey(name: 'FIRMADO') String? get firmado;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteRappelDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteRappelDTOCopyWith<ClienteRappelDTO> get copyWith => _$ClienteRappelDTOCopyWithImpl<ClienteRappelDTO>(this as ClienteRappelDTO, _$identity);

  /// Serializes this ClienteRappelDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteRappelDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.rappelId, rappelId) || other.rappelId == rappelId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.fechaDesDe, fechaDesDe) || other.fechaDesDe == fechaDesDe)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.firmado, firmado) || other.firmado == firmado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,rappelId,descripcion,fechaDesDe,fechaHasta,nombreArchivo,firmado,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteRappelDTO(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, nombreArchivo: $nombreArchivo, firmado: $firmado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteRappelDTOCopyWith<$Res>  {
  factory $ClienteRappelDTOCopyWith(ClienteRappelDTO value, $Res Function(ClienteRappelDTO) _then) = _$ClienteRappelDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'RAPPEL_ID') String rappelId,@JsonKey(name: 'DESCRIPCION') String descripcion,@JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,@JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,@JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,@JsonKey(name: 'FIRMADO') String? firmado,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteRappelDTOCopyWithImpl<$Res>
    implements $ClienteRappelDTOCopyWith<$Res> {
  _$ClienteRappelDTOCopyWithImpl(this._self, this._then);

  final ClienteRappelDTO _self;
  final $Res Function(ClienteRappelDTO) _then;

/// Create a copy of ClienteRappelDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? rappelId = null,Object? descripcion = null,Object? fechaDesDe = null,Object? fechaHasta = freezed,Object? nombreArchivo = freezed,Object? firmado = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,rappelId: null == rappelId ? _self.rappelId : rappelId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,fechaDesDe: null == fechaDesDe ? _self.fechaDesDe : fechaDesDe // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,firmado: freezed == firmado ? _self.firmado : firmado // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteRappelDTO].
extension ClienteRappelDTOPatterns on ClienteRappelDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteRappelDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteRappelDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteRappelDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteRappelDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteRappelDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteRappelDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'RAPPEL_ID')  String rappelId, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesDe, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'FIRMADO')  String? firmado, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteRappelDTO() when $default != null:
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'RAPPEL_ID')  String rappelId, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesDe, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'FIRMADO')  String? firmado, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteRappelDTO():
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'RAPPEL_ID')  String rappelId, @JsonKey(name: 'DESCRIPCION')  String descripcion, @JsonKey(name: 'FECHA_DESDE')  DateTime fechaDesDe, @JsonKey(name: 'FECHA_HASTA')  DateTime? fechaHasta, @JsonKey(name: 'NOMBRE_ARCHIVO')  String? nombreArchivo, @JsonKey(name: 'FIRMADO')  String? firmado, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteRappelDTO() when $default != null:
return $default(_that.clienteId,_that.rappelId,_that.descripcion,_that.fechaDesDe,_that.fechaHasta,_that.nombreArchivo,_that.firmado,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteRappelDTO extends ClienteRappelDTO {
  const _ClienteRappelDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'RAPPEL_ID') required this.rappelId, @JsonKey(name: 'DESCRIPCION') required this.descripcion, @JsonKey(name: 'FECHA_DESDE') required this.fechaDesDe, @JsonKey(name: 'FECHA_HASTA') required this.fechaHasta, @JsonKey(name: 'NOMBRE_ARCHIVO') this.nombreArchivo, @JsonKey(name: 'FIRMADO') this.firmado, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteRappelDTO.fromJson(Map<String, dynamic> json) => _$ClienteRappelDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'RAPPEL_ID') final  String rappelId;
@override@JsonKey(name: 'DESCRIPCION') final  String descripcion;
@override@JsonKey(name: 'FECHA_DESDE') final  DateTime fechaDesDe;
@override@JsonKey(name: 'FECHA_HASTA') final  DateTime? fechaHasta;
@override@JsonKey(name: 'NOMBRE_ARCHIVO') final  String? nombreArchivo;
@override@JsonKey(name: 'FIRMADO') final  String? firmado;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteRappelDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteRappelDTOCopyWith<_ClienteRappelDTO> get copyWith => __$ClienteRappelDTOCopyWithImpl<_ClienteRappelDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteRappelDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteRappelDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.rappelId, rappelId) || other.rappelId == rappelId)&&(identical(other.descripcion, descripcion) || other.descripcion == descripcion)&&(identical(other.fechaDesDe, fechaDesDe) || other.fechaDesDe == fechaDesDe)&&(identical(other.fechaHasta, fechaHasta) || other.fechaHasta == fechaHasta)&&(identical(other.nombreArchivo, nombreArchivo) || other.nombreArchivo == nombreArchivo)&&(identical(other.firmado, firmado) || other.firmado == firmado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,rappelId,descripcion,fechaDesDe,fechaHasta,nombreArchivo,firmado,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteRappelDTO(clienteId: $clienteId, rappelId: $rappelId, descripcion: $descripcion, fechaDesDe: $fechaDesDe, fechaHasta: $fechaHasta, nombreArchivo: $nombreArchivo, firmado: $firmado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteRappelDTOCopyWith<$Res> implements $ClienteRappelDTOCopyWith<$Res> {
  factory _$ClienteRappelDTOCopyWith(_ClienteRappelDTO value, $Res Function(_ClienteRappelDTO) _then) = __$ClienteRappelDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'RAPPEL_ID') String rappelId,@JsonKey(name: 'DESCRIPCION') String descripcion,@JsonKey(name: 'FECHA_DESDE') DateTime fechaDesDe,@JsonKey(name: 'FECHA_HASTA') DateTime? fechaHasta,@JsonKey(name: 'NOMBRE_ARCHIVO') String? nombreArchivo,@JsonKey(name: 'FIRMADO') String? firmado,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteRappelDTOCopyWithImpl<$Res>
    implements _$ClienteRappelDTOCopyWith<$Res> {
  __$ClienteRappelDTOCopyWithImpl(this._self, this._then);

  final _ClienteRappelDTO _self;
  final $Res Function(_ClienteRappelDTO) _then;

/// Create a copy of ClienteRappelDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? rappelId = null,Object? descripcion = null,Object? fechaDesDe = null,Object? fechaHasta = freezed,Object? nombreArchivo = freezed,Object? firmado = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteRappelDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,rappelId: null == rappelId ? _self.rappelId : rappelId // ignore: cast_nullable_to_non_nullable
as String,descripcion: null == descripcion ? _self.descripcion : descripcion // ignore: cast_nullable_to_non_nullable
as String,fechaDesDe: null == fechaDesDe ? _self.fechaDesDe : fechaDesDe // ignore: cast_nullable_to_non_nullable
as DateTime,fechaHasta: freezed == fechaHasta ? _self.fechaHasta : fechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,nombreArchivo: freezed == nombreArchivo ? _self.nombreArchivo : nombreArchivo // ignore: cast_nullable_to_non_nullable
as String?,firmado: freezed == firmado ? _self.firmado : firmado // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
