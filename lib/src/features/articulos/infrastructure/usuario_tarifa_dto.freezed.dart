// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_tarifa_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsuarioTarifaDTO {

@JsonKey(name: 'USUARIO_ID') String get usuarioId;@JsonKey(name: 'TARIFA_ID') String get tarifaId;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of UsuarioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioTarifaDTOCopyWith<UsuarioTarifaDTO> get copyWith => _$UsuarioTarifaDTOCopyWithImpl<UsuarioTarifaDTO>(this as UsuarioTarifaDTO, _$identity);

  /// Serializes this UsuarioTarifaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsuarioTarifaDTO&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuarioId,tarifaId,lastUpdated,deleted);

@override
String toString() {
  return 'UsuarioTarifaDTO(usuarioId: $usuarioId, tarifaId: $tarifaId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $UsuarioTarifaDTOCopyWith<$Res>  {
  factory $UsuarioTarifaDTOCopyWith(UsuarioTarifaDTO value, $Res Function(UsuarioTarifaDTO) _then) = _$UsuarioTarifaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'TARIFA_ID') String tarifaId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$UsuarioTarifaDTOCopyWithImpl<$Res>
    implements $UsuarioTarifaDTOCopyWith<$Res> {
  _$UsuarioTarifaDTOCopyWithImpl(this._self, this._then);

  final UsuarioTarifaDTO _self;
  final $Res Function(UsuarioTarifaDTO) _then;

/// Create a copy of UsuarioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? usuarioId = null,Object? tarifaId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [UsuarioTarifaDTO].
extension UsuarioTarifaDTOPatterns on UsuarioTarifaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsuarioTarifaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsuarioTarifaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsuarioTarifaDTO value)  $default,){
final _that = this;
switch (_that) {
case _UsuarioTarifaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsuarioTarifaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UsuarioTarifaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsuarioTarifaDTO() when $default != null:
return $default(_that.usuarioId,_that.tarifaId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _UsuarioTarifaDTO():
return $default(_that.usuarioId,_that.tarifaId,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'USUARIO_ID')  String usuarioId, @JsonKey(name: 'TARIFA_ID')  String tarifaId, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _UsuarioTarifaDTO() when $default != null:
return $default(_that.usuarioId,_that.tarifaId,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsuarioTarifaDTO extends UsuarioTarifaDTO {
  const _UsuarioTarifaDTO({@JsonKey(name: 'USUARIO_ID') required this.usuarioId, @JsonKey(name: 'TARIFA_ID') required this.tarifaId, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _UsuarioTarifaDTO.fromJson(Map<String, dynamic> json) => _$UsuarioTarifaDTOFromJson(json);

@override@JsonKey(name: 'USUARIO_ID') final  String usuarioId;
@override@JsonKey(name: 'TARIFA_ID') final  String tarifaId;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of UsuarioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioTarifaDTOCopyWith<_UsuarioTarifaDTO> get copyWith => __$UsuarioTarifaDTOCopyWithImpl<_UsuarioTarifaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsuarioTarifaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsuarioTarifaDTO&&(identical(other.usuarioId, usuarioId) || other.usuarioId == usuarioId)&&(identical(other.tarifaId, tarifaId) || other.tarifaId == tarifaId)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,usuarioId,tarifaId,lastUpdated,deleted);

@override
String toString() {
  return 'UsuarioTarifaDTO(usuarioId: $usuarioId, tarifaId: $tarifaId, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$UsuarioTarifaDTOCopyWith<$Res> implements $UsuarioTarifaDTOCopyWith<$Res> {
  factory _$UsuarioTarifaDTOCopyWith(_UsuarioTarifaDTO value, $Res Function(_UsuarioTarifaDTO) _then) = __$UsuarioTarifaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String usuarioId,@JsonKey(name: 'TARIFA_ID') String tarifaId,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$UsuarioTarifaDTOCopyWithImpl<$Res>
    implements _$UsuarioTarifaDTOCopyWith<$Res> {
  __$UsuarioTarifaDTOCopyWithImpl(this._self, this._then);

  final _UsuarioTarifaDTO _self;
  final $Res Function(_UsuarioTarifaDTO) _then;

/// Create a copy of UsuarioTarifaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? usuarioId = null,Object? tarifaId = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_UsuarioTarifaDTO(
usuarioId: null == usuarioId ? _self.usuarioId : usuarioId // ignore: cast_nullable_to_non_nullable
as String,tarifaId: null == tarifaId ? _self.tarifaId : tarifaId // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
