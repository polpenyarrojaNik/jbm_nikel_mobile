// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_import_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoImportResult {

 String get sheetName; List<PedidoImportLinea> get pedidoImportLineas; List<PedidoImportLineaError> get pedidoImportLineaErrors;
/// Create a copy of PedidoImportResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoImportResultCopyWith<PedidoImportResult> get copyWith => _$PedidoImportResultCopyWithImpl<PedidoImportResult>(this as PedidoImportResult, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoImportResult&&(identical(other.sheetName, sheetName) || other.sheetName == sheetName)&&const DeepCollectionEquality().equals(other.pedidoImportLineas, pedidoImportLineas)&&const DeepCollectionEquality().equals(other.pedidoImportLineaErrors, pedidoImportLineaErrors));
}


@override
int get hashCode => Object.hash(runtimeType,sheetName,const DeepCollectionEquality().hash(pedidoImportLineas),const DeepCollectionEquality().hash(pedidoImportLineaErrors));

@override
String toString() {
  return 'PedidoImportResult(sheetName: $sheetName, pedidoImportLineas: $pedidoImportLineas, pedidoImportLineaErrors: $pedidoImportLineaErrors)';
}


}

/// @nodoc
abstract mixin class $PedidoImportResultCopyWith<$Res>  {
  factory $PedidoImportResultCopyWith(PedidoImportResult value, $Res Function(PedidoImportResult) _then) = _$PedidoImportResultCopyWithImpl;
@useResult
$Res call({
 String sheetName, List<PedidoImportLinea> pedidoImportLineas, List<PedidoImportLineaError> pedidoImportLineaErrors
});




}
/// @nodoc
class _$PedidoImportResultCopyWithImpl<$Res>
    implements $PedidoImportResultCopyWith<$Res> {
  _$PedidoImportResultCopyWithImpl(this._self, this._then);

  final PedidoImportResult _self;
  final $Res Function(PedidoImportResult) _then;

/// Create a copy of PedidoImportResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? sheetName = null,Object? pedidoImportLineas = null,Object? pedidoImportLineaErrors = null,}) {
  return _then(PedidoImportResult(
sheetName: null == sheetName ? _self.sheetName : sheetName // ignore: cast_nullable_to_non_nullable
as String,pedidoImportLineas: null == pedidoImportLineas ? _self.pedidoImportLineas : pedidoImportLineas // ignore: cast_nullable_to_non_nullable
as List<PedidoImportLinea>,pedidoImportLineaErrors: null == pedidoImportLineaErrors ? _self.pedidoImportLineaErrors : pedidoImportLineaErrors // ignore: cast_nullable_to_non_nullable
as List<PedidoImportLineaError>,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoImportResult].
extension PedidoImportResultPatterns on PedidoImportResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoImportResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoImportResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoImportResult value)  $default,){
final _that = this;
switch (_that) {
case _PedidoImportResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoImportResult value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoImportResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String sheetName,  List<PedidoImportLinea> pedidoImportLineas,  List<PedidoImportLineaError> pedidoImportLineaErrors)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoImportResult() when $default != null:
return $default(_that.sheetName,_that.pedidoImportLineas,_that.pedidoImportLineaErrors);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String sheetName,  List<PedidoImportLinea> pedidoImportLineas,  List<PedidoImportLineaError> pedidoImportLineaErrors)  $default,) {final _that = this;
switch (_that) {
case _PedidoImportResult():
return $default(_that.sheetName,_that.pedidoImportLineas,_that.pedidoImportLineaErrors);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String sheetName,  List<PedidoImportLinea> pedidoImportLineas,  List<PedidoImportLineaError> pedidoImportLineaErrors)?  $default,) {final _that = this;
switch (_that) {
case _PedidoImportResult() when $default != null:
return $default(_that.sheetName,_that.pedidoImportLineas,_that.pedidoImportLineaErrors);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoImportResult extends PedidoImportResult {
  const _PedidoImportResult({required this.sheetName, required  List<PedidoImportLinea> pedidoImportLineas, required  List<PedidoImportLineaError> pedidoImportLineaErrors}): _pedidoImportLineas = pedidoImportLineas,_pedidoImportLineaErrors = pedidoImportLineaErrors,super._();
  

@override final  String sheetName;
 final  List<PedidoImportLinea> _pedidoImportLineas;
@override List<PedidoImportLinea> get pedidoImportLineas {
  if (_pedidoImportLineas is EqualUnmodifiableListView) return _pedidoImportLineas;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pedidoImportLineas);
}

 final  List<PedidoImportLineaError> _pedidoImportLineaErrors;
@override List<PedidoImportLineaError> get pedidoImportLineaErrors {
  if (_pedidoImportLineaErrors is EqualUnmodifiableListView) return _pedidoImportLineaErrors;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pedidoImportLineaErrors);
}


/// Create a copy of PedidoImportResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoImportResultCopyWith<_PedidoImportResult> get copyWith => __$PedidoImportResultCopyWithImpl<_PedidoImportResult>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoImportResult&&(identical(other.sheetName, sheetName) || other.sheetName == sheetName)&&const DeepCollectionEquality().equals(other._pedidoImportLineas, _pedidoImportLineas)&&const DeepCollectionEquality().equals(other._pedidoImportLineaErrors, _pedidoImportLineaErrors));
}


@override
int get hashCode => Object.hash(runtimeType,sheetName,const DeepCollectionEquality().hash(_pedidoImportLineas),const DeepCollectionEquality().hash(_pedidoImportLineaErrors));

@override
String toString() {
  return 'PedidoImportResult(sheetName: $sheetName, pedidoImportLineas: $pedidoImportLineas, pedidoImportLineaErrors: $pedidoImportLineaErrors)';
}


}

/// @nodoc
abstract mixin class _$PedidoImportResultCopyWith<$Res> implements $PedidoImportResultCopyWith<$Res> {
  factory _$PedidoImportResultCopyWith(_PedidoImportResult value, $Res Function(_PedidoImportResult) _then) = __$PedidoImportResultCopyWithImpl;
@override @useResult
$Res call({
 String sheetName, List<PedidoImportLinea> pedidoImportLineas, List<PedidoImportLineaError> pedidoImportLineaErrors
});




}
/// @nodoc
class __$PedidoImportResultCopyWithImpl<$Res>
    implements _$PedidoImportResultCopyWith<$Res> {
  __$PedidoImportResultCopyWithImpl(this._self, this._then);

  final _PedidoImportResult _self;
  final $Res Function(_PedidoImportResult) _then;

/// Create a copy of PedidoImportResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? sheetName = null,Object? pedidoImportLineas = null,Object? pedidoImportLineaErrors = null,}) {
  return _then(_PedidoImportResult(
sheetName: null == sheetName ? _self.sheetName : sheetName // ignore: cast_nullable_to_non_nullable
as String,pedidoImportLineas: null == pedidoImportLineas ? _self._pedidoImportLineas : pedidoImportLineas // ignore: cast_nullable_to_non_nullable
as List<PedidoImportLinea>,pedidoImportLineaErrors: null == pedidoImportLineaErrors ? _self._pedidoImportLineaErrors : pedidoImportLineaErrors // ignore: cast_nullable_to_non_nullable
as List<PedidoImportLineaError>,
  ));
}


}

// dart format on
