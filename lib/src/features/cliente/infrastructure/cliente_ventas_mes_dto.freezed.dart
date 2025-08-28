// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_ventas_mes_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ClienteVentasMesDTO {

@JsonKey(name: 'MES') int get mes;@JsonKey(name: 'IMPORTE_ANYO') double get importeAnyo;@JsonKey(name: 'IMPORTE_ANYO_1') double get importeAnyo_1;@JsonKey(name: 'IMPORTE_ANYO_2') double get importeAnyo_2;@JsonKey(name: 'IMPORTE_ANYO_3') double get importeAnyo_3;@JsonKey(name: 'IMPORTE_ANYO_4') double get importeAnyo_4;
/// Create a copy of ClienteVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteVentasMesDTOCopyWith<ClienteVentasMesDTO> get copyWith => _$ClienteVentasMesDTOCopyWithImpl<ClienteVentasMesDTO>(this as ClienteVentasMesDTO, _$identity);

  /// Serializes this ClienteVentasMesDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteVentasMesDTO&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importeAnyo, importeAnyo) || other.importeAnyo == importeAnyo)&&(identical(other.importeAnyo_1, importeAnyo_1) || other.importeAnyo_1 == importeAnyo_1)&&(identical(other.importeAnyo_2, importeAnyo_2) || other.importeAnyo_2 == importeAnyo_2)&&(identical(other.importeAnyo_3, importeAnyo_3) || other.importeAnyo_3 == importeAnyo_3)&&(identical(other.importeAnyo_4, importeAnyo_4) || other.importeAnyo_4 == importeAnyo_4));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mes,importeAnyo,importeAnyo_1,importeAnyo_2,importeAnyo_3,importeAnyo_4);

@override
String toString() {
  return 'ClienteVentasMesDTO(mes: $mes, importeAnyo: $importeAnyo, importeAnyo_1: $importeAnyo_1, importeAnyo_2: $importeAnyo_2, importeAnyo_3: $importeAnyo_3, importeAnyo_4: $importeAnyo_4)';
}


}

