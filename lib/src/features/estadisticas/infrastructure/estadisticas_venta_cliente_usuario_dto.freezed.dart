// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_venta_cliente_usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EstadisticasVentaClienteUsuarioDTO {

@JsonKey(name: 'ANYO') double get anyo;@JsonKey(name: 'MES') double get mes;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'UNIDADES') double? get unidades;@JsonKey(name: 'IMPORTE') double? get importe;@JsonKey(name: 'COSTE') double? get coste;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of EstadisticasVentaClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstadisticasVentaClienteUsuarioDTOCopyWith<EstadisticasVentaClienteUsuarioDTO> get copyWith => _$EstadisticasVentaClienteUsuarioDTOCopyWithImpl<EstadisticasVentaClienteUsuarioDTO>(this as EstadisticasVentaClienteUsuarioDTO, _$identity);

  /// Serializes this EstadisticasVentaClienteUsuarioDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadisticasVentaClienteUsuarioDTO&&(identical(other.anyo, anyo) || other.anyo == anyo)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.unidades, unidades) || other.unidades == unidades)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,anyo,mes,clienteId,articuloId,unidades,importe,coste,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasVentaClienteUsuarioDTO(anyo: $anyo, mes: $mes, clienteId: $clienteId, articuloId: $articuloId, unidades: $unidades, importe: $importe, coste: $coste, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $EstadisticasVentaClienteUsuarioDTOCopyWith<$Res>  {
  factory $EstadisticasVentaClienteUsuarioDTOCopyWith(EstadisticasVentaClienteUsuarioDTO value, $Res Function(EstadisticasVentaClienteUsuarioDTO) _then) = _$EstadisticasVentaClienteUsuarioDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ANYO') double anyo,@JsonKey(name: 'MES') double mes,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'UNIDADES') double? unidades,@JsonKey(name: 'IMPORTE') double? importe,@JsonKey(name: 'COSTE') double? coste,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$EstadisticasVentaClienteUsuarioDTOCopyWithImpl<$Res>
    implements $EstadisticasVentaClienteUsuarioDTOCopyWith<$Res> {
  _$EstadisticasVentaClienteUsuarioDTOCopyWithImpl(this._self, this._then);

  final EstadisticasVentaClienteUsuarioDTO _self;
  final $Res Function(EstadisticasVentaClienteUsuarioDTO) _then;

/// Create a copy of EstadisticasVentaClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anyo = null,Object? mes = null,Object? clienteId = null,Object? articuloId = null,Object? unidades = freezed,Object? importe = freezed,Object? coste = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
anyo: null == anyo ? _self.anyo : anyo // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,unidades: freezed == unidades ? _self.unidades : unidades // ignore: cast_nullable_to_non_nullable
as double?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double?,coste: freezed == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EstadisticasVentaClienteUsuarioDTO].
extension EstadisticasVentaClienteUsuarioDTOPatterns on EstadisticasVentaClienteUsuarioDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstadisticasVentaClienteUsuarioDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstadisticasVentaClienteUsuarioDTO value)  $default,){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstadisticasVentaClienteUsuarioDTO value)?  $default,){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ANYO')  double anyo, @JsonKey(name: 'MES')  double mes, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'UNIDADES')  double? unidades, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'COSTE')  double? coste, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO() when $default != null:
return $default(_that.anyo,_that.mes,_that.clienteId,_that.articuloId,_that.unidades,_that.importe,_that.coste,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ANYO')  double anyo, @JsonKey(name: 'MES')  double mes, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'UNIDADES')  double? unidades, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'COSTE')  double? coste, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO():
return $default(_that.anyo,_that.mes,_that.clienteId,_that.articuloId,_that.unidades,_that.importe,_that.coste,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ANYO')  double anyo, @JsonKey(name: 'MES')  double mes, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'UNIDADES')  double? unidades, @JsonKey(name: 'IMPORTE')  double? importe, @JsonKey(name: 'COSTE')  double? coste, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuarioDTO() when $default != null:
return $default(_that.anyo,_that.mes,_that.clienteId,_that.articuloId,_that.unidades,_that.importe,_that.coste,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EstadisticasVentaClienteUsuarioDTO extends EstadisticasVentaClienteUsuarioDTO {
  const _EstadisticasVentaClienteUsuarioDTO({@JsonKey(name: 'ANYO') required this.anyo, @JsonKey(name: 'MES') required this.mes, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'UNIDADES') this.unidades, @JsonKey(name: 'IMPORTE') this.importe, @JsonKey(name: 'COSTE') this.coste, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _EstadisticasVentaClienteUsuarioDTO.fromJson(Map<String, dynamic> json) => _$EstadisticasVentaClienteUsuarioDTOFromJson(json);

@override@JsonKey(name: 'ANYO') final  double anyo;
@override@JsonKey(name: 'MES') final  double mes;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'UNIDADES') final  double? unidades;
@override@JsonKey(name: 'IMPORTE') final  double? importe;
@override@JsonKey(name: 'COSTE') final  double? coste;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of EstadisticasVentaClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstadisticasVentaClienteUsuarioDTOCopyWith<_EstadisticasVentaClienteUsuarioDTO> get copyWith => __$EstadisticasVentaClienteUsuarioDTOCopyWithImpl<_EstadisticasVentaClienteUsuarioDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EstadisticasVentaClienteUsuarioDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstadisticasVentaClienteUsuarioDTO&&(identical(other.anyo, anyo) || other.anyo == anyo)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.unidades, unidades) || other.unidades == unidades)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,anyo,mes,clienteId,articuloId,unidades,importe,coste,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasVentaClienteUsuarioDTO(anyo: $anyo, mes: $mes, clienteId: $clienteId, articuloId: $articuloId, unidades: $unidades, importe: $importe, coste: $coste, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$EstadisticasVentaClienteUsuarioDTOCopyWith<$Res> implements $EstadisticasVentaClienteUsuarioDTOCopyWith<$Res> {
  factory _$EstadisticasVentaClienteUsuarioDTOCopyWith(_EstadisticasVentaClienteUsuarioDTO value, $Res Function(_EstadisticasVentaClienteUsuarioDTO) _then) = __$EstadisticasVentaClienteUsuarioDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ANYO') double anyo,@JsonKey(name: 'MES') double mes,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'UNIDADES') double? unidades,@JsonKey(name: 'IMPORTE') double? importe,@JsonKey(name: 'COSTE') double? coste,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$EstadisticasVentaClienteUsuarioDTOCopyWithImpl<$Res>
    implements _$EstadisticasVentaClienteUsuarioDTOCopyWith<$Res> {
  __$EstadisticasVentaClienteUsuarioDTOCopyWithImpl(this._self, this._then);

  final _EstadisticasVentaClienteUsuarioDTO _self;
  final $Res Function(_EstadisticasVentaClienteUsuarioDTO) _then;

/// Create a copy of EstadisticasVentaClienteUsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anyo = null,Object? mes = null,Object? clienteId = null,Object? articuloId = null,Object? unidades = freezed,Object? importe = freezed,Object? coste = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_EstadisticasVentaClienteUsuarioDTO(
anyo: null == anyo ? _self.anyo : anyo // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,unidades: freezed == unidades ? _self.unidades : unidades // ignore: cast_nullable_to_non_nullable
as double?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as double?,coste: freezed == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as double?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
