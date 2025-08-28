// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_ventas_mes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClienteVentasMes {

 int get mes; Money get importeAnyo; Money get importeAnyo_1; Money get importeAnyo_2; Money get importeAnyo_3; Money get importeAnyo_4;
/// Create a copy of ClienteVentasMes
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClienteVentasMesCopyWith<ClienteVentasMes> get copyWith => _$ClienteVentasMesCopyWithImpl<ClienteVentasMes>(this as ClienteVentasMes, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteVentasMes&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importeAnyo, importeAnyo) || other.importeAnyo == importeAnyo)&&(identical(other.importeAnyo_1, importeAnyo_1) || other.importeAnyo_1 == importeAnyo_1)&&(identical(other.importeAnyo_2, importeAnyo_2) || other.importeAnyo_2 == importeAnyo_2)&&(identical(other.importeAnyo_3, importeAnyo_3) || other.importeAnyo_3 == importeAnyo_3)&&(identical(other.importeAnyo_4, importeAnyo_4) || other.importeAnyo_4 == importeAnyo_4));
}


@override
int get hashCode => Object.hash(runtimeType,mes,importeAnyo,importeAnyo_1,importeAnyo_2,importeAnyo_3,importeAnyo_4);

@override
String toString() {
  return 'ClienteVentasMes(mes: $mes, importeAnyo: $importeAnyo, importeAnyo_1: $importeAnyo_1, importeAnyo_2: $importeAnyo_2, importeAnyo_3: $importeAnyo_3, importeAnyo_4: $importeAnyo_4)';
}


}

/// @nodoc
abstract mixin class $ClienteVentasMesCopyWith<$Res>  {
  factory $ClienteVentasMesCopyWith(ClienteVentasMes value, $Res Function(ClienteVentasMes) _then) = _$ClienteVentasMesCopyWithImpl;
@useResult
$Res call({
 int mes, Money importeAnyo, Money importeAnyo_1, Money importeAnyo_2, Money importeAnyo_3, Money importeAnyo_4
});




}
/// @nodoc
class _$ClienteVentasMesCopyWithImpl<$Res>
    implements $ClienteVentasMesCopyWith<$Res> {
  _$ClienteVentasMesCopyWithImpl(this._self, this._then);

  final ClienteVentasMes _self;
  final $Res Function(ClienteVentasMes) _then;

/// Create a copy of ClienteVentasMes
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mes = null,Object? importeAnyo = null,Object? importeAnyo_1 = null,Object? importeAnyo_2 = null,Object? importeAnyo_3 = null,Object? importeAnyo_4 = null,}) {
  return _then(_self.copyWith(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,importeAnyo: null == importeAnyo ? _self.importeAnyo : importeAnyo // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_1: null == importeAnyo_1 ? _self.importeAnyo_1 : importeAnyo_1 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_2: null == importeAnyo_2 ? _self.importeAnyo_2 : importeAnyo_2 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_3: null == importeAnyo_3 ? _self.importeAnyo_3 : importeAnyo_3 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_4: null == importeAnyo_4 ? _self.importeAnyo_4 : importeAnyo_4 // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}

}


/// Adds pattern-matching-related methods to [ClienteVentasMes].
extension ClienteVentasMesPatterns on ClienteVentasMes {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClienteVentasMes value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClienteVentasMes() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClienteVentasMes value)  $default,){
final _that = this;
switch (_that) {
case _ClienteVentasMes():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClienteVentasMes value)?  $default,){
final _that = this;
switch (_that) {
case _ClienteVentasMes() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int mes,  Money importeAnyo,  Money importeAnyo_1,  Money importeAnyo_2,  Money importeAnyo_3,  Money importeAnyo_4)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClienteVentasMes() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int mes,  Money importeAnyo,  Money importeAnyo_1,  Money importeAnyo_2,  Money importeAnyo_3,  Money importeAnyo_4)  $default,) {final _that = this;
switch (_that) {
case _ClienteVentasMes():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int mes,  Money importeAnyo,  Money importeAnyo_1,  Money importeAnyo_2,  Money importeAnyo_3,  Money importeAnyo_4)?  $default,) {final _that = this;
switch (_that) {
case _ClienteVentasMes() when $default != null:
return $default(_that.mes,_that.importeAnyo,_that.importeAnyo_1,_that.importeAnyo_2,_that.importeAnyo_3,_that.importeAnyo_4);case _:
  return null;

}
}

}

