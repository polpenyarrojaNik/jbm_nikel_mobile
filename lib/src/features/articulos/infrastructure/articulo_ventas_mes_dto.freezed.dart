// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'articulo_ventas_mes_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ArticuloVentasMesDTO {

@JsonKey(name: 'MES') int get mes;@JsonKey(name: 'UNIDADES_ANYO') int get unidadesAnyo;@JsonKey(name: 'UNIDADES_ANYO_1') int get unidadesAnyo_1;@JsonKey(name: 'UNIDADES_ANYO_2') int get unidadesAnyo_2;@JsonKey(name: 'UNIDADES_ANYO_3') int get unidadesAnyo_3;@JsonKey(name: 'UNIDADES_ANYO_4') int get unidadesAnyo_4;
/// Create a copy of ArticuloVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ArticuloVentasMesDTOCopyWith<ArticuloVentasMesDTO> get copyWith => _$ArticuloVentasMesDTOCopyWithImpl<ArticuloVentasMesDTO>(this as ArticuloVentasMesDTO, _$identity);

  /// Serializes this ArticuloVentasMesDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloVentasMesDTO&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.unidadesAnyo, unidadesAnyo) || other.unidadesAnyo == unidadesAnyo)&&(identical(other.unidadesAnyo_1, unidadesAnyo_1) || other.unidadesAnyo_1 == unidadesAnyo_1)&&(identical(other.unidadesAnyo_2, unidadesAnyo_2) || other.unidadesAnyo_2 == unidadesAnyo_2)&&(identical(other.unidadesAnyo_3, unidadesAnyo_3) || other.unidadesAnyo_3 == unidadesAnyo_3)&&(identical(other.unidadesAnyo_4, unidadesAnyo_4) || other.unidadesAnyo_4 == unidadesAnyo_4));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mes,unidadesAnyo,unidadesAnyo_1,unidadesAnyo_2,unidadesAnyo_3,unidadesAnyo_4);

@override
String toString() {
  return 'ArticuloVentasMesDTO(mes: $mes, unidadesAnyo: $unidadesAnyo, unidadesAnyo_1: $unidadesAnyo_1, unidadesAnyo_2: $unidadesAnyo_2, unidadesAnyo_3: $unidadesAnyo_3, unidadesAnyo_4: $unidadesAnyo_4)';
}


}