/// @nodoc
abstract mixin class $ClienteVentasMesDTOCopyWith<$Res>  {
  factory $ClienteVentasMesDTOCopyWith(ClienteVentasMesDTO value, $Res Function(ClienteVentasMesDTO) _then) = _$ClienteVentasMesDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'MES') int mes,@JsonKey(name: 'IMPORTE_ANYO') double importeAnyo,@JsonKey(name: 'IMPORTE_ANYO_1') double importeAnyo_1,@JsonKey(name: 'IMPORTE_ANYO_2') double importeAnyo_2,@JsonKey(name: 'IMPORTE_ANYO_3') double importeAnyo_3,@JsonKey(name: 'IMPORTE_ANYO_4') double importeAnyo_4
});




}
/// @nodoc
class _$ClienteVentasMesDTOCopyWithImpl<$Res>
    implements $ClienteVentasMesDTOCopyWith<$Res> {
  _$ClienteVentasMesDTOCopyWithImpl(this._self, this._then);

  final ClienteVentasMesDTO _self;
  final $Res Function(ClienteVentasMesDTO) _then;

/// Create a copy of ClienteVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mes = null,Object? importeAnyo = null,Object? importeAnyo_1 = null,Object? importeAnyo_2 = null,Object? importeAnyo_3 = null,Object? importeAnyo_4 = null,}) {
  return _then(_self.copyWith(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,importeAnyo: null == importeAnyo ? _self.importeAnyo : importeAnyo // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_1: null == importeAnyo_1 ? _self.importeAnyo_1 : importeAnyo_1 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_2: null == importeAnyo_2 ? _self.importeAnyo_2 : importeAnyo_2 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_3: null == importeAnyo_3 ? _self.importeAnyo_3 : importeAnyo_3 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_4: null == importeAnyo_4 ? _self.importeAnyo_4 : importeAnyo_4 // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteVentasMesDTO].
extension ClienteVentasMesDTOPatterns on ClienteVentasMesDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteVentasMesDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteVentasMesDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteVentasMesDTO value)  $default,){
final _that = this;
switch (_that) {
case _ClienteVentasMesDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteVentasMesDTO value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteVentasMesDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'IMPORTE_ANYO')  double importeAnyo, @JsonKey(name: 'IMPORTE_ANYO_1')  double importeAnyo_1, @JsonKey(name: 'IMPORTE_ANYO_2')  double importeAnyo_2, @JsonKey(name: 'IMPORTE_ANYO_3')  double importeAnyo_3, @JsonKey(name: 'IMPORTE_ANYO_4')  double importeAnyo_4)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteVentasMesDTO() when $default != null:
return $default(_that.mes,_that.importeAnyo,_that.importeAnyo_1,_that.importeAnyo_2,_that.importeAnyo_3,_that.importeAnyo_4);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'IMPORTE_ANYO')  double importeAnyo, @JsonKey(name: 'IMPORTE_ANYO_1')  double importeAnyo_1, @JsonKey(name: 'IMPORTE_ANYO_2')  double importeAnyo_2, @JsonKey(name: 'IMPORTE_ANYO_3')  double importeAnyo_3, @JsonKey(name: 'IMPORTE_ANYO_4')  double importeAnyo_4)  $default,) {final _that = this;
switch (_that) {
case _ClienteVentasMesDTO():
return $default(_that.mes,_that.importeAnyo,_that.importeAnyo_1,_that.importeAnyo_2,_that.importeAnyo_3,_that.importeAnyo_4);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'MES')  int mes, @JsonKey(name: 'IMPORTE_ANYO')  double importeAnyo, @JsonKey(name: 'IMPORTE_ANYO_1')  double importeAnyo_1, @JsonKey(name: 'IMPORTE_ANYO_2')  double importeAnyo_2, @JsonKey(name: 'IMPORTE_ANYO_3')  double importeAnyo_3, @JsonKey(name: 'IMPORTE_ANYO_4')  double importeAnyo_4)?  $default,) {final _that = this;
switch (_that) {
case _ClienteVentasMesDTO() when $default != null:
return $default(_that.mes,_that.importeAnyo,_that.importeAnyo_1,_that.importeAnyo_2,_that.importeAnyo_3,_that.importeAnyo_4);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ClienteVentasMesDTO extends ClienteVentasMesDTO {
  const _ClienteVentasMesDTO({@JsonKey(name: 'MES') required this.mes, @JsonKey(name: 'IMPORTE_ANYO') required this.importeAnyo, @JsonKey(name: 'IMPORTE_ANYO_1') required this.importeAnyo_1, @JsonKey(name: 'IMPORTE_ANYO_2') required this.importeAnyo_2, @JsonKey(name: 'IMPORTE_ANYO_3') required this.importeAnyo_3, @JsonKey(name: 'IMPORTE_ANYO_4') required this.importeAnyo_4}): super._();
  factory _ClienteVentasMesDTO.fromJson(Map<String, dynamic> json) => _$ClienteVentasMesDTOFromJson(json);

@override@JsonKey(name: 'MES') final  int mes;
@override@JsonKey(name: 'IMPORTE_ANYO') final  double importeAnyo;
@override@JsonKey(name: 'IMPORTE_ANYO_1') final  double importeAnyo_1;
@override@JsonKey(name: 'IMPORTE_ANYO_2') final  double importeAnyo_2;
@override@JsonKey(name: 'IMPORTE_ANYO_3') final  double importeAnyo_3;
@override@JsonKey(name: 'IMPORTE_ANYO_4') final  double importeAnyo_4;

/// Create a copy of ClienteVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteVentasMesDTOCopyWith<_ClienteVentasMesDTO> get copyWith => __$ClienteVentasMesDTOCopyWithImpl<_ClienteVentasMesDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ClienteVentasMesDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteVentasMesDTO&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importeAnyo, importeAnyo) || other.importeAnyo == importeAnyo)&&(identical(other.importeAnyo_1, importeAnyo_1) || other.importeAnyo_1 == importeAnyo_1)&&(identical(other.importeAnyo_2, importeAnyo_2) || other.importeAnyo_2 == importeAnyo_2)&&(identical(other.importeAnyo_3, importeAnyo_3) || other.importeAnyo_3 == importeAnyo_3)&&(identical(other.importeAnyo_4, importeAnyo_4) || other.importeAnyo_4 == importeAnyo_4));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,mes,importeAnyo,importeAnyo_1,importeAnyo_2,importeAnyo_3,importeAnyo_4);

@override
String toString() {
  return 'ClienteVentasMesDTO(mes: $mes, importeAnyo: $importeAnyo, importeAnyo_1: $importeAnyo_1, importeAnyo_2: $importeAnyo_2, importeAnyo_3: $importeAnyo_3, importeAnyo_4: $importeAnyo_4)';
}


}

/// @nodoc
abstract mixin class _$ClienteVentasMesDTOCopyWith<$Res> implements $ClienteVentasMesDTOCopyWith<$Res> {
  factory _$ClienteVentasMesDTOCopyWith(_ClienteVentasMesDTO value, $Res Function(_ClienteVentasMesDTO) _then) = __$ClienteVentasMesDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'MES') int mes,@JsonKey(name: 'IMPORTE_ANYO') double importeAnyo,@JsonKey(name: 'IMPORTE_ANYO_1') double importeAnyo_1,@JsonKey(name: 'IMPORTE_ANYO_2') double importeAnyo_2,@JsonKey(name: 'IMPORTE_ANYO_3') double importeAnyo_3,@JsonKey(name: 'IMPORTE_ANYO_4') double importeAnyo_4
});




}
/// @nodoc
class __$ClienteVentasMesDTOCopyWithImpl<$Res>
    implements _$ClienteVentasMesDTOCopyWith<$Res> {
  __$ClienteVentasMesDTOCopyWithImpl(this._self, this._then);

  final _ClienteVentasMesDTO _self;
  final $Res Function(_ClienteVentasMesDTO) _then;

/// Create a copy of ClienteVentasMesDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mes = null,Object? importeAnyo = null,Object? importeAnyo_1 = null,Object? importeAnyo_2 = null,Object? importeAnyo_3 = null,Object? importeAnyo_4 = null,}) {
  return _then(_ClienteVentasMesDTO(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,importeAnyo: null == importeAnyo ? _self.importeAnyo : importeAnyo // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_1: null == importeAnyo_1 ? _self.importeAnyo_1 : importeAnyo_1 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_2: null == importeAnyo_2 ? _self.importeAnyo_2 : importeAnyo_2 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_3: null == importeAnyo_3 ? _self.importeAnyo_3 : importeAnyo_3 // ignore: cast_nullable_to_non_nullable
as double,importeAnyo_4: null == importeAnyo_4 ? _self.importeAnyo_4 : importeAnyo_4 // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
