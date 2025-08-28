// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_venta_cliente_usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EstadisticasVentaClienteUsuario {

 double get anyo; double get mes; String get clienteId; String get articuloId; double? get unidades; Money? get importe; Money? get coste; DateTime get lastUpdated; bool get deleted;
/// Create a copy of EstadisticasVentaClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstadisticasVentaClienteUsuarioCopyWith<EstadisticasVentaClienteUsuario> get copyWith => _$EstadisticasVentaClienteUsuarioCopyWithImpl<EstadisticasVentaClienteUsuario>(this as EstadisticasVentaClienteUsuario, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadisticasVentaClienteUsuario&&(identical(other.anyo, anyo) || other.anyo == anyo)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.unidades, unidades) || other.unidades == unidades)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,anyo,mes,clienteId,articuloId,unidades,importe,coste,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasVentaClienteUsuario(anyo: $anyo, mes: $mes, clienteId: $clienteId, articuloId: $articuloId, unidades: $unidades, importe: $importe, coste: $coste, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $EstadisticasVentaClienteUsuarioCopyWith<$Res>  {
  factory $EstadisticasVentaClienteUsuarioCopyWith(EstadisticasVentaClienteUsuario value, $Res Function(EstadisticasVentaClienteUsuario) _then) = _$EstadisticasVentaClienteUsuarioCopyWithImpl;
@useResult
$Res call({
 double anyo, double mes, String clienteId, String articuloId, double? unidades, Money? importe, Money? coste, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class _$EstadisticasVentaClienteUsuarioCopyWithImpl<$Res>
    implements $EstadisticasVentaClienteUsuarioCopyWith<$Res> {
  _$EstadisticasVentaClienteUsuarioCopyWithImpl(this._self, this._then);

  final EstadisticasVentaClienteUsuario _self;
  final $Res Function(EstadisticasVentaClienteUsuario) _then;

/// Create a copy of EstadisticasVentaClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? anyo = null,Object? mes = null,Object? clienteId = null,Object? articuloId = null,Object? unidades = freezed,Object? importe = freezed,Object? coste = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
anyo: null == anyo ? _self.anyo : anyo // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,unidades: freezed == unidades ? _self.unidades : unidades // ignore: cast_nullable_to_non_nullable
as double?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money?,coste: freezed == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as Money?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [EstadisticasVentaClienteUsuario].
extension EstadisticasVentaClienteUsuarioPatterns on EstadisticasVentaClienteUsuario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstadisticasVentaClienteUsuario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstadisticasVentaClienteUsuario value)  $default,){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstadisticasVentaClienteUsuario value)?  $default,){
final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double anyo,  double mes,  String clienteId,  String articuloId,  double? unidades,  Money? importe,  Money? coste,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double anyo,  double mes,  String clienteId,  String articuloId,  double? unidades,  Money? importe,  Money? coste,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double anyo,  double mes,  String clienteId,  String articuloId,  double? unidades,  Money? importe,  Money? coste,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _EstadisticasVentaClienteUsuario() when $default != null:
return $default(_that.anyo,_that.mes,_that.clienteId,_that.articuloId,_that.unidades,_that.importe,_that.coste,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _EstadisticasVentaClienteUsuario extends EstadisticasVentaClienteUsuario {
  const _EstadisticasVentaClienteUsuario({required this.anyo, required this.mes, required this.clienteId, required this.articuloId, this.unidades, this.importe, this.coste, required this.lastUpdated, required this.deleted}): super._();
  

@override final  double anyo;
@override final  double mes;
@override final  String clienteId;
@override final  String articuloId;
@override final  double? unidades;
@override final  Money? importe;
@override final  Money? coste;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of EstadisticasVentaClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstadisticasVentaClienteUsuarioCopyWith<_EstadisticasVentaClienteUsuario> get copyWith => __$EstadisticasVentaClienteUsuarioCopyWithImpl<_EstadisticasVentaClienteUsuario>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstadisticasVentaClienteUsuario&&(identical(other.anyo, anyo) || other.anyo == anyo)&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.unidades, unidades) || other.unidades == unidades)&&(identical(other.importe, importe) || other.importe == importe)&&(identical(other.coste, coste) || other.coste == coste)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,anyo,mes,clienteId,articuloId,unidades,importe,coste,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisticasVentaClienteUsuario(anyo: $anyo, mes: $mes, clienteId: $clienteId, articuloId: $articuloId, unidades: $unidades, importe: $importe, coste: $coste, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$EstadisticasVentaClienteUsuarioCopyWith<$Res> implements $EstadisticasVentaClienteUsuarioCopyWith<$Res> {
  factory _$EstadisticasVentaClienteUsuarioCopyWith(_EstadisticasVentaClienteUsuario value, $Res Function(_EstadisticasVentaClienteUsuario) _then) = __$EstadisticasVentaClienteUsuarioCopyWithImpl;
@override @useResult
$Res call({
 double anyo, double mes, String clienteId, String articuloId, double? unidades, Money? importe, Money? coste, DateTime lastUpdated, bool deleted
});




}
/// @nodoc
class __$EstadisticasVentaClienteUsuarioCopyWithImpl<$Res>
    implements _$EstadisticasVentaClienteUsuarioCopyWith<$Res> {
  __$EstadisticasVentaClienteUsuarioCopyWithImpl(this._self, this._then);

  final _EstadisticasVentaClienteUsuario _self;
  final $Res Function(_EstadisticasVentaClienteUsuario) _then;

/// Create a copy of EstadisticasVentaClienteUsuario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? anyo = null,Object? mes = null,Object? clienteId = null,Object? articuloId = null,Object? unidades = freezed,Object? importe = freezed,Object? coste = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_EstadisticasVentaClienteUsuario(
anyo: null == anyo ? _self.anyo : anyo // ignore: cast_nullable_to_non_nullable
as double,mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as double,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,unidades: freezed == unidades ? _self.unidades : unidades // ignore: cast_nullable_to_non_nullable
as double?,importe: freezed == importe ? _self.importe : importe // ignore: cast_nullable_to_non_nullable
as Money?,coste: freezed == coste ? _self.coste : coste // ignore: cast_nullable_to_non_nullable
as Money?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
