// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_edit_direccion_manual_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$DireccionManualScreenData {

 List<Pais> get paises; List<Provincia> get provincias;
/// Create a copy of DireccionManualScreenData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DireccionManualScreenDataCopyWith<DireccionManualScreenData> get copyWith => _$DireccionManualScreenDataCopyWithImpl<DireccionManualScreenData>(this as DireccionManualScreenData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DireccionManualScreenData&&const DeepCollectionEquality().equals(other.paises, paises)&&const DeepCollectionEquality().equals(other.provincias, provincias));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(paises),const DeepCollectionEquality().hash(provincias));

@override
String toString() {
  return 'DireccionManualScreenData(paises: $paises, provincias: $provincias)';
}


}

/// @nodoc
abstract mixin class $DireccionManualScreenDataCopyWith<$Res>  {
  factory $DireccionManualScreenDataCopyWith(DireccionManualScreenData value, $Res Function(DireccionManualScreenData) _then) = _$DireccionManualScreenDataCopyWithImpl;
@useResult
$Res call({
 List<Pais> paises, List<Provincia> provincias
});




}
/// @nodoc
class _$DireccionManualScreenDataCopyWithImpl<$Res>
    implements $DireccionManualScreenDataCopyWith<$Res> {
  _$DireccionManualScreenDataCopyWithImpl(this._self, this._then);

  final DireccionManualScreenData _self;
  final $Res Function(DireccionManualScreenData) _then;

/// Create a copy of DireccionManualScreenData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? paises = null,Object? provincias = null,}) {
  return _then(_self.copyWith(
paises: null == paises ? _self.paises : paises // ignore: cast_nullable_to_non_nullable
as List<Pais>,provincias: null == provincias ? _self.provincias : provincias // ignore: cast_nullable_to_non_nullable
as List<Provincia>,
  ));
}

}


/// Adds pattern-matching-related methods to [DireccionManualScreenData].
extension DireccionManualScreenDataPatterns on DireccionManualScreenData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DireccionManualScreenData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DireccionManualScreenData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DireccionManualScreenData value)  $default,){
final _that = this;
switch (_that) {
case _DireccionManualScreenData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DireccionManualScreenData value)?  $default,){
final _that = this;
switch (_that) {
case _DireccionManualScreenData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<Pais> paises,  List<Provincia> provincias)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DireccionManualScreenData() when $default != null:
return $default(_that.paises,_that.provincias);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<Pais> paises,  List<Provincia> provincias)  $default,) {final _that = this;
switch (_that) {
case _DireccionManualScreenData():
return $default(_that.paises,_that.provincias);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<Pais> paises,  List<Provincia> provincias)?  $default,) {final _that = this;
switch (_that) {
case _DireccionManualScreenData() when $default != null:
return $default(_that.paises,_that.provincias);case _:
  return null;

}
}

}

/// @nodoc


class _DireccionManualScreenData extends DireccionManualScreenData {
  const _DireccionManualScreenData({required final  List<Pais> paises, required final  List<Provincia> provincias}): _paises = paises,_provincias = provincias,super._();
  

 final  List<Pais> _paises;
@override List<Pais> get paises {
  if (_paises is EqualUnmodifiableListView) return _paises;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_paises);
}

 final  List<Provincia> _provincias;
@override List<Provincia> get provincias {
  if (_provincias is EqualUnmodifiableListView) return _provincias;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_provincias);
}


/// Create a copy of DireccionManualScreenData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DireccionManualScreenDataCopyWith<_DireccionManualScreenData> get copyWith => __$DireccionManualScreenDataCopyWithImpl<_DireccionManualScreenData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DireccionManualScreenData&&const DeepCollectionEquality().equals(other._paises, _paises)&&const DeepCollectionEquality().equals(other._provincias, _provincias));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_paises),const DeepCollectionEquality().hash(_provincias));

@override
String toString() {
  return 'DireccionManualScreenData(paises: $paises, provincias: $provincias)';
}


}

/// @nodoc
abstract mixin class _$DireccionManualScreenDataCopyWith<$Res> implements $DireccionManualScreenDataCopyWith<$Res> {
  factory _$DireccionManualScreenDataCopyWith(_DireccionManualScreenData value, $Res Function(_DireccionManualScreenData) _then) = __$DireccionManualScreenDataCopyWithImpl;
@override @useResult
$Res call({
 List<Pais> paises, List<Provincia> provincias
});




}
/// @nodoc
class __$DireccionManualScreenDataCopyWithImpl<$Res>
    implements _$DireccionManualScreenDataCopyWith<$Res> {
  __$DireccionManualScreenDataCopyWithImpl(this._self, this._then);

  final _DireccionManualScreenData _self;
  final $Res Function(_DireccionManualScreenData) _then;

/// Create a copy of DireccionManualScreenData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? paises = null,Object? provincias = null,}) {
  return _then(_DireccionManualScreenData(
paises: null == paises ? _self._paises : paises // ignore: cast_nullable_to_non_nullable
as List<Pais>,provincias: null == provincias ? _self._provincias : provincias // ignore: cast_nullable_to_non_nullable
as List<Provincia>,
  ));
}


}

// dart format on
