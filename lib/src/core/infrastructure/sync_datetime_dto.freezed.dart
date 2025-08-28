// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sync_datetime_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$SyncDateTimeDTO {

@JsonKey(name: 'ID') int get id;@JsonKey(name: 'DB_SCHEMA_VERSION') int get dbSchemaVersion;@JsonKey(name: 'ARTICULO_ULTIMA_SYNC') DateTime get articuloUltimaSync;@JsonKey(name: 'CLIENTE_ULTIMA_SYNC') DateTime get clienteUltimaSync;@JsonKey(name: 'PEDIDO_ULTIMA_SYNC') DateTime get pedidoUltimaSync;@JsonKey(name: 'VISITA_ULTIMA_SYNC') DateTime get visitaUltimaSync;
/// Create a copy of SyncDateTimeDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncDateTimeDTOCopyWith<SyncDateTimeDTO> get copyWith => _$SyncDateTimeDTOCopyWithImpl<SyncDateTimeDTO>(this as SyncDateTimeDTO, _$identity);

  /// Serializes this SyncDateTimeDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncDateTimeDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.dbSchemaVersion, dbSchemaVersion) || other.dbSchemaVersion == dbSchemaVersion)&&(identical(other.articuloUltimaSync, articuloUltimaSync) || other.articuloUltimaSync == articuloUltimaSync)&&(identical(other.clienteUltimaSync, clienteUltimaSync) || other.clienteUltimaSync == clienteUltimaSync)&&(identical(other.pedidoUltimaSync, pedidoUltimaSync) || other.pedidoUltimaSync == pedidoUltimaSync)&&(identical(other.visitaUltimaSync, visitaUltimaSync) || other.visitaUltimaSync == visitaUltimaSync));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dbSchemaVersion,articuloUltimaSync,clienteUltimaSync,pedidoUltimaSync,visitaUltimaSync);

@override
String toString() {
  return 'SyncDateTimeDTO(id: $id, dbSchemaVersion: $dbSchemaVersion, articuloUltimaSync: $articuloUltimaSync, clienteUltimaSync: $clienteUltimaSync, pedidoUltimaSync: $pedidoUltimaSync, visitaUltimaSync: $visitaUltimaSync)';
}


}

/// @nodoc
abstract mixin class $SyncDateTimeDTOCopyWith<$Res>  {
  factory $SyncDateTimeDTOCopyWith(SyncDateTimeDTO value, $Res Function(SyncDateTimeDTO) _then) = _$SyncDateTimeDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ID') int id,@JsonKey(name: 'DB_SCHEMA_VERSION') int dbSchemaVersion,@JsonKey(name: 'ARTICULO_ULTIMA_SYNC') DateTime articuloUltimaSync,@JsonKey(name: 'CLIENTE_ULTIMA_SYNC') DateTime clienteUltimaSync,@JsonKey(name: 'PEDIDO_ULTIMA_SYNC') DateTime pedidoUltimaSync,@JsonKey(name: 'VISITA_ULTIMA_SYNC') DateTime visitaUltimaSync
});




}
/// @nodoc
class _$SyncDateTimeDTOCopyWithImpl<$Res>
    implements $SyncDateTimeDTOCopyWith<$Res> {
  _$SyncDateTimeDTOCopyWithImpl(this._self, this._then);

  final SyncDateTimeDTO _self;
  final $Res Function(SyncDateTimeDTO) _then;

/// Create a copy of SyncDateTimeDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? dbSchemaVersion = null,Object? articuloUltimaSync = null,Object? clienteUltimaSync = null,Object? pedidoUltimaSync = null,Object? visitaUltimaSync = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dbSchemaVersion: null == dbSchemaVersion ? _self.dbSchemaVersion : dbSchemaVersion // ignore: cast_nullable_to_non_nullable
as int,articuloUltimaSync: null == articuloUltimaSync ? _self.articuloUltimaSync : articuloUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,clienteUltimaSync: null == clienteUltimaSync ? _self.clienteUltimaSync : clienteUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,pedidoUltimaSync: null == pedidoUltimaSync ? _self.pedidoUltimaSync : pedidoUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,visitaUltimaSync: null == visitaUltimaSync ? _self.visitaUltimaSync : visitaUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}

}


