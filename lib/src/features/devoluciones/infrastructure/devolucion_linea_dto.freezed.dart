// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_linea_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DevolucionLineaDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'DEVOLUCION_ID') String get devolucionId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'ARTICULO_DESCRIPCION') String get articuloDescription;@JsonKey(name: 'CANTIDAD_DEVOLUCION') double? get cantidadDevolucion;@JsonKey(name: 'CANTIDAD_RECIBIDA') double? get cantidadRecibida;@JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? get devolucionMotivoId;@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? get devolucionEstadoId;@JsonKey(name: 'OBSERVACIONES') String? get observaciones;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of DevolucionLineaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevolucionLineaDTOCopyWith<DevolucionLineaDTO> get copyWith => _$DevolucionLineaDTOCopyWithImpl<DevolucionLineaDTO>(this as DevolucionLineaDTO, _$identity);

  /// Serializes this DevolucionLineaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevolucionLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.devolucionId, devolucionId) || other.devolucionId == devolucionId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidadDevolucion, cantidadDevolucion) || other.cantidadDevolucion == cantidadDevolucion)&&(identical(other.cantidadRecibida, cantidadRecibida) || other.cantidadRecibida == cantidadRecibida)&&(identical(other.devolucionMotivoId, devolucionMotivoId) || other.devolucionMotivoId == devolucionMotivoId)&&(identical(other.devolucionEstadoId, devolucionEstadoId) || other.devolucionEstadoId == devolucionEstadoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,devolucionId,articuloId,articuloDescription,cantidadDevolucion,cantidadRecibida,devolucionMotivoId,devolucionEstadoId,observaciones,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionLineaDTO(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivoId: $devolucionMotivoId, devolucionEstadoId: $devolucionEstadoId, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DevolucionLineaDTOCopyWith<$Res>  {
  factory $DevolucionLineaDTOCopyWith(DevolucionLineaDTO value, $Res Function(DevolucionLineaDTO) _then) = _$DevolucionLineaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'DEVOLUCION_ID') String devolucionId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,@JsonKey(name: 'CANTIDAD_DEVOLUCION') double? cantidadDevolucion,@JsonKey(name: 'CANTIDAD_RECIBIDA') double? cantidadRecibida,@JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? devolucionMotivoId,@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? devolucionEstadoId,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$DevolucionLineaDTOCopyWithImpl<$Res>
    implements $DevolucionLineaDTOCopyWith<$Res> {
  _$DevolucionLineaDTOCopyWithImpl(this._self, this._then);

  final DevolucionLineaDTO _self;
  final $Res Function(DevolucionLineaDTO) _then;

/// Create a copy of DevolucionLineaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? devolucionId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidadDevolucion = freezed,Object? cantidadRecibida = freezed,Object? devolucionMotivoId = freezed,Object? devolucionEstadoId = freezed,Object? observaciones = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,devolucionId: null == devolucionId ? _self.devolucionId : devolucionId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidadDevolucion: freezed == cantidadDevolucion ? _self.cantidadDevolucion : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
as double?,cantidadRecibida: freezed == cantidadRecibida ? _self.cantidadRecibida : cantidadRecibida // ignore: cast_nullable_to_non_nullable
as double?,devolucionMotivoId: freezed == devolucionMotivoId ? _self.devolucionMotivoId : devolucionMotivoId // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstadoId: freezed == devolucionEstadoId ? _self.devolucionEstadoId : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [DevolucionLineaDTO].
extension DevolucionLineaDTOPatterns on DevolucionLineaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevolucionLineaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevolucionLineaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevolucionLineaDTO value)  $default,){
final _that = this;
switch (_that) {
case _DevolucionLineaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevolucionLineaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _DevolucionLineaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String devolucionId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD_DEVOLUCION')  double? cantidadDevolucion, @JsonKey(name: 'CANTIDAD_RECIBIDA')  double? cantidadRecibida, @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')  String? devolucionMotivoId, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String? devolucionEstadoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevolucionLineaDTO() when $default != null:
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivoId,_that.devolucionEstadoId,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String devolucionId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD_DEVOLUCION')  double? cantidadDevolucion, @JsonKey(name: 'CANTIDAD_RECIBIDA')  double? cantidadRecibida, @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')  String? devolucionMotivoId, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String? devolucionEstadoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _DevolucionLineaDTO():
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivoId,_that.devolucionEstadoId,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'DEVOLUCION_ID')  String devolucionId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION')  String articuloDescription, @JsonKey(name: 'CANTIDAD_DEVOLUCION')  double? cantidadDevolucion, @JsonKey(name: 'CANTIDAD_RECIBIDA')  double? cantidadRecibida, @JsonKey(name: 'DEVOLUCION_MOTIVO_ID')  String? devolucionMotivoId, @JsonKey(name: 'DEVOLUCION_ESTADO_ID')  String? devolucionEstadoId, @JsonKey(name: 'OBSERVACIONES')  String? observaciones, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _DevolucionLineaDTO() when $default != null:
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivoId,_that.devolucionEstadoId,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DevolucionLineaDTO extends DevolucionLineaDTO {
  const _DevolucionLineaDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'DEVOLUCION_ID') required this.devolucionId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'ARTICULO_DESCRIPCION') required this.articuloDescription, @JsonKey(name: 'CANTIDAD_DEVOLUCION') this.cantidadDevolucion, @JsonKey(name: 'CANTIDAD_RECIBIDA') this.cantidadRecibida, @JsonKey(name: 'DEVOLUCION_MOTIVO_ID') this.devolucionMotivoId, @JsonKey(name: 'DEVOLUCION_ESTADO_ID') this.devolucionEstadoId, @JsonKey(name: 'OBSERVACIONES') this.observaciones, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _DevolucionLineaDTO.fromJson(Map<String, dynamic> json) => _$DevolucionLineaDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'DEVOLUCION_ID') final  String devolucionId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'ARTICULO_DESCRIPCION') final  String articuloDescription;
