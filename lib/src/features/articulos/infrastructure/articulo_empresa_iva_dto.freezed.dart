// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_empresa_iva_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloEmpresaIvaDTO {

@JsonKey(name: 'ARTICULO_ID') String get articuloId;@JsonKey(name: 'EMPRESA_ID') String get empresaId;@JsonKey(name: 'IVA') double get iva;@JsonKey(name: 'LAST_UPDATED') DateTime get lastUpdated;@JsonKey(name: 'DELETED') String get deleted;
/// Create a copy of ArticuloEmpresaIvaDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloEmpresaIvaDTOCopyWith<ArticuloEmpresaIvaDTO> get copyWith => _$ArticuloEmpresaIvaDTOCopyWithImpl<ArticuloEmpresaIvaDTO>(this as ArticuloEmpresaIvaDTO, _$identity);

  /// Serializes this ArticuloEmpresaIvaDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloEmpresaIvaDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,empresaId,iva,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloEmpresaIvaDTO(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class $ArticuloEmpresaIvaDTOCopyWith<$Res>  {
  factory $ArticuloEmpresaIvaDTOCopyWith(ArticuloEmpresaIvaDTO value, $Res Function(ArticuloEmpresaIvaDTO) _then) = _$ArticuloEmpresaIvaDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class _$ArticuloEmpresaIvaDTOCopyWithImpl<$Res>
    implements $ArticuloEmpresaIvaDTOCopyWith<$Res> {
  _$ArticuloEmpresaIvaDTOCopyWithImpl(this._self, this._then);

  final ArticuloEmpresaIvaDTO _self;
  final $Res Function(ArticuloEmpresaIvaDTO) _then;

/// Create a copy of ArticuloEmpresaIvaDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? articuloId = null,Object? empresaId = null,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_self.copyWith(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloEmpresaIvaDTO].
extension ArticuloEmpresaIvaDTOPatterns on ArticuloEmpresaIvaDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloEmpresaIvaDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloEmpresaIvaDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloEmpresaIvaDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO() when $default != null:
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)  $default,) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO():
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'ARTICULO_ID')  String articuloId, @JsonKey(name: 'EMPRESA_ID')  String empresaId, @JsonKey(name: 'IVA')  double iva, @JsonKey(name: 'LAST_UPDATED')  DateTime lastUpdated, @JsonKey(name: 'DELETED')  String deleted)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloEmpresaIvaDTO() when $default != null:
return $default(_that.articuloId,_that.empresaId,_that.iva,_that.lastUpdated,_that.deleted);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloEmpresaIvaDTO extends ArticuloEmpresaIvaDTO {
  const _ArticuloEmpresaIvaDTO({@JsonKey(name: 'ARTICULO_ID') required this.articuloId, @JsonKey(name: 'EMPRESA_ID') required this.empresaId, @JsonKey(name: 'IVA') required this.iva, @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated, @JsonKey(name: 'DELETED') this.deleted = 'N'}): super._();
  factory _ArticuloEmpresaIvaDTO.fromJson(Map<String, dynamic> json) => _$ArticuloEmpresaIvaDTOFromJson(json);

@override@JsonKey(name: 'ARTICULO_ID') final  String articuloId;
@override@JsonKey(name: 'EMPRESA_ID') final  String empresaId;
@override@JsonKey(name: 'IVA') final  double iva;
@override@JsonKey(name: 'LAST_UPDATED') final  DateTime lastUpdated;
@override@JsonKey(name: 'DELETED') final  String deleted;

/// Create a copy of ArticuloEmpresaIvaDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloEmpresaIvaDTOCopyWith<_ArticuloEmpresaIvaDTO> get copyWith => __$ArticuloEmpresaIvaDTOCopyWithImpl<_ArticuloEmpresaIvaDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloEmpresaIvaDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloEmpresaIvaDTO&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.empresaId, empresaId) || other.empresaId == empresaId)&&(identical(other.iva, iva) || other.iva == iva)&&(identical(other.lastUpdated, lastUpdated) || other.lastUpdated == lastUpdated)&&(identical(other.deleted, deleted) || other.deleted == deleted));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,articuloId,empresaId,iva,lastUpdated,deleted);

@override
String toString() {
  return 'ArticuloEmpresaIvaDTO(articuloId: $articuloId, empresaId: $empresaId, iva: $iva, lastUpdated: $lastUpdated, deleted: $deleted)';
}


}

/// @nodoc
abstract mixin class _$ArticuloEmpresaIvaDTOCopyWith<$Res> implements $ArticuloEmpresaIvaDTOCopyWith<$Res> {
  factory _$ArticuloEmpresaIvaDTOCopyWith(_ArticuloEmpresaIvaDTO value, $Res Function(_ArticuloEmpresaIvaDTO) _then) = __$ArticuloEmpresaIvaDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'ARTICULO_ID') String articuloId,@JsonKey(name: 'EMPRESA_ID') String empresaId,@JsonKey(name: 'IVA') double iva,@JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,@JsonKey(name: 'DELETED') String deleted
});




}
/// @nodoc
class __$ArticuloEmpresaIvaDTOCopyWithImpl<$Res>
    implements _$ArticuloEmpresaIvaDTOCopyWith<$Res> {
  __$ArticuloEmpresaIvaDTOCopyWithImpl(this._self, this._then);

  final _ArticuloEmpresaIvaDTO _self;
  final $Res Function(_ArticuloEmpresaIvaDTO) _then;

/// Create a copy of ArticuloEmpresaIvaDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? articuloId = null,Object? empresaId = null,Object? iva = null,Object? lastUpdated = null,Object? deleted = null,}) {
  return _then(_ArticuloEmpresaIvaDTO(
articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,empresaId: null == empresaId ? _self.empresaId : empresaId // ignore: cast_nullable_to_non_nullable
as String,iva: null == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double,lastUpdated: null == lastUpdated ? _self.lastUpdated : lastUpdated // ignore: cast_nullable_to_non_nullable
as DateTime,deleted: null == deleted ? _self.deleted : deleted // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
