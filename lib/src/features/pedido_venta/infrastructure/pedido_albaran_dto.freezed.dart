// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_albaran_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PedidoAlbaranDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PEDIDO_ID') String get pedidoVentaId;@JsonKey(name: 'ALBARAN_ID') String get albaranId;@JsonKey(name: 'FECHA_ALBARAN') DateTime get fechaAlbaran;@JsonKey(name: 'AGENCIA') String? get agencia;@JsonKey(name: 'TRACK_ID') String? get trackId;@JsonKey(name: 'TRACKING_ESTADO') String? get trackingEstadoId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PedidoAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoAlbaranDTOCopyWith<PedidoAlbaranDTO> get copyWith => _$PedidoAlbaranDTOCopyWithImpl<PedidoAlbaranDTO>(this as PedidoAlbaranDTO, _$identity);

  /// Serializes this PedidoAlbaranDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoAlbaranDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.trackingEstadoId, trackingEstadoId) || other.trackingEstadoId == trackingEstadoId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoVentaId,albaranId,fechaAlbaran,agencia,trackId,trackingEstadoId,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoAlbaranDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, agencia: $agencia, trackId: $trackId, trackingEstadoId: $trackingEstadoId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PedidoAlbaranDTOCopyWith<$Res>  {
  factory $PedidoAlbaranDTOCopyWith(PedidoAlbaranDTO value, $Res Function(PedidoAlbaranDTO) _then) = _$PedidoAlbaranDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,@JsonKey(name: 'AGENCIA') String? agencia,@JsonKey(name: 'TRACK_ID') String? trackId,@JsonKey(name: 'TRACKING_ESTADO') String? trackingEstadoId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PedidoAlbaranDTOCopyWithImpl<$Res>
    implements $PedidoAlbaranDTOCopyWith<$Res> {
  _$PedidoAlbaranDTOCopyWithImpl(this._self, this._then);

  final PedidoAlbaranDTO _self;
  final $Res Function(PedidoAlbaranDTO) _then;

/// Create a copy of PedidoAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? agencia = freezed,Object? trackId = freezed,Object? trackingEstadoId = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,trackingEstadoId: freezed == trackingEstadoId ? _self.trackingEstadoId : trackingEstadoId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoAlbaranDTO].
extension PedidoAlbaranDTOPatterns on PedidoAlbaranDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoAlbaranDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoAlbaranDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoAlbaranDTO value)  $default,){
final _that = this;
switch (_that) {
case _PedidoAlbaranDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoAlbaranDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoAlbaranDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'TRACKING_ESTADO')  String? trackingEstadoId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoAlbaranDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstadoId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'TRACKING_ESTADO')  String? trackingEstadoId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PedidoAlbaranDTO():
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstadoId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PEDIDO_ID')  String pedidoVentaId, @JsonKey(name: 'ALBARAN_ID')  String albaranId, @JsonKey(name: 'FECHA_ALBARAN')  DateTime fechaAlbaran, @JsonKey(name: 'AGENCIA')  String? agencia, @JsonKey(name: 'TRACK_ID')  String? trackId, @JsonKey(name: 'TRACKING_ESTADO')  String? trackingEstadoId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PedidoAlbaranDTO() when $default != null:
return $default(_that.empresaId,_that.pedidoVentaId,_that.albaranId,_that.fechaAlbaran,_that.agencia,_that.trackId,_that.trackingEstadoId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PedidoAlbaranDTO extends PedidoAlbaranDTO {
  const _PedidoAlbaranDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PEDIDO_ID') required this.pedidoVentaId, @JsonKey(name: 'ALBARAN_ID') required this.albaranId, @JsonKey(name: 'FECHA_ALBARAN') required this.fechaAlbaran, @JsonKey(name: 'AGENCIA') this.agencia, @JsonKey(name: 'TRACK_ID') this.trackId, @JsonKey(name: 'TRACKING_ESTADO') this.trackingEstadoId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') required this.deleted}): super._();
  factory _PedidoAlbaranDTO.fromJson(Map<String, dynamic> json) => _$PedidoAlbaranDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PEDIDO_ID') final  String pedidoVentaId;
