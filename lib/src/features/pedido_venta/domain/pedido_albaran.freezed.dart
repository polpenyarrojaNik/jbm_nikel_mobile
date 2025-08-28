// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_albaran.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoAlbaran {

 String get empresaId; String get pedidoVentaId; String get albaranId; DateTime get fechaAlbaran; String? get agencia; String? get trackId; TrackingEstado? get trackingEstado; DateTime get lastUpdated; bool get deleted;
/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoAlbaranCopyWith<PedidoAlbaran> get copyWith => _$PedidoAlbaranCopyWithImpl<PedidoAlbaran>(this as PedidoAlbaran, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoAlbaran&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.trackingEstado, trackingEstado) || other.trackingEstado == trackingEstado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoVentaId,albaranId,fechaAlbaran,agencia,trackId,trackingEstado,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoAlbaran(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, agencia: $agencia, trackId: $trackId, trackingEstado: $trackingEstado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoAlbaranCopyWith<$Res>  {
  factory $PedidoAlbaranCopyWith(PedidoAlbaran value, $Res Function(PedidoAlbaran) _then) = _$PedidoAlbaranCopyWithImpl;
@useResult
$Res call({
 String empresaId, String pedidoVentaId, String albaranId, DateTime fechaAlbaran, String? agencia, String? trackId, TrackingEstado? trackingEstado, DateTime lastUpdated, bool deleted
});


$TrackingEstadoCopyWith<$Res>? get trackingEstado;

}
/// @nodoc
class _$PedidoAlbaranCopyWithImpl<$Res>
    implements $PedidoAlbaranCopyWith<$Res> {
  _$PedidoAlbaranCopyWithImpl(this._self, this._then);

  final PedidoAlbaran _self;
  final $Res Function(PedidoAlbaran) _then;

/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? agencia = freezed,Object? trackId = freezed,Object? trackingEstado = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,trackingEstado: freezed == trackingEstado ? _self.trackingEstado : trackingEstado // ignore: cast_nullable_to_non_nullable
as TrackingEstado?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingEstadoCopyWith<$Res>? get trackingEstado {
    if (_self.trackingEstado == null) {
    return null;
  }

  return $TrackingEstadoCopyWith<$Res>(_self.trackingEstado!, (value) {
    return _then(_self.copyWith(trackingEstado: value));
  });
}
}


/// Adds pattern-matching-related methods to [PedidoAlbaran].
extension PedidoAlbaranPatterns on PedidoAlbaran {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoAlbaran value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoAlbaran() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoAlbaran value)  $default,){
final _that = this;
switch (_that) {
case _PedidoAlbaran():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoAlbaran value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoAlbaran() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String empresaId,  String pedidoVentaId,  String albaranId,  DateTime fechaAlbaran,  String? agencia,  String? trackId,  TrackingEstado? trackingEstado,  DateTime lastUpdated,  bool deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoAlbaran() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String empresaId,  String pedidoVentaId,  String albaranId,  DateTime fechaAlbaran,  String? agencia,  String? trackId,  TrackingEstado? trackingEstado,  DateTime lastUpdated,  bool deleted)  $default,) {final _that = this;
switch (_that) {
case _PedidoAlbaran():
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstado,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String empresaId,  String pedidoVentaId,  String albaranId,  DateTime fechaAlbaran,  String? agencia,  String? trackId,  TrackingEstado? trackingEstado,  DateTime lastUpdated,  bool deleted)?  $default,) {final _that = this;
switch (_that) {
case _PedidoAlbaran() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstado,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoAlbaran extends PedidoAlbaran {
  const _PedidoAlbaran({required this.empresaId, required this.pedidoVentaId, required this.albaranId, required this.fechaAlbaran, this.agencia, this.trackId, this.trackingEstado, required this.lastUpdated, required this.deleted}): super._();
  

@override final  String empresaId;
@override final  String pedidoVentaId;
@override final  String albaranId;
@override final  DateTime fechaAlbaran;
@override final  String? agencia;
@override final  String? trackId;
@override final  TrackingEstado? trackingEstado;
@override final  DateTime lastUpdated;
@override final  bool deleted;

/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoAlbaranCopyWith<_PedidoAlbaran> get copyWith => __$PedidoAlbaranCopyWithImpl<_PedidoAlbaran>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoAlbaran&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.trackingEstado, trackingEstado) || other.trackingEstado == trackingEstado)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}


@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoVentaId,albaranId,fechaAlbaran,agencia,trackId,trackingEstado,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoAlbaran(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, agencia: $agencia, trackId: $trackId, trackingEstado: $trackingEstado, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoAlbaranCopyWith<$Res> implements $PedidoAlbaranCopyWith<$Res> {
  factory _$PedidoAlbaranCopyWith(_PedidoAlbaran value, $Res Function(_PedidoAlbaran) _then) = __$PedidoAlbaranCopyWithImpl;
@override @useResult
$Res call({
 String empresaId, String pedidoVentaId, String albaranId, DateTime fechaAlbaran, String? agencia, String? trackId, TrackingEstado? trackingEstado, DateTime lastUpdated, bool deleted
});


@override $TrackingEstadoCopyWith<$Res>? get trackingEstado;

}
/// @nodoc
class __$PedidoAlbaranCopyWithImpl<$Res>
    implements _$PedidoAlbaranCopyWith<$Res> {
  __$PedidoAlbaranCopyWithImpl(this._self, this._then);

  final _PedidoAlbaran _self;
  final $Res Function(_PedidoAlbaran) _then;

/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? agencia = freezed,Object? trackId = freezed,Object? trackingEstado = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PedidoAlbaran(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,trackingEstado: freezed == trackingEstado ? _self.trackingEstado : trackingEstado // ignore: cast_nullable_to_non_nullable
as TrackingEstado?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PedidoAlbaran
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$TrackingEstadoCopyWith<$Res>? get trackingEstado {
    if (_self.trackingEstado == null) {
    return null;
  }

  return $TrackingEstadoCopyWith<$Res>(_self.trackingEstado!, (value) {
    return _then(_self.copyWith(trackingEstado: value));
  });
}
}

// dart format on
