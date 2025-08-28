// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_adjunto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteAdjuntoDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'NOMBRE_ARCHIVO') String get nombreAdjunto;
/// Create a copy of ClienteAdjuntoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteAdjuntoDTOCopyWith<ClienteAdjuntoDTO> get copyWith => _$ClienteAdjuntoDTOCopyWithImpl<ClienteAdjuntoDTO>(this as ClienteAdjuntoDTO, _$identity);

  /// Serializes this ClienteAdjuntoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteAdjuntoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreAdjunto, nombreAdjunto) || other.nombreAdjunto == nombreAdjunto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreAdjunto);

@override
String toString() {
  return 'ClienteAdjuntoDTO(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
}


}

/// @nodoc
abstract mixin class $ClienteAdjuntoDTOCopyWith<$Res>  {
  factory $ClienteAdjuntoDTOCopyWith(ClienteAdjuntoDTO value, $Res Function(ClienteAdjuntoDTO) _then) = _$ClienteAdjuntoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'NOMBRE_ARCHIVO') String nombreAdjunto
});




}
/// @nodoc
class _$ClienteAdjuntoDTOCopyWithImpl<$Res>
    implements $ClienteAdjuntoDTOCopyWith<$Res> {
  _$ClienteAdjuntoDTOCopyWithImpl(this._self, this._then);

  final ClienteAdjuntoDTO _self;
  final $Res Function(ClienteAdjuntoDTO) _then;

/// Create a copy of ClienteAdjuntoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? nombreAdjunto = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreAdjunto: null == nombreAdjunto ? _self.nombreAdjunto : nombreAdjunto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteAdjuntoDTO].
extension ClienteAdjuntoDTOPatterns on ClienteAdjuntoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteAdjuntoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteAdjuntoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteAdjuntoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreAdjunto)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO() when $default != null:
return $default(_that.clienteId,_that.nombreAdjunto);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreAdjunto)  $default,) {final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO():
return $default(_that.clienteId,_that.nombreAdjunto);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'NOMBRE_ARCHIVO')  String nombreAdjunto)?  $default,) {final _that = this;
switch (_that) {
case _ClienteAdjuntoDTO() when $default != null:
return $default(_that.clienteId,_that.nombreAdjunto);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteAdjuntoDTO extends ClienteAdjuntoDTO {
  const _ClienteAdjuntoDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'NOMBRE_ARCHIVO') required this.nombreAdjunto}): super._();
  factory _ClienteAdjuntoDTO.fromJson(Map<String, dynamic> json) => _$ClienteAdjuntoDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'NOMBRE_ARCHIVO') final  String nombreAdjunto;

/// Create a copy of ClienteAdjuntoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteAdjuntoDTOCopyWith<_ClienteAdjuntoDTO> get copyWith => __$ClienteAdjuntoDTOCopyWithImpl<_ClienteAdjuntoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteAdjuntoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteAdjuntoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.nombreAdjunto, nombreAdjunto) || other.nombreAdjunto == nombreAdjunto));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,nombreAdjunto);

@override
String toString() {
  return 'ClienteAdjuntoDTO(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
}


}

/// @nodoc
abstract mixin class _$ClienteAdjuntoDTOCopyWith<$Res> implements $ClienteAdjuntoDTOCopyWith<$Res> {
  factory _$ClienteAdjuntoDTOCopyWith(_ClienteAdjuntoDTO value, $Res Function(_ClienteAdjuntoDTO) _then) = __$ClienteAdjuntoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'NOMBRE_ARCHIVO') String nombreAdjunto
});




}
/// @nodoc
class __$ClienteAdjuntoDTOCopyWithImpl<$Res>
    implements _$ClienteAdjuntoDTOCopyWith<$Res> {
  __$ClienteAdjuntoDTOCopyWithImpl(this._self, this._then);

  final _ClienteAdjuntoDTO _self;
  final $Res Function(_ClienteAdjuntoDTO) _then;

/// Create a copy of ClienteAdjuntoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? nombreAdjunto = null,}) {
  return _then(_ClienteAdjuntoDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,nombreAdjunto: null == nombreAdjunto ? _self.nombreAdjunto : nombreAdjunto // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
