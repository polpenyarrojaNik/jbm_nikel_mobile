// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_import_linea.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoImportLinea {

 int get lineNumber; String get articuloId; String get articuloDescription; int get cantidad; Money get precioDivisa; String get divisaId; int get tipoPrecio; double get descuento1; double get descuento2; double get descuento3; Money? get importeLinea; int? get stockDisponible; double? get iva;
/// Create a copy of PedidoImportLinea
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoImportLineaCopyWith<PedidoImportLinea> get copyWith => _$PedidoImportLineaCopyWithImpl<PedidoImportLinea>(this as PedidoImportLinea, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoImportLinea&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.iva, iva) || other.iva == iva));
}


@override
int get hashCode => Object.hash(runtimeType,lineNumber,articuloId,articuloDescription,cantidad,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,importeLinea,stockDisponible,iva);

@override
String toString() {
  return 'PedidoImportLinea(lineNumber: $lineNumber, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, importeLinea: $importeLinea, stockDisponible: $stockDisponible, iva: $iva)';
}


}

/// @nodoc
abstract mixin class $PedidoImportLineaCopyWith<$Res>  {
  factory $PedidoImportLineaCopyWith(PedidoImportLinea value, $Res Function(PedidoImportLinea) _then) = _$PedidoImportLineaCopyWithImpl;
@useResult
$Res call({
 int lineNumber, String articuloId, String articuloDescription, int cantidad, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, Money? importeLinea, int? stockDisponible, double? iva
});




}
/// @nodoc
class _$PedidoImportLineaCopyWithImpl<$Res>
    implements $PedidoImportLineaCopyWith<$Res> {
  _$PedidoImportLineaCopyWithImpl(this._self, this._then);

  final PedidoImportLinea _self;
  final $Res Function(PedidoImportLinea) _then;

/// Create a copy of PedidoImportLinea
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineNumber = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? importeLinea = freezed,Object? stockDisponible = freezed,Object? iva = freezed,}) {
  return _then(PedidoImportLinea(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as Money?,stockDisponible: freezed == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int?,iva: freezed == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoImportLinea].
extension PedidoImportLineaPatterns on PedidoImportLinea {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoImportLinea value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoImportLinea() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoImportLinea value)  $default,){
final _that = this;
switch (_that) {
case _PedidoImportLinea():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoImportLinea value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoImportLinea() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int lineNumber,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  Money? importeLinea,  int? stockDisponible,  double? iva)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoImportLinea() when $default != null:
return $default(_that.lineNumber,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.importeLinea,_that.stockDisponible,_that.iva);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int lineNumber,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  Money? importeLinea,  int? stockDisponible,  double? iva)  $default,) {final _that = this;
switch (_that) {
case _PedidoImportLinea():
return $default(_that.lineNumber,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.importeLinea,_that.stockDisponible,_that.iva);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int lineNumber,  String articuloId,  String articuloDescription,  int cantidad,  Money precioDivisa,  String divisaId,  int tipoPrecio,  double descuento1,  double descuento2,  double descuento3,  Money? importeLinea,  int? stockDisponible,  double? iva)?  $default,) {final _that = this;
switch (_that) {
case _PedidoImportLinea() when $default != null:
return $default(_that.lineNumber,_that.articuloId,_that.articuloDescription,_that.cantidad,_that.precioDivisa,_that.divisaId,_that.tipoPrecio,_that.descuento1,_that.descuento2,_that.descuento3,_that.importeLinea,_that.stockDisponible,_that.iva);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoImportLinea extends PedidoImportLinea {
  const _PedidoImportLinea({required this.lineNumber, required this.articuloId, required this.articuloDescription, required this.cantidad, required this.precioDivisa, required this.divisaId, required this.tipoPrecio, required this.descuento1, required this.descuento2, required this.descuento3, required this.importeLinea, required this.stockDisponible, this.iva}): super._();
  

@override final  int lineNumber;
@override final  String articuloId;
@override final  String articuloDescription;
@override final  int cantidad;
@override final  Money precioDivisa;
@override final  String divisaId;
@override final  int tipoPrecio;
@override final  double descuento1;
@override final  double descuento2;
@override final  double descuento3;
@override final  Money? importeLinea;
@override final  int? stockDisponible;
@override final  double? iva;

/// Create a copy of PedidoImportLinea
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoImportLineaCopyWith<_PedidoImportLinea> get copyWith => __$PedidoImportLineaCopyWithImpl<_PedidoImportLinea>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoImportLinea&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.articuloId, articuloId) || other.articuloId == articuloId)&&(identical(other.articuloDescription, articuloDescription) || other.articuloDescription == articuloDescription)&&(identical(other.cantidad, cantidad) || other.cantidad == cantidad)&&(identical(other.precioDivisa, precioDivisa) || other.precioDivisa == precioDivisa)&&(identical(other.divisaId, divisaId) || other.divisaId == divisaId)&&(identical(other.tipoPrecio, tipoPrecio) || other.tipoPrecio == tipoPrecio)&&(identical(other.descuento1, descuento1) || other.descuento1 == descuento1)&&(identical(other.descuento2, descuento2) || other.descuento2 == descuento2)&&(identical(other.descuento3, descuento3) || other.descuento3 == descuento3)&&(identical(other.importeLinea, importeLinea) || other.importeLinea == importeLinea)&&(identical(other.stockDisponible, stockDisponible) || other.stockDisponible == stockDisponible)&&(identical(other.iva, iva) || other.iva == iva));
}


