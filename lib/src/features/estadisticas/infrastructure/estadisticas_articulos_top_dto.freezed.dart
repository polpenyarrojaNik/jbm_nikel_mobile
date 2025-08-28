// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'estadisticas_articulos_top_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EstadisitcasArticulosTopDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of EstadisitcasArticulosTopDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EstadisitcasArticulosTopDTOCopyWith<EstadisitcasArticulosTopDTO> get copyWith => _$EstadisitcasArticulosTopDTOCopyWithImpl<EstadisitcasArticulosTopDTO>(this as EstadisitcasArticulosTopDTO, _$identity);

  /// Serializes this EstadisitcasArticulosTopDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EstadisitcasArticulosTopDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisitcasArticulosTopDTO(articuloId: $articuloId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $EstadisitcasArticulosTopDTOCopyWith<$Res>  {
  factory $EstadisitcasArticulosTopDTOCopyWith(EstadisitcasArticulosTopDTO value, $Res Function(EstadisitcasArticulosTopDTO) _then) = _$EstadisitcasArticulosTopDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$EstadisitcasArticulosTopDTOCopyWithImpl<$Res>
    implements $EstadisitcasArticulosTopDTOCopyWith<$Res> {
  _$EstadisitcasArticulosTopDTOCopyWithImpl(this._self, this._then);

  final EstadisitcasArticulosTopDTO _self;
  final $Res Function(EstadisitcasArticulosTopDTO) _then;

/// Create a copy of EstadisitcasArticulosTopDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [EstadisitcasArticulosTopDTO].
extension EstadisitcasArticulosTopDTOPatterns on EstadisitcasArticulosTopDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _EstadisitcasArticulosTopDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _EstadisitcasArticulosTopDTO value)  $default,){
final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _EstadisitcasArticulosTopDTO value)?  $default,){
final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO() when $default != null:
return $default(_that.articuloId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO():
return $default(_that.articuloId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _EstadisitcasArticulosTopDTO() when $default != null:
return $default(_that.articuloId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _EstadisitcasArticulosTopDTO extends EstadisitcasArticulosTopDTO {
  const _EstadisitcasArticulosTopDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _EstadisitcasArticulosTopDTO.fromJson(Map<String, dynamic> json) => _$EstadisitcasArticulosTopDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of EstadisitcasArticulosTopDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EstadisitcasArticulosTopDTOCopyWith<_EstadisitcasArticulosTopDTO> get copyWith => __$EstadisitcasArticulosTopDTOCopyWithImpl<_EstadisitcasArticulosTopDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$EstadisitcasArticulosTopDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _EstadisitcasArticulosTopDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,lastUpdated,deleted);

@override
String toString() {
  return 'EstadisitcasArticulosTopDTO(articuloId: $articuloId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$EstadisitcasArticulosTopDTOCopyWith<$Res> implements $EstadisitcasArticulosTopDTOCopyWith<$Res> {
  factory _$EstadisitcasArticulosTopDTOCopyWith(_EstadisitcasArticulosTopDTO value, $Res Function(_EstadisitcasArticulosTopDTO) _then) = __$EstadisitcasArticulosTopDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$EstadisitcasArticulosTopDTOCopyWithImpl<$Res>
    implements _$EstadisitcasArticulosTopDTOCopyWith<$Res> {
  __$EstadisitcasArticulosTopDTOCopyWithImpl(this._self, this._then);

  final _EstadisitcasArticulosTopDTO _self;
  final $Res Function(_EstadisitcasArticulosTopDTO) _then;

/// Create a copy of EstadisitcasArticulosTopDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_EstadisitcasArticulosTopDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