/// @nodoc
abstract mixin class $ArticuloVentasMesDTOCopyWith<$Res>  {
  factory $ArticuloVentasMesDTOCopyWith(ArticuloVentasMesDTO value, $Res Function(ArticuloVentasMesDTO) _then) = _$ArticuloVentasMesDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MES') int mes,@JsonKey(name: 'UNIDADES_ANYO') int unidadesAnyo,@JsonKey(name: 'UNIDADES_ANYO_1') int unidadesAnyo_1,@JsonKey(name: 'UNIDADES_ANYO_2') int unidadesAnyo_2,@JsonKey(name: 'UNIDADES_ANYO_3') int unidadesAnyo_3,@JsonKey(name: 'UNIDADES_ANYO_4') int unidadesAnyo_4
});




}
/// @nodoc
class _$ArticuloVentasMesDTOCopyWithImpl<$Res>
    implements $ArticuloVentasMesDTOCopyWith<$Res> {
  _$ArticuloVentasMesDTOCopyWithImpl(this._self, this._then);

  final ArticuloVentasMesDTO _self;
  final $Res Function(ArticuloVentasMesDTO) _then;

/// Create a copy of ArticuloVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mes = null,Object? unidadesAnyo = null,Object? unidadesAnyo_1 = null,Object? unidadesAnyo_2 = null,Object? unidadesAnyo_3 = null,Object? unidadesAnyo_4 = null,}) {
  return _then(_self.copyWith(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo: null == unidadesAnyo ? _self.unidadesAnyo : unidadesAnyo // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_1: null == unidadesAnyo_1 ? _self.unidadesAnyo_1 : unidadesAnyo_1 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_2: null == unidadesAnyo_2 ? _self.unidadesAnyo_2 : unidadesAnyo_2 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_3: null == unidadesAnyo_3 ? _self.unidadesAnyo_3 : unidadesAnyo_3 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_4: null == unidadesAnyo_4 ? _self.unidadesAnyo_4 : unidadesAnyo_4 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [ArticuloVentasMesDTO].
extension ArticuloVentasMesDTOPatterns on ArticuloVentasMesDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ArticuloVentasMesDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ArticuloVentasMesDTO value)  $default,){
final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ArticuloVentasMesDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'UNIDADES_ANYO')  int unidadesAnyo, @JsonKey(name: 'UNIDADES_ANYO_1')  int unidadesAnyo_1, @JsonKey(name: 'UNIDADES_ANYO_2')  int unidadesAnyo_2, @JsonKey(name: 'UNIDADES_ANYO_3')  int unidadesAnyo_3, @JsonKey(name: 'UNIDADES_ANYO_4')  int unidadesAnyo_4)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO() when $default != null:
return $default(_that.mes,_that.unidadesAnyo,_that.unidadesAnyo_1,_that.unidadesAnyo_2,_that.unidadesAnyo_3,_that.unidadesAnyo_4);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'UNIDADES_ANYO')  int unidadesAnyo, @JsonKey(name: 'UNIDADES_ANYO_1')  int unidadesAnyo_1, @JsonKey(name: 'UNIDADES_ANYO_2')  int unidadesAnyo_2, @JsonKey(name: 'UNIDADES_ANYO_3')  int unidadesAnyo_3, @JsonKey(name: 'UNIDADES_ANYO_4')  int unidadesAnyo_4)  $default,) {final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO():
return $default(_that.mes,_that.unidadesAnyo,_that.unidadesAnyo_1,_that.unidadesAnyo_2,_that.unidadesAnyo_3,_that.unidadesAnyo_4);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'UNIDADES_ANYO')  int unidadesAnyo, @JsonKey(name: 'UNIDADES_ANYO_1')  int unidadesAnyo_1, @JsonKey(name: 'UNIDADES_ANYO_2')  int unidadesAnyo_2, @JsonKey(name: 'UNIDADES_ANYO_3')  int unidadesAnyo_3, @JsonKey(name: 'UNIDADES_ANYO_4')  int unidadesAnyo_4)?  $default,) {final _that = this;
switch (_that) {
case _ArticuloVentasMesDTO() when $default != null:
return $default(_that.mes,_that.unidadesAnyo,_that.unidadesAnyo_1,_that.unidadesAnyo_2,_that.unidadesAnyo_3,_that.unidadesAnyo_4);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ArticuloVentasMesDTO extends ArticuloVentasMesDTO {
  const _ArticuloVentasMesDTO({@JsonKey(name: 'MES') required this.mes, @JsonKey(name: 'UNIDADES_ANYO') required this.unidadesAnyo, @JsonKey(name: 'UNIDADES_ANYO_1') required this.unidadesAnyo_1, @JsonKey(name: 'UNIDADES_ANYO_2') required this.unidadesAnyo_2, @JsonKey(name: 'UNIDADES_ANYO_3') required this.unidadesAnyo_3, @JsonKey(name: 'UNIDADES_ANYO_4') required this.unidadesAnyo_4}): super._();
  factory _ArticuloVentasMesDTO.fromJson(Map<String, dynamic> json) => _$ArticuloVentasMesDTOFromJson(json);

@override@JsonKey(name: 'MES') final  int mes;
@override@JsonKey(name: 'UNIDADES_ANYO') final  int unidadesAnyo;
@override@JsonKey(name: 'UNIDADES_ANYO_1') final  int unidadesAnyo_1;
@override@JsonKey(name: 'UNIDADES_ANYO_2') final  int unidadesAnyo_2;
@override@JsonKey(name: 'UNIDADES_ANYO_3') final  int unidadesAnyo_3;
@override@JsonKey(name: 'UNIDADES_ANYO_4') final  int unidadesAnyo_4;

/// Create a copy of ArticuloVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ArticuloVentasMesDTOCopyWith<_ArticuloVentasMesDTO> get copyWith => __$ArticuloVentasMesDTOCopyWithImpl<_ArticuloVentasMesDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ArticuloVentasMesDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ArticuloVentasMesDTO&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.unidadesAnyo, unidadesAnyo) || other.unidadesAnyo == unidadesAnyo)&&(identical(other.unidadesAnyo_1, unidadesAnyo_1) || other.unidadesAnyo_1 == unidadesAnyo_1)&&(identical(other.unidadesAnyo_2, unidadesAnyo_2) || other.unidadesAnyo_2 == unidadesAnyo_2)&&(identical(other.unidadesAnyo_3, unidadesAnyo_3) || other.unidadesAnyo_3 == unidadesAnyo_3)&&(identical(other.unidadesAnyo_4, unidadesAnyo_4) || other.unidadesAnyo_4 == unidadesAnyo_4));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mes,unidadesAnyo,unidadesAnyo_1,unidadesAnyo_2,unidadesAnyo_3,unidadesAnyo_4);

@override
String toString() {
  return 'ArticuloVentasMesDTO(mes: $mes, unidadesAnyo: $unidadesAnyo, unidadesAnyo_1: $unidadesAnyo_1, unidadesAnyo_2: $unidadesAnyo_2, unidadesAnyo_3: $unidadesAnyo_3, unidadesAnyo_4: $unidadesAnyo_4)';
}


}

/// @nodoc
abstract mixin class _$ArticuloVentasMesDTOCopyWith<$Res> implements $ArticuloVentasMesDTOCopyWith<$Res> {
  factory _$ArticuloVentasMesDTOCopyWith(_ArticuloVentasMesDTO value, $Res Function(_ArticuloVentasMesDTO) _then) = __$ArticuloVentasMesDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MES') int mes,@JsonKey(name: 'UNIDADES_ANYO') int unidadesAnyo,@JsonKey(name: 'UNIDADES_ANYO_1') int unidadesAnyo_1,@JsonKey(name: 'UNIDADES_ANYO_2') int unidadesAnyo_2,@JsonKey(name: 'UNIDADES_ANYO_3') int unidadesAnyo_3,@JsonKey(name: 'UNIDADES_ANYO_4') int unidadesAnyo_4
});




}
/// @nodoc
class __$ArticuloVentasMesDTOCopyWithImpl<$Res>
    implements _$ArticuloVentasMesDTOCopyWith<$Res> {
  __$ArticuloVentasMesDTOCopyWithImpl(this._self, this._then);

  final _ArticuloVentasMesDTO _self;
  final $Res Function(_ArticuloVentasMesDTO) _then;

/// Create a copy of ArticuloVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mes = null,Object? unidadesAnyo = null,Object? unidadesAnyo_1 = null,Object? unidadesAnyo_2 = null,Object? unidadesAnyo_3 = null,Object? unidadesAnyo_4 = null,}) {
  return _then(_ArticuloVentasMesDTO(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo: null == unidadesAnyo ? _self.unidadesAnyo : unidadesAnyo // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_1: null == unidadesAnyo_1 ? _self.unidadesAnyo_1 : unidadesAnyo_1 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_2: null == unidadesAnyo_2 ? _self.unidadesAnyo_2 : unidadesAnyo_2 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_3: null == unidadesAnyo_3 ? _self.unidadesAnyo_3 : unidadesAnyo_3 // ignore: cast_nullable_to_non_nullable
as int,unidadesAnyo_4: null == unidadesAnyo_4 ? _self.unidadesAnyo_4 : unidadesAnyo_4 // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
