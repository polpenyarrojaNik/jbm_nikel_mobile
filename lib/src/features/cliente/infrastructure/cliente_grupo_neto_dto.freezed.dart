// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_grupo_neto_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteGrupoNetoDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'GRUPO_NETO_ID') String get grupoNetoId;@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String get grupoNetoDescripcion;@JsonKey(name: 'DTO_ADICIONAL') double get dtoAdicional;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ClienteGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteGrupoNetoDTOCopyWith<ClienteGrupoNetoDTO> get copyWith => _$ClienteGrupoNetoDTOCopyWithImpl<ClienteGrupoNetoDTO>(this as ClienteGrupoNetoDTO, _$identity);

  /// Serializes this ClienteGrupoNetoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteGrupoNetoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,grupoNetoId,grupoNetoDescripcion,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteGrupoNetoDTO(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ClienteGrupoNetoDTOCopyWith<$Res>  {
  factory $ClienteGrupoNetoDTOCopyWith(ClienteGrupoNetoDTO value, $Res Function(ClienteGrupoNetoDTO) _then) = _$ClienteGrupoNetoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,@JsonKey(name: 'DTO_ADICIONAL') double dtoAdicional,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ClienteGrupoNetoDTOCopyWithImpl<$Res>
    implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  _$ClienteGrupoNetoDTOCopyWithImpl(this._self, this._then);

  final ClienteGrupoNetoDTO _self;
  final $Res Function(ClienteGrupoNetoDTO) _then;

/// Create a copy of ClienteGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? dtoAdicional = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,dtoAdicional: null == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteGrupoNetoDTO].
extension ClienteGrupoNetoDTOPatterns on ClienteGrupoNetoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteGrupoNetoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteGrupoNetoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteGrupoNetoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'DTO_ADICIONAL')  double dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO() when $default != null:
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'DTO_ADICIONAL')  double dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO():
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'GRUPO_NETO_ID')  String grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION')  String grupoNetoDescripcion, @JsonKey(name: 'DTO_ADICIONAL')  double dtoAdicional, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ClienteGrupoNetoDTO() when $default != null:
return $default(_that.clienteId,_that.grupoNetoId,_that.grupoNetoDescripcion,_that.dtoAdicional,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteGrupoNetoDTO extends ClienteGrupoNetoDTO {
  const _ClienteGrupoNetoDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'GRUPO_NETO_ID') required this.grupoNetoId, @JsonKey(name: 'GRUPO_NETO_DESCRIPCION') required this.grupoNetoDescripcion, @JsonKey(name: 'DTO_ADICIONAL') required this.dtoAdicional, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ClienteGrupoNetoDTO.fromJson(Map<String, dynamic> json) => _$ClienteGrupoNetoDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'GRUPO_NETO_ID') final  String grupoNetoId;
@override@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') final  String grupoNetoDescripcion;
@override@JsonKey(name: 'DTO_ADICIONAL') final  double dtoAdicional;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ClienteGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteGrupoNetoDTOCopyWith<_ClienteGrupoNetoDTO> get copyWith => __$ClienteGrupoNetoDTOCopyWithImpl<_ClienteGrupoNetoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteGrupoNetoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteGrupoNetoDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.grupoNetoId, grupoNetoId) || other.grupoNetoId == grupoNetoId)&&(identical(other.grupoNetoDescripcion, grupoNetoDescripcion) || other.grupoNetoDescripcion == grupoNetoDescripcion)&&(identical(other.dtoAdicional, dtoAdicional) || other.dtoAdicional == dtoAdicional)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,grupoNetoId,grupoNetoDescripcion,dtoAdicional,lastUpdated,deleted);

@override
String toString() {
  return 'ClienteGrupoNetoDTO(clienteId: $clienteId, grupoNetoId: $grupoNetoId, grupoNetoDescripcion: $grupoNetoDescripcion, dtoAdicional: $dtoAdicional, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ClienteGrupoNetoDTOCopyWith<$Res> implements $ClienteGrupoNetoDTOCopyWith<$Res> {
  factory _$ClienteGrupoNetoDTOCopyWith(_ClienteGrupoNetoDTO value, $Res Function(_ClienteGrupoNetoDTO) _then) = __$ClienteGrupoNetoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'GRUPO_NETO_ID') String grupoNetoId,@JsonKey(name: 'GRUPO_NETO_DESCRIPCION') String grupoNetoDescripcion,@JsonKey(name: 'DTO_ADICIONAL') double dtoAdicional,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ClienteGrupoNetoDTOCopyWithImpl<$Res>
    implements _$ClienteGrupoNetoDTOCopyWith<$Res> {
  __$ClienteGrupoNetoDTOCopyWithImpl(this._self, this._then);

  final _ClienteGrupoNetoDTO _self;
  final $Res Function(_ClienteGrupoNetoDTO) _then;

/// Create a copy of ClienteGrupoNetoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? grupoNetoId = null,Object? grupoNetoDescripcion = null,Object? dtoAdicional = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ClienteGrupoNetoDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoId: null == grupoNetoId ? _self.grupoNetoId : grupoNetoId // ignore: cast_nullable_to_non_nullable
as String,grupoNetoDescripcion: null == grupoNetoDescripcion ? _self.grupoNetoDescripcion : grupoNetoDescripcion // ignore: cast_nullable_to_non_nullable
as String,dtoAdicional: null == dtoAdicional ? _self.dtoAdicional : dtoAdicional // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
