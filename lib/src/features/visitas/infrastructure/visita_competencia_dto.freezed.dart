// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competencia_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaCompetenciaDTO {

@JsonKey(name: 'COD_VISITA') String get visitaId;@JsonKey(name: 'CODIGO_COMPETENCIA') int get codigoCompetencia;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of VisitaCompetenciaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaCompetenciaDTOCopyWith<VisitaCompetenciaDTO> get copyWith => _$VisitaCompetenciaDTOCopyWithImpl<VisitaCompetenciaDTO>(this as VisitaCompetenciaDTO, _$identity);

  /// Serializes this VisitaCompetenciaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaCompetenciaDTO&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitaId,codigoCompetencia,lastUpdated,deleted);

@override
String toString() {
  return 'VisitaCompetenciaDTO(visitaId: $visitaId, codigoCompetencia: $codigoCompetencia, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $VisitaCompetenciaDTOCopyWith<$Res>  {
  factory $VisitaCompetenciaDTOCopyWith(VisitaCompetenciaDTO value, $Res Function(VisitaCompetenciaDTO) _then) = _$VisitaCompetenciaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'COD_VISITA') String visitaId,@JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$VisitaCompetenciaDTOCopyWithImpl<$Res>
    implements $VisitaCompetenciaDTOCopyWith<$Res> {
  _$VisitaCompetenciaDTOCopyWithImpl(this._self, this._then);

  final VisitaCompetenciaDTO _self;
  final $Res Function(VisitaCompetenciaDTO) _then;

/// Create a copy of VisitaCompetenciaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitaId = null,Object? codigoCompetencia = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as String,codigoCompetencia: null == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaCompetenciaDTO].
extension VisitaCompetenciaDTOPatterns on VisitaCompetenciaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaCompetenciaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaCompetenciaDTO value)  $default,){
final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaCompetenciaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA')  String visitaId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO() when $default != null:
return $default(_that.visitaId,_that.codigoCompetencia,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA')  String visitaId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO():
return $default(_that.visitaId,_that.codigoCompetencia,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'COD_VISITA')  String visitaId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _VisitaCompetenciaDTO() when $default != null:
return $default(_that.visitaId,_that.codigoCompetencia,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaCompetenciaDTO extends VisitaCompetenciaDTO {
  const _VisitaCompetenciaDTO({@JsonKey(name: 'COD_VISITA') required this.visitaId, @JsonKey(name: 'CODIGO_COMPETENCIA') required this.codigoCompetencia, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _VisitaCompetenciaDTO.fromJson(Map<String, dynamic> json) => _$VisitaCompetenciaDTOFromJson(json);

@override@JsonKey(name: 'COD_VISITA') final  String visitaId;
@override@JsonKey(name: 'CODIGO_COMPETENCIA') final  int codigoCompetencia;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of VisitaCompetenciaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaCompetenciaDTOCopyWith<_VisitaCompetenciaDTO> get copyWith => __$VisitaCompetenciaDTOCopyWithImpl<_VisitaCompetenciaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaCompetenciaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaCompetenciaDTO&&(identical(other.visitaId, visitaId) || other.visitaId == visitaId)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitaId,codigoCompetencia,lastUpdated,deleted);

@override
String toString() {
  return 'VisitaCompetenciaDTO(visitaId: $visitaId, codigoCompetencia: $codigoCompetencia, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$VisitaCompetenciaDTOCopyWith<$Res> implements $VisitaCompetenciaDTOCopyWith<$Res> {
  factory _$VisitaCompetenciaDTOCopyWith(_VisitaCompetenciaDTO value, $Res Function(_VisitaCompetenciaDTO) _then) = __$VisitaCompetenciaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'COD_VISITA') String visitaId,@JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$VisitaCompetenciaDTOCopyWithImpl<$Res>
    implements _$VisitaCompetenciaDTOCopyWith<$Res> {
  __$VisitaCompetenciaDTOCopyWithImpl(this._self, this._then);

  final _VisitaCompetenciaDTO _self;
  final $Res Function(_VisitaCompetenciaDTO) _then;

/// Create a copy of VisitaCompetenciaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitaId = null,Object? codigoCompetencia = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_VisitaCompetenciaDTO(
visitaId: null == visitaId ? _self.visitaId : visitaId // ignore: cast_nullable_to_non_nullable
as String,codigoCompetencia: null == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
