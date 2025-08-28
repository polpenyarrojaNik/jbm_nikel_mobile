// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteUsuarioDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'USUARIO_ID') String get usuarioId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteUsuarioDTOCopyWith<ClienteUsuarioDTO> get copyWith => _$ClienteUsuarioDTOCopyWithImpl<ClienteUsuarioDTO>(this as ClienteUsuarioDTO, _$identity);

  /// Serializes this ClienteUsuarioDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteUsuarioDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,usuarioId,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteUsuarioDTO(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteUsuarioDTOCopyWith<$Res>  {
  factory $ClienteUsuarioDTOCopyWith(ClienteUsuarioDTO value, $Res Function(ClienteUsuarioDTO) _then) = _$ClienteUsuarioDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteUsuarioDTOCopyWithImpl<$Res>
    implements $ClienteUsuarioDTOCopyWith<$Res> {
  _$ClienteUsuarioDTOCopyWithImpl(this._self, this._then);

  final ClienteUsuarioDTO _self;
  final $Res Function(ClienteUsuarioDTO) _then;

/// Create a copy of ClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? usuarioId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteUsuarioDTO].
extension ClienteUsuarioDTOPatterns on ClienteUsuarioDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteUsuarioDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteUsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteUsuarioDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteUsuarioDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteUsuarioDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteUsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteUsuarioDTO() when $default != null:
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteUsuarioDTO():
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteUsuarioDTO() when $default != null:
return $default(_that.clienteId,_that.usuarioId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteUsuarioDTO extends ClienteUsuarioDTO {
  const _ClienteUsuarioDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'USUARIO_ID') required this.usuarioId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteUsuarioDTO.fromJson(Map<String, dynamic> json) => _$ClienteUsuarioDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'USUARIO_ID') final  String usuarioId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteUsuarioDTOCopyWith<_ClienteUsuarioDTO> get copyWith => __$ClienteUsuarioDTOCopyWithImpl<_ClienteUsuarioDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteUsuarioDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteUsuarioDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,usuarioId,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteUsuarioDTO(clienteId: $clienteId, usuarioId: $usuarioId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteUsuarioDTOCopyWith<$Res> implements $ClienteUsuarioDTOCopyWith<$Res> {
  factory _$ClienteUsuarioDTOCopyWith(_ClienteUsuarioDTO value, $Res Function(_ClienteUsuarioDTO) _then) = __$ClienteUsuarioDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteUsuarioDTOCopyWithImpl<$Res>
    implements _$ClienteUsuarioDTOCopyWith<$Res> {
  __$ClienteUsuarioDTOCopyWithImpl(this._self, this._then);

  final _ClienteUsuarioDTO _self;
  final $Res Function(_ClienteUsuarioDTO) _then;

/// Create a copy of ClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? usuarioId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteUsuarioDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
