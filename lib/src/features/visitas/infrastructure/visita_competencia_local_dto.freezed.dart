// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'visita_competencia_local_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VisitaCompetenciaLocalDTO {

@JsonKey(name: 'COD_VISITA_APP') String get visitaAppId;@JsonKey(name: 'CODIGO_COMPETENCIA') int get codigoCompetencia;
/// Create a copy of VisitaCompetenciaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VisitaCompetenciaLocalDTOCopyWith<VisitaCompetenciaLocalDTO> get copyWith => _$VisitaCompetenciaLocalDTOCopyWithImpl<VisitaCompetenciaLocalDTO>(this as VisitaCompetenciaLocalDTO, _$identity);

  /// Serializes this VisitaCompetenciaLocalDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VisitaCompetenciaLocalDTO&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitaAppId,codigoCompetencia);

@override
String toString() {
  return 'VisitaCompetenciaLocalDTO(visitaAppId: $visitaAppId, codigoCompetencia: $codigoCompetencia)';
}


}

/// @nodoc
abstract mixin class $VisitaCompetenciaLocalDTOCopyWith<$Res>  {
  factory $VisitaCompetenciaLocalDTOCopyWith(VisitaCompetenciaLocalDTO value, $Res Function(VisitaCompetenciaLocalDTO) _then) = _$VisitaCompetenciaLocalDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'COD_VISITA_APP') String visitaAppId,@JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia
});




}
/// @nodoc
class _$VisitaCompetenciaLocalDTOCopyWithImpl<$Res>
    implements $VisitaCompetenciaLocalDTOCopyWith<$Res> {
  _$VisitaCompetenciaLocalDTOCopyWithImpl(this._self, this._then);

  final VisitaCompetenciaLocalDTO _self;
  final $Res Function(VisitaCompetenciaLocalDTO) _then;

/// Create a copy of VisitaCompetenciaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? visitaAppId = null,Object? codigoCompetencia = null,}) {
  return _then(_self.copyWith(
visitaAppId: null == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String,codigoCompetencia: null == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [VisitaCompetenciaLocalDTO].
extension VisitaCompetenciaLocalDTOPatterns on VisitaCompetenciaLocalDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VisitaCompetenciaLocalDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VisitaCompetenciaLocalDTO value)  $default,){
final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VisitaCompetenciaLocalDTO value)?  $default,){
final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA_APP')  String visitaAppId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO() when $default != null:
return $default(_that.visitaAppId,_that.codigoCompetencia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'COD_VISITA_APP')  String visitaAppId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia)  $default,) {final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO():
return $default(_that.visitaAppId,_that.codigoCompetencia);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'COD_VISITA_APP')  String visitaAppId, @JsonKey(name: 'CODIGO_COMPETENCIA')  int codigoCompetencia)?  $default,) {final _that = this;
switch (_that) {
case _VisitaCompetenciaLocalDTO() when $default != null:
return $default(_that.visitaAppId,_that.codigoCompetencia);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VisitaCompetenciaLocalDTO extends VisitaCompetenciaLocalDTO {
  const _VisitaCompetenciaLocalDTO({@JsonKey(name: 'COD_VISITA_APP') required this.visitaAppId, @JsonKey(name: 'CODIGO_COMPETENCIA') required this.codigoCompetencia}): super._();
  factory _VisitaCompetenciaLocalDTO.fromJson(Map<String, dynamic> json) => _$VisitaCompetenciaLocalDTOFromJson(json);

@override@JsonKey(name: 'COD_VISITA_APP') final  String visitaAppId;
@override@JsonKey(name: 'CODIGO_COMPETENCIA') final  int codigoCompetencia;

/// Create a copy of VisitaCompetenciaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VisitaCompetenciaLocalDTOCopyWith<_VisitaCompetenciaLocalDTO> get copyWith => __$VisitaCompetenciaLocalDTOCopyWithImpl<_VisitaCompetenciaLocalDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VisitaCompetenciaLocalDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _VisitaCompetenciaLocalDTO&&(identical(other.visitaAppId, visitaAppId) || other.visitaAppId == visitaAppId)&&(identical(other.codigoCompetencia, codigoCompetencia) || other.codigoCompetencia == codigoCompetencia));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,visitaAppId,codigoCompetencia);

@override
String toString() {
  return 'VisitaCompetenciaLocalDTO(visitaAppId: $visitaAppId, codigoCompetencia: $codigoCompetencia)';
}


}

/// @nodoc
abstract mixin class _$VisitaCompetenciaLocalDTOCopyWith<$Res> implements $VisitaCompetenciaLocalDTOCopyWith<$Res> {
  factory _$VisitaCompetenciaLocalDTOCopyWith(_VisitaCompetenciaLocalDTO value, $Res Function(_VisitaCompetenciaLocalDTO) _then) = __$VisitaCompetenciaLocalDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'COD_VISITA_APP') String visitaAppId,@JsonKey(name: 'CODIGO_COMPETENCIA') int codigoCompetencia
});




}
/// @nodoc
class __$VisitaCompetenciaLocalDTOCopyWithImpl<$Res>
    implements _$VisitaCompetenciaLocalDTOCopyWith<$Res> {
  __$VisitaCompetenciaLocalDTOCopyWithImpl(this._self, this._then);

  final _VisitaCompetenciaLocalDTO _self;
  final $Res Function(_VisitaCompetenciaLocalDTO) _then;

/// Create a copy of VisitaCompetenciaLocalDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? visitaAppId = null,Object? codigoCompetencia = null,}) {
  return _then(_VisitaCompetenciaLocalDTO(
visitaAppId: null == visitaAppId ? _self.visitaAppId : visitaAppId // ignore: cast_nullable_to_non_nullable
as String,codigoCompetencia: null == codigoCompetencia ? _self.codigoCompetencia : codigoCompetencia // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