/// Adds pattern-matching-related methods to [SyncDateTimeDTO].
extension SyncDateTimeDTOPatterns on SyncDateTimeDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SyncDateTimeDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SyncDateTimeDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SyncDateTimeDTO value)  $default,){
final _that = this;
switch (_that) {
case _SyncDateTimeDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SyncDateTimeDTO value)?  $default,){
final _that = this;
switch (_that) {
case _SyncDateTimeDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'DB_SCHEMA_VERSION')  int dbSchemaVersion, @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')  DateTime articuloUltimaSync, @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')  DateTime clienteUltimaSync, @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')  DateTime pedidoUltimaSync, @JsonKey(name: 'VISITA_ULTIMA_SYNC')  DateTime visitaUltimaSync)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SyncDateTimeDTO() when $default != null:
return $default(_that.id,_that.dbSchemaVersion,_that.articuloUltimaSync,_that.clienteUltimaSync,_that.pedidoUltimaSync,_that.visitaUltimaSync);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'DB_SCHEMA_VERSION')  int dbSchemaVersion, @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')  DateTime articuloUltimaSync, @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')  DateTime clienteUltimaSync, @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')  DateTime pedidoUltimaSync, @JsonKey(name: 'VISITA_ULTIMA_SYNC')  DateTime visitaUltimaSync)  $default,) {final _that = this;
switch (_that) {
case _SyncDateTimeDTO():
return $default(_that.id,_that.dbSchemaVersion,_that.articuloUltimaSync,_that.clienteUltimaSync,_that.pedidoUltimaSync,_that.visitaUltimaSync);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ID')  int id, @JsonKey(name: 'DB_SCHEMA_VERSION')  int dbSchemaVersion, @JsonKey(name: 'ARTICULO_ULTIMA_SYNC')  DateTime articuloUltimaSync, @JsonKey(name: 'CLIENTE_ULTIMA_SYNC')  DateTime clienteUltimaSync, @JsonKey(name: 'PEDIDO_ULTIMA_SYNC')  DateTime pedidoUltimaSync, @JsonKey(name: 'VISITA_ULTIMA_SYNC')  DateTime visitaUltimaSync)?  $default,) {final _that = this;
switch (_that) {
case _SyncDateTimeDTO() when $default != null:
return $default(_that.id,_that.dbSchemaVersion,_that.articuloUltimaSync,_that.clienteUltimaSync,_that.pedidoUltimaSync,_that.visitaUltimaSync);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _SyncDateTimeDTO extends SyncDateTimeDTO {
  const _SyncDateTimeDTO({@JsonKey(name: 'ID') required this.id, @JsonKey(name: 'DB_SCHEMA_VERSION') required this.dbSchemaVersion, @JsonKey(name: 'ARTICULO_ULTIMA_SYNC') required this.articuloUltimaSync, @JsonKey(name: 'CLIENTE_ULTIMA_SYNC') required this.clienteUltimaSync, @JsonKey(name: 'PEDIDO_ULTIMA_SYNC') required this.pedidoUltimaSync, @JsonKey(name: 'VISITA_ULTIMA_SYNC') required this.visitaUltimaSync}): super._();
  factory _SyncDateTimeDTO.fromJson(Map<String, dynamic> json) => _$SyncDateTimeDTOFromJson(json);

@override@JsonKey(name: 'ID') final  int id;
@override@JsonKey(name: 'DB_SCHEMA_VERSION') final  int dbSchemaVersion;
@override@JsonKey(name: 'ARTICULO_ULTIMA_SYNC') final  DateTime articuloUltimaSync;
@override@JsonKey(name: 'CLIENTE_ULTIMA_SYNC') final  DateTime clienteUltimaSync;
@override@JsonKey(name: 'PEDIDO_ULTIMA_SYNC') final  DateTime pedidoUltimaSync;
@override@JsonKey(name: 'VISITA_ULTIMA_SYNC') final  DateTime visitaUltimaSync;

/// Create a copy of SyncDateTimeDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SyncDateTimeDTOCopyWith<_SyncDateTimeDTO> get copyWith => __$SyncDateTimeDTOCopyWithImpl<_SyncDateTimeDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$SyncDateTimeDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SyncDateTimeDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.dbSchemaVersion, dbSchemaVersion) || other.dbSchemaVersion == dbSchemaVersion)&&(identical(other.articuloUltimaSync, articuloUltimaSync) || other.articuloUltimaSync == articuloUltimaSync)&&(identical(other.clienteUltimaSync, clienteUltimaSync) || other.clienteUltimaSync == clienteUltimaSync)&&(identical(other.pedidoUltimaSync, pedidoUltimaSync) || other.pedidoUltimaSync == pedidoUltimaSync)&&(identical(other.visitaUltimaSync, visitaUltimaSync) || other.visitaUltimaSync == visitaUltimaSync));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,dbSchemaVersion,articuloUltimaSync,clienteUltimaSync,pedidoUltimaSync,visitaUltimaSync);

@override
String toString() {
  return 'SyncDateTimeDTO(id: $id, dbSchemaVersion: $dbSchemaVersion, articuloUltimaSync: $articuloUltimaSync, clienteUltimaSync: $clienteUltimaSync, pedidoUltimaSync: $pedidoUltimaSync, visitaUltimaSync: $visitaUltimaSync)';
}


}

/// @nodoc
abstract mixin class _$SyncDateTimeDTOCopyWith<$Res> implements $SyncDateTimeDTOCopyWith<$Res> {
  factory _$SyncDateTimeDTOCopyWith(_SyncDateTimeDTO value, $Res Function(_SyncDateTimeDTO) _then) = __$SyncDateTimeDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ID') int id,@JsonKey(name: 'DB_SCHEMA_VERSION') int dbSchemaVersion,@JsonKey(name: 'ARTICULO_ULTIMA_SYNC') DateTime articuloUltimaSync,@JsonKey(name: 'CLIENTE_ULTIMA_SYNC') DateTime clienteUltimaSync,@JsonKey(name: 'PEDIDO_ULTIMA_SYNC') DateTime pedidoUltimaSync,@JsonKey(name: 'VISITA_ULTIMA_SYNC') DateTime visitaUltimaSync
});




}
/// @nodoc
class __$SyncDateTimeDTOCopyWithImpl<$Res>
    implements _$SyncDateTimeDTOCopyWith<$Res> {
  __$SyncDateTimeDTOCopyWithImpl(this._self, this._then);

  final _SyncDateTimeDTO _self;
  final $Res Function(_SyncDateTimeDTO) _then;

/// Create a copy of SyncDateTimeDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? dbSchemaVersion = null,Object? articuloUltimaSync = null,Object? clienteUltimaSync = null,Object? pedidoUltimaSync = null,Object? visitaUltimaSync = null,}) {
  return _then(_SyncDateTimeDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,dbSchemaVersion: null == dbSchemaVersion ? _self.dbSchemaVersion : dbSchemaVersion // ignore: cast_nullable_to_non_nullable
as int,articuloUltimaSync: null == articuloUltimaSync ? _self.articuloUltimaSync : articuloUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,clienteUltimaSync: null == clienteUltimaSync ? _self.clienteUltimaSync : clienteUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,pedidoUltimaSync: null == pedidoUltimaSync ? _self.pedidoUltimaSync : pedidoUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,visitaUltimaSync: null == visitaUltimaSync ? _self.visitaUltimaSync : visitaUltimaSync // ignore: cast_nullable_to_non_nullable
as DateTime,
  ));
}


}

// dart format on
