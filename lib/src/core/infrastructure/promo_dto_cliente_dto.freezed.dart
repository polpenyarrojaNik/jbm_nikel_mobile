// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'promo_dto_cliente_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PromoDtoClienteDTO {

@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'PROMO_DTO_ID') String get promoDtoId;@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'TIPO') String get tipo;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of PromoDtoClienteDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PromoDtoClienteDTOCopyWith<PromoDtoClienteDTO> get copyWith => _$PromoDtoClienteDTOCopyWithImpl<PromoDtoClienteDTO>(this as PromoDtoClienteDTO, _$identity);

  /// Serializes this PromoDtoClienteDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PromoDtoClienteDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,clienteId,tipo,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoClienteDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, clienteId: $clienteId, tipo: $tipo, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $PromoDtoClienteDTOCopyWith<$Res>  {
  factory $PromoDtoClienteDTOCopyWith(PromoDtoClienteDTO value, $Res Function(PromoDtoClienteDTO) _then) = _$PromoDtoClienteDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'TIPO') String tipo,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$PromoDtoClienteDTOCopyWithImpl<$Res>
    implements $PromoDtoClienteDTOCopyWith<$Res> {
  _$PromoDtoClienteDTOCopyWithImpl(this._self, this._then);

  final PromoDtoClienteDTO _self;
  final $Res Function(PromoDtoClienteDTO) _then;

/// Create a copy of PromoDtoClienteDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? clienteId = null,Object? tipo = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PromoDtoClienteDTO].
extension PromoDtoClienteDTOPatterns on PromoDtoClienteDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PromoDtoClienteDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PromoDtoClienteDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PromoDtoClienteDTO value)  $default,){
final _that = this;
switch (_that) {
case _PromoDtoClienteDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PromoDtoClienteDTO value)?  $default,){
final _that = this;
switch (_that) {
case _PromoDtoClienteDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'TIPO')  String tipo, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PromoDtoClienteDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.clienteId,_that.tipo,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'TIPO')  String tipo, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _PromoDtoClienteDTO():
return $default(_that.empresaId,_that.promoDtoId,_that.clienteId,_that.tipo,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'PROMO_DTO_ID')  String promoDtoId, @JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'TIPO')  String tipo, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _PromoDtoClienteDTO() when $default != null:
return $default(_that.empresaId,_that.promoDtoId,_that.clienteId,_that.tipo,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PromoDtoClienteDTO extends PromoDtoClienteDTO {
  const _PromoDtoClienteDTO({@JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'PROMO_DTO_ID') required this.promoDtoId, @JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'TIPO') required this.tipo, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _PromoDtoClienteDTO.fromJson(Map<String, dynamic> json) => _$PromoDtoClienteDTOFromJson(json);

@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'PROMO_DTO_ID') final  String promoDtoId;
@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'TIPO') final  String tipo;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of PromoDtoClienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PromoDtoClienteDTOCopyWith<_PromoDtoClienteDTO> get copyWith => __$PromoDtoClienteDTOCopyWithImpl<_PromoDtoClienteDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PromoDtoClienteDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PromoDtoClienteDTO&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.promoDtoId, promoDtoId) || other.promoDtoId == promoDtoId)&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.tipo, tipo) || other.tipo == tipo)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,empresaId,promoDtoId,clienteId,tipo,lastUpdated,deleted);

@override
String toString() {
  return 'PromoDtoClienteDTO(empresaId: $empresaId, promoDtoId: $promoDtoId, clienteId: $clienteId, tipo: $tipo, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$PromoDtoClienteDTOCopyWith<$Res> implements $PromoDtoClienteDTOCopyWith<$Res> {
  factory _$PromoDtoClienteDTOCopyWith(_PromoDtoClienteDTO value, $Res Function(_PromoDtoClienteDTO) _then) = __$PromoDtoClienteDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'PROMO_DTO_ID') String promoDtoId,@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'TIPO') String tipo,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$PromoDtoClienteDTOCopyWithImpl<$Res>
    implements _$PromoDtoClienteDTOCopyWith<$Res> {
  __$PromoDtoClienteDTOCopyWithImpl(this._self, this._then);

  final _PromoDtoClienteDTO _self;
  final $Res Function(_PromoDtoClienteDTO) _then;

/// Create a copy of PromoDtoClienteDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? empresaId = null,Object? promoDtoId = null,Object? clienteId = null,Object? tipo = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_PromoDtoClienteDTO(
empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,promoDtoId: null == promoDtoId ? _self.promoDtoId : promoDtoId // ignore: cast_nullable_to_non_nullable
as String,clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,tipo: null == tipo ? _self.tipo : tipo // ignore: cast_nullable_to_non_nullable
as String,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
