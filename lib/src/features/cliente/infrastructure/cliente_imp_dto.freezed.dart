// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_imp_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteImpDTO {

@JsonKey(name: 'CLIENTE_ID') String get clienteId;@JsonKey(name: 'SECTOR_ID') String get sectorId;
/// Create a copy of ClienteImpDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteImpDTOCopyWith<ClienteImpDTO> get copyWith => _$ClienteImpDTOCopyWithImpl<ClienteImpDTO>(this as ClienteImpDTO, _$identity);

  /// Serializes this ClienteImpDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteImpDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,sectorId);

@override
String toString() {
  return 'ClienteImpDTO(clienteId: $clienteId, sectorId: $sectorId)';
}


}

/// @nodoc
abstract mixin class $ClienteImpDTOCopyWith<$Res>  {
  factory $ClienteImpDTOCopyWith(ClienteImpDTO value, $Res Function(ClienteImpDTO) _then) = _$ClienteImpDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'SECTOR_ID') String sectorId
});




}
/// @nodoc
class _$ClienteImpDTOCopyWithImpl<$Res>
    implements $ClienteImpDTOCopyWith<$Res> {
  _$ClienteImpDTOCopyWithImpl(this._self, this._then);

  final ClienteImpDTO _self;
  final $Res Function(ClienteImpDTO) _then;

/// Create a copy of ClienteImpDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? clienteId = null,Object? sectorId = null,}) {
  return _then(_self.copyWith(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,sectorId: null == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteImpDTO].
extension ClienteImpDTOPatterns on ClienteImpDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteImpDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteImpDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteImpDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteImpDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteImpDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteImpDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'SECTOR_ID')  String sectorId)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteImpDTO() when $default != null:
return $default(_that.clienteId,_that.sectorId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'SECTOR_ID')  String sectorId)  $default,) {final _that = this;
switch (_that) {
case _ClienteImpDTO():
return $default(_that.clienteId,_that.sectorId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'CLIENTE_ID')  String clienteId, @JsonKey(name: 'SECTOR_ID')  String sectorId)?  $default,) {final _that = this;
switch (_that) {
case _ClienteImpDTO() when $default != null:
return $default(_that.clienteId,_that.sectorId);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteImpDTO extends ClienteImpDTO {
  const _ClienteImpDTO({@JsonKey(name: 'CLIENTE_ID') required this.clienteId, @JsonKey(name: 'SECTOR_ID') required this.sectorId}): super._();
  factory _ClienteImpDTO.fromJson(Map<String, dynamic> json) => _$ClienteImpDTOFromJson(json);

@override@JsonKey(name: 'CLIENTE_ID') final  String clienteId;
@override@JsonKey(name: 'SECTOR_ID') final  String sectorId;

/// Create a copy of ClienteImpDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteImpDTOCopyWith<_ClienteImpDTO> get copyWith => __$ClienteImpDTOCopyWithImpl<_ClienteImpDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteImpDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteImpDTO&&(identical(other.clienteId, clienteId) || other.clienteId == clienteId)&&(identical(other.sectorId, sectorId) || other.sectorId == sectorId));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,clienteId,sectorId);

@override
String toString() {
  return 'ClienteImpDTO(clienteId: $clienteId, sectorId: $sectorId)';
}


}

/// @nodoc
abstract mixin class _$ClienteImpDTOCopyWith<$Res> implements $ClienteImpDTOCopyWith<$Res> {
  factory _$ClienteImpDTOCopyWith(_ClienteImpDTO value, $Res Function(_ClienteImpDTO) _then) = __$ClienteImpDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'CLIENTE_ID') String clienteId,@JsonKey(name: 'SECTOR_ID') String sectorId
});




}
/// @nodoc
class __$ClienteImpDTOCopyWithImpl<$Res>
    implements _$ClienteImpDTOCopyWith<$Res> {
  __$ClienteImpDTOCopyWithImpl(this._self, this._then);

  final _ClienteImpDTO _self;
  final $Res Function(_ClienteImpDTO) _then;

/// Create a copy of ClienteImpDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? clienteId = null,Object? sectorId = null,}) {
  return _then(_ClienteImpDTO(
clienteId: null == clienteId ? _self.clienteId : clienteId // ignore: cast_nullable_to_non_nullable
as String,sectorId: null == sectorId ? _self.sectorId : sectorId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
