// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_contacto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteContactoDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'CONTACTO_ID') String? get contactoId;@JsonKey(name: 'OBSERVACIONES') String? get observaciones;@JsonKey(name: 'NOMBRE') String? get nombre;@JsonKey(name: 'APELLIDO1') String? get apellido1;@JsonKey(name: 'APELLIDO2') String? get apellido2;@JsonKey(name: 'TELEFONO1') String? get telefono1;@JsonKey(name: 'TELEFONO2') String? get telefono2;@JsonKey(name: 'EMAIL') String? get email;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteContactoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteContactoDTOCopyWith<ClienteContactoDTO> get copyWith => _$ClienteContactoDTOCopyWithImpl<ClienteContactoDTO>(this as ClienteContactoDTO, _$identity);

  /// Serializes this ClienteContactoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteContactoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,contactoId,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteContactoDTO(clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteContactoDTOCopyWith<$Res>  {
  factory $ClienteContactoDTOCopyWith(ClienteContactoDTO value, $Res Function(ClienteContactoDTO) _then) = _$ClienteContactoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'CONTACTO_ID') String? contactoId,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'APELLIDO1') String? apellido1,@JsonKey(name: 'APELLIDO2') String? apellido2,@JsonKey(name: 'TELEFONO1') String? telefono1,@JsonKey(name: 'TELEFONO2') String? telefono2,@JsonKey(name: 'EMAIL') String? email,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteContactoDTOCopyWithImpl<$Res>
    implements $ClienteContactoDTOCopyWith<$Res> {
  _$ClienteContactoDTOCopyWithImpl(this._self, this._then);

  final ClienteContactoDTO _self;
  final $Res Function(ClienteContactoDTO) _then;

/// Create a copy of ClienteContactoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? contactoId = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteContactoDTO].
extension ClienteContactoDTOPatterns on ClienteContactoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteContactoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteContactoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteContactoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteContactoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteContactoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'CONTACTO_ID')  String? contactoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'APELLIDO1')  String? apellido1, @JsonKey(name: 'APELLIDO2')  String? apellido2, @JsonKey(name: 'TELEFONO1')  String? telefono1, @JsonKey(name: 'TELEFONO2')  String? telefono2, @JsonKey(name: 'EMAIL')  String? email, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteContactoDTO() when $default != null:
return $default(_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'CONTACTO_ID')  String? contactoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'APELLIDO1')  String? apellido1, @JsonKey(name: 'APELLIDO2')  String? apellido2, @JsonKey(name: 'TELEFONO1')  String? telefono1, @JsonKey(name: 'TELEFONO2')  String? telefono2, @JsonKey(name: 'EMAIL')  String? email, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoDTO():
return $default(_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'CONTACTO_ID')  String? contactoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'NOMBRE')  String? nombre, @JsonKey(name: 'APELLIDO1')  String? apellido1, @JsonKey(name: 'APELLIDO2')  String? apellido2, @JsonKey(name: 'TELEFONO1')  String? telefono1, @JsonKey(name: 'TELEFONO2')  String? telefono2, @JsonKey(name: 'EMAIL')  String? email, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteContactoDTO() when $default != null:
return $default(_that.clienteId,_that.contactoId,_that.observaciones,_that.nombre,_that.apellido1,_that.apellido2,_that.telefono1,_that.telefono2,_that.email,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteContactoDTO extends ClienteContactoDTO {
  const _ClienteContactoDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'CONTACTO_ID') required this.contactoId, @JsonKey(name: 'OBSERVACIONES') this.observaciones, @JsonKey(name: 'NOMBRE') this.nombre, @JsonKey(name: 'APELLIDO1') this.apellido1, @JsonKey(name: 'APELLIDO2') this.apellido2, @JsonKey(name: 'TELEFONO1') this.telefono1, @JsonKey(name: 'TELEFONO2') this.telefono2, @JsonKey(name: 'EMAIL') this.email, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteContactoDTO.fromJson(Map<String, dynamic> json) => _$ClienteContactoDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'CONTACTO_ID') final  String? contactoId;
@override@JsonKey(name: 'OBSERVACIONES') final  String? observaciones;
@override@JsonKey(name: 'NOMBRE') final  String? nombre;
@override@JsonKey(name: 'APELLIDO1') final  String? apellido1;
@override@JsonKey(name: 'APELLIDO2') final  String? apellido2;
@override@JsonKey(name: 'TELEFONO1') final  String? telefono1;
@override@JsonKey(name: 'TELEFONO2') final  String? telefono2;
@override@JsonKey(name: 'EMAIL') final  String? email;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteContactoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteContactoDTOCopyWith<_ClienteContactoDTO> get copyWith => __$ClienteContactoDTOCopyWithImpl<_ClienteContactoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteContactoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteContactoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.contactoId, contactoId) || other.contactoId == contactoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.nombre, nombre) || other.nombre == nombre)&&(identical(other.apellido1, apellido1) || other.apellido1 == apellido1)&&(identical(other.apellido2, apellido2) || other.apellido2 == apellido2)&&(identical(other.telefono1, telefono1) || other.telefono1 == telefono1)&&(identical(other.telefono2, telefono2) || other.telefono2 == telefono2)&&(identical(other.email, email) || other.email == email)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,contactoId,observaciones,nombre,apellido1,apellido2,telefono1,telefono2,email,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteContactoDTO(clienteId: $clienteId, contactoId: $contactoId, observaciones: $observaciones, nombre: $nombre, apellido1: $apellido1, apellido2: $apellido2, telefono1: $telefono1, telefono2: $telefono2, email: $email, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteContactoDTOCopyWith<$Res> implements $ClienteContactoDTOCopyWith<$Res> {
  factory _$ClienteContactoDTOCopyWith(_ClienteContactoDTO value, $Res Function(_ClienteContactoDTO) _then) = __$ClienteContactoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'CONTACTO_ID') String? contactoId,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'NOMBRE') String? nombre,@JsonKey(name: 'APELLIDO1') String? apellido1,@JsonKey(name: 'APELLIDO2') String? apellido2,@JsonKey(name: 'TELEFONO1') String? telefono1,@JsonKey(name: 'TELEFONO2') String? telefono2,@JsonKey(name: 'EMAIL') String? email,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteContactoDTOCopyWithImpl<$Res>
    implements _$ClienteContactoDTOCopyWith<$Res> {
  __$ClienteContactoDTOCopyWithImpl(this._self, this._then);

  final _ClienteContactoDTO _self;
  final $Res Function(_ClienteContactoDTO) _then;

/// Create a copy of ClienteContactoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? contactoId = freezed,Object? observaciones = freezed,Object? nombre = freezed,Object? apellido1 = freezed,Object? apellido2 = freezed,Object? telefono1 = freezed,Object? telefono2 = freezed,Object? email = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteContactoDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,contactoId: freezed == contactoId ? _self.contactoId : contactoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,nombre: freezed == nombre ? _self.nombre : nombre // ignore: cast_nullable_to_non_nullable
as String?,apellido1: freezed == apellido1 ? _self.apellido1 : apellido1 // ignore: cast_nullable_to_non_nullable
as String?,apellido2: freezed == apellido2 ? _self.apellido2 : apellido2 // ignore: cast_nullable_to_non_nullable
as String?,telefono1: freezed == telefono1 ? _self.telefono1 : telefono1 // ignore: cast_nullable_to_non_nullable
as String?,telefono2: freezed == telefono2 ? _self.telefono2 : telefono2 // ignore: cast_nullable_to_non_nullable
as String?,email: freezed == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