@override@JsonKey(name: 'CANTIDAD_DEVOLUCION') final  double? cantidadDevolucion;
@override@JsonKey(name: 'CANTIDAD_RECIBIDA') final  double? cantidadRecibida;
@override@JsonKey(name: 'DEVOLUCION_MOTIVO_ID') final  String? devolucionMotivoId;
@override@JsonKey(name: 'DEVOLUCION_ESTADO_ID') final  String? devolucionEstadoId;
@override@JsonKey(name: 'OBSERVACIONES') final  String? observaciones;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of DevolucionLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevolucionLineaDTOCopyWith<_DevolucionLineaDTO> get copyWith => __$DevolucionLineaDTOCopyWithImpl<_DevolucionLineaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DevolucionLineaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevolucionLineaDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.devolucionId, devolucionId) || other.devolucionId == devolucionId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidadDevolucion, cantidadDevolucion) || other.cantidadDevolucion == cantidadDevolucion)&&(identical(other.cantidadRecibida, cantidadRecibida) || other.cantidadRecibida == cantidadRecibida)&&(identical(other.devolucionMotivoId, devolucionMotivoId) || other.devolucionMotivoId == devolucionMotivoId)&&(identical(other.devolucionEstadoId, devolucionEstadoId) || other.devolucionEstadoId == devolucionEstadoId)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,devolucionId,articuloId,articuloDescription,cantidadDevolucion,cantidadRecibida,devolucionMotivoId,devolucionEstadoId,observaciones,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionLineaDTO(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivoId: $devolucionMotivoId, devolucionEstadoId: $devolucionEstadoId, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DevolucionLineaDTOCopyWith<$Res> implements $DevolucionLineaDTOCopyWith<$Res> {
  factory _$DevolucionLineaDTOCopyWith(_DevolucionLineaDTO value, $Res Function(_DevolucionLineaDTO) _then) = __$DevolucionLineaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'DEVOLUCION_ID') String devolucionId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_DESCRIPCION') String articuloDescription,@JsonKey(name: 'CANTIDAD_DEVOLUCION') double? cantidadDevolucion,@JsonKey(name: 'CANTIDAD_RECIBIDA') double? cantidadRecibida,@JsonKey(name: 'DEVOLUCION_MOTIVO_ID') String? devolucionMotivoId,@JsonKey(name: 'DEVOLUCION_ESTADO_ID') String? devolucionEstadoId,@JsonKey(name: 'OBSERVACIONES') String? observaciones,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$DevolucionLineaDTOCopyWithImpl<$Res>
    implements _$DevolucionLineaDTOCopyWith<$Res> {
  __$DevolucionLineaDTOCopyWithImpl(this._self, this._then);

  final _DevolucionLineaDTO _self;
  final $Res Function(_DevolucionLineaDTO) _then;

/// Create a copy of DevolucionLineaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? devolucionId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidadDevolucion = freezed,Object? cantidadRecibida = freezed,Object? devolucionMotivoId = freezed,Object? devolucionEstadoId = freezed,Object? observaciones = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DevolucionLineaDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,devolucionId: null == devolucionId ? _self.devolucionId : devolucionId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidadDevolucion: freezed == cantidadDevolucion ? _self.cantidadDevolucion : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
as double?,cantidadRecibida: freezed == cantidadRecibida ? _self.cantidadRecibida : cantidadRecibida // ignore: cast_nullable_to_non_nullable
as double?,devolucionMotivoId: freezed == devolucionMotivoId ? _self.devolucionMotivoId : devolucionMotivoId // ignore: cast_nullable_to_non_nullable
as String?,devolucionEstadoId: freezed == devolucionEstadoId ? _self.devolucionEstadoId : devolucionEstadoId // ignore: cast_nullable_to_non_nullable
as String?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
