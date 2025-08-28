// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_sustitutivo_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloSustitutivoDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String get articuloSustitutivoId;@JsonKey(name: 'ORDEN') int get orden;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloSustitutivoDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloSustitutivoDTOCopyWith<ArticuloSustitutivoDTO> get copyWith => _$ArticuloSustitutivoDTOCopyWithImpl<ArticuloSustitutivoDTO>(this as ArticuloSustitutivoDTO, _$identity);

  /// Serializes this ArticuloSustitutivoDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloSustitutivoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloSustitutivoId, articuloSustitutivoId) || other.articuloSustitutivoId == articuloSustitutivoId)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,articuloSustitutivoId,orden,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloSustitutivoDTO(articuloId: $articuloId, articuloSustitutivoId: $articuloSustitutivoId, orden: $orden, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloSustitutivoDTOCopyWith<$Res>  {
  factory $ArticuloSustitutivoDTOCopyWith(ArticuloSustitutivoDTO value, $Res Function(ArticuloSustitutivoDTO) _then) = _$ArticuloSustitutivoDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String articuloSustitutivoId,@JsonKey(name: 'ORDEN') int orden,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloSustitutivoDTOCopyWithImpl<$Res>
    implements $ArticuloSustitutivoDTOCopyWith<$Res> {
  _$ArticuloSustitutivoDTOCopyWithImpl(this._self, this._then);

  final ArticuloSustitutivoDTO _self;
  final $Res Function(ArticuloSustitutivoDTO) _then;

/// Create a copy of ArticuloSustitutivoDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? articuloSustitutivoId = null,Object? orden = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoId: null == articuloSustitutivoId ? _self.articuloSustitutivoId : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloSustitutivoDTO].
extension ArticuloSustitutivoDTOPatterns on ArticuloSustitutivoDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloSustitutivoDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloSustitutivoDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloSustitutivoDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')  String articuloSustitutivoId, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO() when $default != null:
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.orden,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')  String articuloSustitutivoId, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO():
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.orden,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO')  String articuloSustitutivoId, @JsonKey(name: 'ORDEN')  int orden, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloSustitutivoDTO() when $default != null:
return $default(_that.articuloId,_that.articuloSustitutivoId,_that.orden,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloSustitutivoDTO extends ArticuloSustitutivoDTO {
  const _ArticuloSustitutivoDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') required this.articuloSustitutivoId, @JsonKey(name: 'ORDEN') required this.orden, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloSustitutivoDTO.fromJson(Map<String, dynamic> json) => _$ArticuloSustitutivoDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') final  String articuloSustitutivoId;
@override@JsonKey(name: 'ORDEN') final  int orden;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloSustitutivoDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloSustitutivoDTOCopyWith<_ArticuloSustitutivoDTO> get copyWith => __$ArticuloSustitutivoDTOCopyWithImpl<_ArticuloSustitutivoDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloSustitutivoDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloSustitutivoDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloSustitutivoId, articuloSustitutivoId) || other.articuloSustitutivoId == articuloSustitutivoId)&&(identical(other.orden, orden) || other.orden == orden)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,articuloSustitutivoId,orden,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloSustitutivoDTO(articuloId: $articuloId, articuloSustitutivoId: $articuloSustitutivoId, orden: $orden, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloSustitutivoDTOCopyWith<$Res> implements $ArticuloSustitutivoDTOCopyWith<$Res> {
  factory _$ArticuloSustitutivoDTOCopyWith(_ArticuloSustitutivoDTO value, $Res Function(_ArticuloSustitutivoDTO) _then) = __$ArticuloSustitutivoDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'ARTICULO_ID_SUSTITUTIVO') String articuloSustitutivoId,@JsonKey(name: 'ORDEN') int orden,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloSustitutivoDTOCopyWithImpl<$Res>
    implements _$ArticuloSustitutivoDTOCopyWith<$Res> {
  __$ArticuloSustitutivoDTOCopyWithImpl(this._self, this._then);

  final _ArticuloSustitutivoDTO _self;
  final $Res Function(_ArticuloSustitutivoDTO) _then;

/// Create a copy of ArticuloSustitutivoDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? articuloSustitutivoId = null,Object? orden = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloSustitutivoDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloSustitutivoId: null == articuloSustitutivoId ? _self.articuloSustitutivoId : articuloSustitutivoId // ignore: cast_nullable_to_non_nullable
as String,orden: null == orden ? _self.orden : orden // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