/// @nodoc


class _ClienteVentasMes extends ClienteVentasMes {
  const _ClienteVentasMes({required this.mes, required this.importeAnyo, required this.importeAnyo_1, required this.importeAnyo_2, required this.importeAnyo_3, required this.importeAnyo_4}): super._();
  

@override final  int mes;
@override final  Money importeAnyo;
@override final  Money importeAnyo_1;
@override final  Money importeAnyo_2;
@override final  Money importeAnyo_3;
@override final  Money importeAnyo_4;

/// Create a copy of ClienteVentasMes
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClienteVentasMesCopyWith<_ClienteVentasMes> get copyWith => __$ClienteVentasMesCopyWithImpl<_ClienteVentasMes>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClienteVentasMes&&(identical(other.mes, mes) || other.mes == mes)&&(identical(other.importeAnyo, importeAnyo) || other.importeAnyo == importeAnyo)&&(identical(other.importeAnyo_1, importeAnyo_1) || other.importeAnyo_1 == importeAnyo_1)&&(identical(other.importeAnyo_2, importeAnyo_2) || other.importeAnyo_2 == importeAnyo_2)&&(identical(other.importeAnyo_3, importeAnyo_3) || other.importeAnyo_3 == importeAnyo_3)&&(identical(other.importeAnyo_4, importeAnyo_4) || other.importeAnyo_4 == importeAnyo_4));
}


@override
int get hashCode => Object.hash(runtimeType,mes,importeAnyo,importeAnyo_1,importeAnyo_2,importeAnyo_3,importeAnyo_4);

@override
String toString() {
  return 'ClienteVentasMes(mes: $mes, importeAnyo: $importeAnyo, importeAnyo_1: $importeAnyo_1, importeAnyo_2: $importeAnyo_2, importeAnyo_3: $importeAnyo_3, importeAnyo_4: $importeAnyo_4)';
}


}

/// @nodoc
abstract mixin class _$ClienteVentasMesCopyWith<$Res> implements $ClienteVentasMesCopyWith<$Res> {
  factory _$ClienteVentasMesCopyWith(_ClienteVentasMes value, $Res Function(_ClienteVentasMes) _then) = __$ClienteVentasMesCopyWithImpl;
@override @useResult
$Res call({
 int mes, Money importeAnyo, Money importeAnyo_1, Money importeAnyo_2, Money importeAnyo_3, Money importeAnyo_4
});




}
/// @nodoc
class __$ClienteVentasMesCopyWithImpl<$Res>
    implements _$ClienteVentasMesCopyWith<$Res> {
  __$ClienteVentasMesCopyWithImpl(this._self, this._then);

  final _ClienteVentasMes _self;
  final $Res Function(_ClienteVentasMes) _then;

/// Create a copy of ClienteVentasMes
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mes = null,Object? importeAnyo = null,Object? importeAnyo_1 = null,Object? importeAnyo_2 = null,Object? importeAnyo_3 = null,Object? importeAnyo_4 = null,}) {
  return _then(_ClienteVentasMes(
mes: null == mes ? _self.mes : mes // ignore: cast_nullable_to_non_nullable
as int,importeAnyo: null == importeAnyo ? _self.importeAnyo : importeAnyo // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_1: null == importeAnyo_1 ? _self.importeAnyo_1 : importeAnyo_1 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_2: null == importeAnyo_2 ? _self.importeAnyo_2 : importeAnyo_2 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_3: null == importeAnyo_3 ? _self.importeAnyo_3 : importeAnyo_3 // ignore: cast_nullable_to_non_nullable
as Money,importeAnyo_4: null == importeAnyo_4 ? _self.importeAnyo_4 : importeAnyo_4 // ignore: cast_nullable_to_non_nullable
as Money,
  ));
}


}

// dart format on