@override
int get hashCode => Object.hash(runtimeType,lineNumber,articuloId,articuloDescription,cantidad,precioDivisa,divisaId,tipoPrecio,descuento1,descuento2,descuento3,importeLinea,stockDisponible,iva);

@override
String toString() {
  return 'PedidoImportLinea(lineNumber: $lineNumber, articuloId: $articuloId, articuloDescription: $articuloDescription, cantidad: $cantidad, precioDivisa: $precioDivisa, divisaId: $divisaId, tipoPrecio: $tipoPrecio, descuento1: $descuento1, descuento2: $descuento2, descuento3: $descuento3, importeLinea: $importeLinea, stockDisponible: $stockDisponible, iva: $iva)';
}


}

/// @nodoc
abstract mixin class _$PedidoImportLineaCopyWith<$Res> implements $PedidoImportLineaCopyWith<$Res> {
  factory _$PedidoImportLineaCopyWith(_PedidoImportLinea value, $Res Function(_PedidoImportLinea) _then) = __$PedidoImportLineaCopyWithImpl;
@override @useResult
$Res call({
 int lineNumber, String articuloId, String articuloDescription, int cantidad, Money precioDivisa, String divisaId, int tipoPrecio, double descuento1, double descuento2, double descuento3, Money? importeLinea, int? stockDisponible, double? iva
});




}
/// @nodoc
class __$PedidoImportLineaCopyWithImpl<$Res>
    implements _$PedidoImportLineaCopyWith<$Res> {
  __$PedidoImportLineaCopyWithImpl(this._self, this._then);

  final _PedidoImportLinea _self;
  final $Res Function(_PedidoImportLinea) _then;

/// Create a copy of PedidoImportLinea
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineNumber = null,Object? articuloId = null,Object? articuloDescription = null,Object? cantidad = null,Object? precioDivisa = null,Object? divisaId = null,Object? tipoPrecio = null,Object? descuento1 = null,Object? descuento2 = null,Object? descuento3 = null,Object? importeLinea = freezed,Object? stockDisponible = freezed,Object? iva = freezed,}) {
  return _then(_PedidoImportLinea(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,articuloId: null == articuloId ? _self.articuloId : articuloId // ignore: cast_nullable_to_non_nullable
as String,articuloDescription: null == articuloDescription ? _self.articuloDescription : articuloDescription // ignore: cast_nullable_to_non_nullable
as String,cantidad: null == cantidad ? _self.cantidad : cantidad // ignore: cast_nullable_to_non_nullable
as int,precioDivisa: null == precioDivisa ? _self.precioDivisa : precioDivisa // ignore: cast_nullable_to_non_nullable
as Money,divisaId: null == divisaId ? _self.divisaId : divisaId // ignore: cast_nullable_to_non_nullable
as String,tipoPrecio: null == tipoPrecio ? _self.tipoPrecio : tipoPrecio // ignore: cast_nullable_to_non_nullable
as int,descuento1: null == descuento1 ? _self.descuento1 : descuento1 // ignore: cast_nullable_to_non_nullable
as double,descuento2: null == descuento2 ? _self.descuento2 : descuento2 // ignore: cast_nullable_to_non_nullable
as double,descuento3: null == descuento3 ? _self.descuento3 : descuento3 // ignore: cast_nullable_to_non_nullable
as double,importeLinea: freezed == importeLinea ? _self.importeLinea : importeLinea // ignore: cast_nullable_to_non_nullable
as Money?,stockDisponible: freezed == stockDisponible ? _self.stockDisponible : stockDisponible // ignore: cast_nullable_to_non_nullable
as int?,iva: freezed == iva ? _self.iva : iva // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

/// @nodoc
mixin _$PedidoImportLineaError {

 int get lineNumber; String get errorMessage;
/// Create a copy of PedidoImportLineaError
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoImportLineaErrorCopyWith<PedidoImportLineaError> get copyWith => _$PedidoImportLineaErrorCopyWithImpl<PedidoImportLineaError>(this as PedidoImportLineaError, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoImportLineaError&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,lineNumber,errorMessage);

@override
String toString() {
  return 'PedidoImportLineaError(lineNumber: $lineNumber, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PedidoImportLineaErrorCopyWith<$Res>  {
  factory $PedidoImportLineaErrorCopyWith(PedidoImportLineaError value, $Res Function(PedidoImportLineaError) _then) = _$PedidoImportLineaErrorCopyWithImpl;
@useResult
$Res call({
 int lineNumber, String errorMessage
});




}
/// @nodoc
class _$PedidoImportLineaErrorCopyWithImpl<$Res>
    implements $PedidoImportLineaErrorCopyWith<$Res> {
  _$PedidoImportLineaErrorCopyWithImpl(this._self, this._then);

  final PedidoImportLineaError _self;
  final $Res Function(PedidoImportLineaError) _then;

/// Create a copy of PedidoImportLineaError
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? lineNumber = null,Object? errorMessage = null,}) {
  return _then(PedidoImportLineaError(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PedidoImportLineaError].
extension PedidoImportLineaErrorPatterns on PedidoImportLineaError {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PedidoImportLineaError value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PedidoImportLineaError() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PedidoImportLineaError value)  $default,){
final _that = this;
switch (_that) {
case _PedidoImportLineaError():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PedidoImportLineaError value)?  $default,){
final _that = this;
switch (_that) {
case _PedidoImportLineaError() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int lineNumber,  String errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PedidoImportLineaError() when $default != null:
return $default(_that.lineNumber,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int lineNumber,  String errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PedidoImportLineaError():
return $default(_that.lineNumber,_that.errorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int lineNumber,  String errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PedidoImportLineaError() when $default != null:
return $default(_that.lineNumber,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PedidoImportLineaError extends PedidoImportLineaError {
  const _PedidoImportLineaError({required this.lineNumber, required this.errorMessage}): super._();
  

@override final  int lineNumber;
@override final  String errorMessage;

/// Create a copy of PedidoImportLineaError
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PedidoImportLineaErrorCopyWith<_PedidoImportLineaError> get copyWith => __$PedidoImportLineaErrorCopyWithImpl<_PedidoImportLineaError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PedidoImportLineaError&&(identical(other.lineNumber, lineNumber) || other.lineNumber == lineNumber)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,lineNumber,errorMessage);

@override
String toString() {
  return 'PedidoImportLineaError(lineNumber: $lineNumber, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PedidoImportLineaErrorCopyWith<$Res> implements $PedidoImportLineaErrorCopyWith<$Res> {
  factory _$PedidoImportLineaErrorCopyWith(_PedidoImportLineaError value, $Res Function(_PedidoImportLineaError) _then) = __$PedidoImportLineaErrorCopyWithImpl;
@override @useResult
$Res call({
 int lineNumber, String errorMessage
});




}
/// @nodoc
class __$PedidoImportLineaErrorCopyWithImpl<$Res>
    implements _$PedidoImportLineaErrorCopyWith<$Res> {
  __$PedidoImportLineaErrorCopyWithImpl(this._self, this._then);

  final _PedidoImportLineaError _self;
  final $Res Function(_PedidoImportLineaError) _then;

/// Create a copy of PedidoImportLineaError
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? lineNumber = null,Object? errorMessage = null,}) {
  return _then(_PedidoImportLineaError(
lineNumber: null == lineNumber ? _self.lineNumber : lineNumber // ignore: cast_nullable_to_non_nullable
as int,errorMessage: null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
