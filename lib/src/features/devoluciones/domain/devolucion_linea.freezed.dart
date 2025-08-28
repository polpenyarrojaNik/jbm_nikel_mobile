// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devolucion_linea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DevolucionLinea {

 String get empresaId; String get devolucionId; String get articuloId; String get articuloDescription; double? get cantidadDevolucion; double? get cantidadRecibida; DevolucionMotivo? get devolucionMotivo; DevolucionEstado? get devolucionEstado; String? get observaciones; DateTime get lastUpdated; bool get deleted;
/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DevolucionLineaCopyWith<DevolucionLinea> get copyWith => _$DevolucionLineaCopyWithImpl<DevolucionLinea>(this as DevolucionLinea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DevolucionLinea&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.devolucionId, devolucionId) || other.devolucionId == devolucionId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidadDevolucion, cantidadDevolucion) || other.cantidadDevolucion == cantidadDevolucion)&&(identical(other.cantidadRecibida, cantidadRecibida) || other.cantidadRecibida == cantidadRecibida)&&(identical(other.devolucionMotivo, devolucionMotivo) || other.devolucionMotivo == devolucionMotivo)&&(identical(other.devolucionEstado, devolucionEstado) || other.devolucionEstado == devolucionEstado)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,devolucionId,articuloId,articuloDescription,cantidadDevolucion,cantidadRecibida,devolucionMotivo,devolucionEstado,observaciones,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionLinea(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivo: $devolucionMotivo, devolucionEstado: $devolucionEstado, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $DevolucionLineaCopyWith<$Res>  {
  factory $DevolucionLineaCopyWith(DevolucionLinea value, $Res Function(DevolucionLinea) _then) = _$DevolucionLineaCopyWithImpl;
@useResult
$Res call({
 String empresaId, String devolucionId, String articuloId, String articuloDescription, double? cantidadDevolucion, double? cantidadRecibida, DevolucionMotivo? devolucionMotivo, DevolucionEstado? devolucionEstado, String? observaciones, DateTime lastUpdated, bool deleted
});


$DevolucionMotivoCopyWith<$Res>? get devolucionMotivo;$DevolucionEstadoCopyWith<$Res>? get devolucionEstado;

}
/// @nodoc
class _$DevolucionLineaCopyWithImpl<$Res>
    implements $DevolucionLineaCopyWith<$Res> {
  _$DevolucionLineaCopyWithImpl(this._self, this._then);

  final DevolucionLinea _self;
  final $Res Function(DevolucionLinea) _then;

/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? devolucionId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidadDevolucion = freezed,Object? cantidadRecibida = freezed,Object? devolucionMotivo = freezed,Object? devolucionEstado = freezed,Object? observaciones = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,devolucionId: null == devolucionId ? _self.devolucionId : devolucionId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidadDevolucion: freezed == cantidadDevolucion ? _self.cantidadDevolucion : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
as double?,cantidadRecibida: freezed == cantidadRecibida ? _self.cantidadRecibida : cantidadRecibida // ignore: cast_nullable_to_non_nullable
as double?,devolucionMotivo: freezed == devolucionMotivo ? _self.devolucionMotivo : devolucionMotivo // ignore: cast_nullable_to_non_nullable
as DevolucionMotivo?,devolucionEstado: freezed == devolucionEstado ? _self.devolucionEstado : devolucionEstado // ignore: cast_nullable_to_non_nullable
as DevolucionEstado?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionMotivoCopyWith<$Res>? get devolucionMotivo {
    if (_self.devolucionMotivo == null) {
    return null;
  }

  return $DevolucionMotivoCopyWith<$Res>(_self.devolucionMotivo!, (value) {
    return _then(_self.copyWith(devolucionMotivo: value));
  });
}/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionEstadoCopyWith<$Res>? get devolucionEstado {
    if (_self.devolucionEstado == null) {
    return null;
  }

  return $DevolucionEstadoCopyWith<$Res>(_self.devolucionEstado!, (value) {
    return _then(_self.copyWith(devolucionEstado: value));
  });
}
}


/// Adds pattern-matching-related methods to [DevolucionLinea].
extension DevolucionLineaPatterns on DevolucionLinea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DevolucionLinea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DevolucionLinea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DevolucionLinea value)  $default,){
final _that = this;
switch (_that) {
case _DevolucionLinea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DevolucionLinea value)?  $default,){
final _that = this;
switch (_that) {
case _DevolucionLinea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String empresaId,  String devolucionId,  String articuloId,  String articuloDescription,  double? cantidadDevolucion,  double? cantidadRecibida,  DevolucionMotivo? devolucionMotivo,  DevolucionEstado? devolucionEstado,  String? observaciones,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DevolucionLinea() when $default != null:
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivo,_that.devolucionEstado,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String empresaId,  String devolucionId,  String articuloId,  String articuloDescription,  double? cantidadDevolucion,  double? cantidadRecibida,  DevolucionMotivo? devolucionMotivo,  DevolucionEstado? devolucionEstado,  String? observaciones,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _DevolucionLinea():
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivo,_that.devolucionEstado,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String empresaId,  String devolucionId,  String articuloId,  String articuloDescription,  double? cantidadDevolucion,  double? cantidadRecibida,  DevolucionMotivo? devolucionMotivo,  DevolucionEstado? devolucionEstado,  String? observaciones,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _DevolucionLinea() when $default != null:
return $default(_that.empresaId,_that.devolucionId,_that.articuloId,_that.articuloDescription,_that.cantidadDevolucion,_that.cantidadRecibida,_that.devolucionMotivo,_that.devolucionEstado,_that.observaciones,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _DevolucionLinea extends DevolucionLinea {
  const _DevolucionLinea({required this.empresaId, required this.devolucionId, required this.articuloId, required this.articuloDescription, this.cantidadDevolucion, this.cantidadRecibida, this.devolucionMotivo, this.devolucionEstado, this.observaciones, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String empresaId;
@override final  String devolucionId;
@override final  String articuloId;
@override final  String articuloDescription;
@override final  double? cantidadDevolucion;
@override final  double? cantidadRecibida;
@override final  DevolucionMotivo? devolucionMotivo;
@override final  DevolucionEstado? devolucionEstado;
@override final  String? observaciones;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DevolucionLineaCopyWith<_DevolucionLinea> get copyWith => __$DevolucionLineaCopyWithImpl<_DevolucionLinea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DevolucionLinea&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.devolucionId, devolucionId) || other.devolucionId == devolucionId)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidadDevolucion, cantidadDevolucion) || other.cantidadDevolucion == cantidadDevolucion)&&(identical(other.cantidadRecibida, cantidadRecibida) || other.cantidadRecibida == cantidadRecibida)&&(identical(other.devolucionMotivo, devolucionMotivo) || other.devolucionMotivo == devolucionMotivo)&&(identical(other.devolucionEstado, devolucionEstado) || other.devolucionEstado == devolucionEstado)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,devolucionId,articuloId,articuloDescription,cantidadDevolucion,cantidadRecibida,devolucionMotivo,devolucionEstado,observaciones,lastUpdated,deleted);

@override
String toString() {
  return 'DevolucionLinea(empresaId: $empresaId, devolucionId: $devolucionId, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidadDevolucion: $cantidadDevolucion, cantidadRecibida: $cantidadRecibida, devolucionMotivo: $devolucionMotivo, devolucionEstado: $devolucionEstado, observaciones: $observaciones, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$DevolucionLineaCopyWith<$Res> implements $DevolucionLineaCopyWith<$Res> {
  factory _$DevolucionLineaCopyWith(_DevolucionLinea value, $Res Function(_DevolucionLinea) _then) = __$DevolucionLineaCopyWithImpl;
@override @useResult
$Res call({
 String empresaId, String devolucionId, String articuloId, String articuloDescription, double? cantidadDevolucion, double? cantidadRecibida, DevolucionMotivo? devolucionMotivo, DevolucionEstado? devolucionEstado, String? observaciones, DateTime lastUpdated, bool deleted
});


@override $DevolucionMotivoCopyWith<$Res>? get devolucionMotivo;@override $DevolucionEstadoCopyWith<$Res>? get devolucionEstado;

}
/// @nodoc
class __$DevolucionLineaCopyWithImpl<$Res>
    implements _$DevolucionLineaCopyWith<$Res> {
  __$DevolucionLineaCopyWithImpl(this._self, this._then);

  final _DevolucionLinea _self;
  final $Res Function(_DevolucionLinea) _then;

/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? devolucionId = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidadDevolucion = freezed,Object? cantidadRecibida = freezed,Object? devolucionMotivo = freezed,Object? devolucionEstado = freezed,Object? observaciones = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_DevolucionLinea(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,devolucionId: null == devolucionId ? _self.devolucionId : devolucionId // ignore: cast_nullable_to_non_nullable
as String,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidadDevolucion: freezed == cantidadDevolucion ? _self.cantidadDevolucion : cantidadDevolucion // ignore: cast_nullable_to_non_nullable
as double?,cantidadRecibida: freezed == cantidadRecibida ? _self.cantidadRecibida : cantidadRecibida // ignore: cast_nullable_to_non_nullable
as double?,devolucionMotivo: freezed == devolucionMotivo ? _self.devolucionMotivo : devolucionMotivo // ignore: cast_nullable_to_non_nullable
as DevolucionMotivo?,devolucionEstado: freezed == devolucionEstado ? _self.devolucionEstado : devolucionEstado // ignore: cast_nullable_to_non_nullable
as DevolucionEstado?,observaciones: freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionMotivoCopyWith<$Res>? get devolucionMotivo {
    if (_self.devolucionMotivo == null) {
    return null;
  }

  return $DevolucionMotivoCopyWith<$Res>(_self.devolucionMotivo!, (value) {
    return _then(_self.copyWith(devolucionMotivo: value));
  });
}/// Create a copy of DevolucionLinea
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$DevolucionEstadoCopyWith<$Res>? get devolucionEstado {
    if (_self.devolucionEstado == null) {
    return null;
  }

  return $DevolucionEstadoCopyWith<$Res>(_self.devolucionEstado!, (value) {
    return _then(_self.copyWith(devolucionEstado: value));
  });
}
}

// dart format on
