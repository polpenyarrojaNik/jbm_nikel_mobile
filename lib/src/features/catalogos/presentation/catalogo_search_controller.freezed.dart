// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catalogo_search_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatalogoAdjuntoData {

 File? get file; bool get descarga;
/// Create a copy of CatalogoAdjuntoData
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatalogoAdjuntoDataCopyWith<CatalogoAdjuntoData> get copyWith => _$CatalogoAdjuntoDataCopyWithImpl<CatalogoAdjuntoData>(this as CatalogoAdjuntoData, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatalogoAdjuntoData&&(identical(other.file, file) || other.file == file)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}


@override
int get hashCode => Object.hash(runtimeType,file,descarga);

@override
String toString() {
  return 'CatalogoAdjuntoData(file: $file, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class $CatalogoAdjuntoDataCopyWith<$Res>  {
  factory $CatalogoAdjuntoDataCopyWith(CatalogoAdjuntoData value, $Res Function(CatalogoAdjuntoData) _then) = _$CatalogoAdjuntoDataCopyWithImpl;
@useResult
$Res call({
 File? file, bool descarga
});




}
/// @nodoc
class _$CatalogoAdjuntoDataCopyWithImpl<$Res>
    implements $CatalogoAdjuntoDataCopyWith<$Res> {
  _$CatalogoAdjuntoDataCopyWithImpl(this._self, this._then);

  final CatalogoAdjuntoData _self;
  final $Res Function(CatalogoAdjuntoData) _then;

/// Create a copy of CatalogoAdjuntoData
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? file = freezed,Object? descarga = null,}) {
  return _then(_self.copyWith(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,descarga: null == descarga ? _self.descarga : descarga // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CatalogoAdjuntoData].
extension CatalogoAdjuntoDataPatterns on CatalogoAdjuntoData {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CatalogoAdjuntoData value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CatalogoAdjuntoData() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CatalogoAdjuntoData value)  $default,){
final _that = this;
switch (_that) {
case _CatalogoAdjuntoData():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CatalogoAdjuntoData value)?  $default,){
final _that = this;
switch (_that) {
case _CatalogoAdjuntoData() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( File? file,  bool descarga)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CatalogoAdjuntoData() when $default != null:
return $default(_that.file,_that.descarga);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( File? file,  bool descarga)  $default,) {final _that = this;
switch (_that) {
case _CatalogoAdjuntoData():
return $default(_that.file,_that.descarga);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( File? file,  bool descarga)?  $default,) {final _that = this;
switch (_that) {
case _CatalogoAdjuntoData() when $default != null:
return $default(_that.file,_that.descarga);case _:
  return null;

}
}

}

/// @nodoc


class _CatalogoAdjuntoData implements CatalogoAdjuntoData {
  const _CatalogoAdjuntoData({required this.file, required this.descarga});
  

@override final  File? file;
@override final  bool descarga;

/// Create a copy of CatalogoAdjuntoData
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CatalogoAdjuntoDataCopyWith<_CatalogoAdjuntoData> get copyWith => __$CatalogoAdjuntoDataCopyWithImpl<_CatalogoAdjuntoData>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CatalogoAdjuntoData&&(identical(other.file, file) || other.file == file)&&(identical(other.descarga, descarga) || other.descarga == descarga));
}


@override
int get hashCode => Object.hash(runtimeType,file,descarga);

@override
String toString() {
  return 'CatalogoAdjuntoData(file: $file, descarga: $descarga)';
}


}

/// @nodoc
abstract mixin class _$CatalogoAdjuntoDataCopyWith<$Res> implements $CatalogoAdjuntoDataCopyWith<$Res> {
  factory _$CatalogoAdjuntoDataCopyWith(_CatalogoAdjuntoData value, $Res Function(_CatalogoAdjuntoData) _then) = __$CatalogoAdjuntoDataCopyWithImpl;
@override @useResult
$Res call({
 File? file, bool descarga
});




}
/// @nodoc
class __$CatalogoAdjuntoDataCopyWithImpl<$Res>
    implements _$CatalogoAdjuntoDataCopyWith<$Res> {
  __$CatalogoAdjuntoDataCopyWithImpl(this._self, this._then);

  final _CatalogoAdjuntoData _self;
  final $Res Function(_CatalogoAdjuntoData) _then;

/// Create a copy of CatalogoAdjuntoData
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? file = freezed,Object? descarga = null,}) {
  return _then(_CatalogoAdjuntoData(
file: freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,descarga: null == descarga ? _self.descarga : descarga // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