@override@JsonKey(name: 'ALBARAN_ID') final  String albaranId;
@override@JsonKey(name: 'FECHA_ALBARAN') final  DateTime fechaAlbaran;
@override@JsonKey(name: 'AGENCIA') final  String? agencia;
@override@JsonKey(name: 'TRACK_ID') final  String? trackId;
@override@JsonKey(name: 'TRACKING_ESTADO') final  String? trackingEstadoId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PedidoAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoAlbaranDTOCopyWith<_PedidoAlbaranDTO> get copyWith => __$PedidoAlbaranDTOCopyWithImpl<_PedidoAlbaranDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PedidoAlbaranDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoAlbaranDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.pedidoVentaId, pedidoVentaId) || other.pedidoVentaId == pedidoVentaId)&&(identical(other.albaranId, albaranId) || other.albaranId == albaranId)&&(identical(other.fechaAlbaran, fechaAlbaran) || other.fechaAlbaran == fechaAlbaran)&&(identical(other.agencia, agencia) || other.agencia == agencia)&&(identical(other.trackId, trackId) || other.trackId == trackId)&&(identical(other.trackingEstadoId, trackingEstadoId) || other.trackingEstadoId == trackingEstadoId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,pedidoVentaId,albaranId,fechaAlbaran,agencia,trackId,trackingEstadoId,lastUpdated,deleted);

@override
String toString() {
  return 'PedidoAlbaranDTO(empresaId: $empresaId, pedidoVentaId: $pedidoVentaId, albaranId: $albaranId, fechaAlbaran: $fechaAlbaran, agencia: $agencia, trackId: $trackId, trackingEstadoId: $trackingEstadoId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PedidoAlbaranDTOCopyWith<$Res> implements $PedidoAlbaranDTOCopyWith<$Res> {
  factory _$PedidoAlbaranDTOCopyWith(_PedidoAlbaranDTO value, $Res Function(_PedidoAlbaranDTO) _then) = __$PedidoAlbaranDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PEDIDO_ID') String pedidoVentaId,@JsonKey(name: 'ALBARAN_ID') String albaranId,@JsonKey(name: 'FECHA_ALBARAN') DateTime fechaAlbaran,@JsonKey(name: 'AGENCIA') String? agencia,@JsonKey(name: 'TRACK_ID') String? trackId,@JsonKey(name: 'TRACKING_ESTADO') String? trackingEstadoId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PedidoAlbaranDTOCopyWithImpl<$Res>
    implements _$PedidoAlbaranDTOCopyWith<$Res> {
  __$PedidoAlbaranDTOCopyWithImpl(this._self, this._then);

  final _PedidoAlbaranDTO _self;
  final $Res Function(_PedidoAlbaranDTO) _then;

/// Create a copy of PedidoAlbaranDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? pedidoVentaId = null,Object? albaranId = null,Object? fechaAlbaran = null,Object? agencia = freezed,Object? trackId = freezed,Object? trackingEstadoId = freezed,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PedidoAlbaranDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,pedidoVentaId: null == pedidoVentaId ? _self.pedidoVentaId : pedidoVentaId // ignore: cast_nullable_to_non_nullable
as String,albaranId: null == albaranId ? _self.albaranId : albaranId // ignore: cast_nullable_to_non_nullable
as String,fechaAlbaran: null == fechaAlbaran ? _self.fechaAlbaran : fechaAlbaran // ignore: cast_nullable_to_non_nullable
as DateTime,agencia: freezed == agencia ? _self.agencia : agencia // ignore: cast_nullable_to_non_nullable
as String?,trackId: freezed == trackId ? _self.trackId : trackId // ignore: cast_nullable_to_non_nullable
as String?,trackingEstadoId: freezed == trackingEstadoId ? _self.trackingEstadoId : trackingEstadoId // ignore: cast_nullable_to_non_nullable
as String?,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
