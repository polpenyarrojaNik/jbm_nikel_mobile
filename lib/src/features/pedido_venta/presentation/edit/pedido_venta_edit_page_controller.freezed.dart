// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pedido_venta_edit_page_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PedidoVentaEditPageControllerState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaEditPageControllerState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PedidoVentaEditPageControllerState()';
}


}

/// @nodoc
class $PedidoVentaEditPageControllerStateCopyWith<$Res>  {
$PedidoVentaEditPageControllerStateCopyWith(PedidoVentaEditPageControllerState _, $Res Function(PedidoVentaEditPageControllerState) __);
}


/// Adds pattern-matching-related methods to [PedidoVentaEditPageControllerState].
extension PedidoVentaEditPageControllerStatePatterns on PedidoVentaEditPageControllerState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _loading value)?  loading,TResult Function( _data value)?  data,TResult Function( _error value)?  error,TResult Function( _deleted value)?  deleted,TResult Function( _saved value)?  saved,TResult Function( _savedError value)?  savedError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _loading() when loading != null:
return loading(_that);case _data() when data != null:
return data(_that);case _error() when error != null:
return error(_that);case _deleted() when deleted != null:
return deleted(_that);case _saved() when saved != null:
return saved(_that);case _savedError() when savedError != null:
return savedError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _loading value)  loading,required TResult Function( _data value)  data,required TResult Function( _error value)  error,required TResult Function( _deleted value)  deleted,required TResult Function( _saved value)  saved,required TResult Function( _savedError value)  savedError,}){
final _that = this;
switch (_that) {
case _loading():
return loading(_that);case _data():
return data(_that);case _error():
return error(_that);case _deleted():
return deleted(_that);case _saved():
return saved(_that);case _savedError():
return savedError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _loading value)?  loading,TResult? Function( _data value)?  data,TResult? Function( _error value)?  error,TResult? Function( _deleted value)?  deleted,TResult? Function( _saved value)?  saved,TResult? Function( _savedError value)?  savedError,}){
final _that = this;
switch (_that) {
case _loading() when loading != null:
return loading(_that);case _data() when data != null:
return data(_that);case _error() when error != null:
return error(_that);case _deleted() when deleted != null:
return deleted(_that);case _saved() when saved != null:
return saved(_that);case _savedError() when savedError != null:
return savedError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador)?  data,TResult Function( Object error,  StackTrace? stackTrace)?  error,TResult Function()?  deleted,TResult Function( String pedidoVentaAppId,  bool isBorrador)?  saved,TResult Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador,  Object error,  StackTrace? stackTrace)?  savedError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _loading() when loading != null:
return loading();case _data() when data != null:
return data(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador);case _error() when error != null:
return error(_that.error,_that.stackTrace);case _deleted() when deleted != null:
return deleted();case _saved() when saved != null:
return saved(_that.pedidoVentaAppId,_that.isBorrador);case _savedError() when savedError != null:
return savedError(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador,_that.error,_that.stackTrace);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador)  data,required TResult Function( Object error,  StackTrace? stackTrace)  error,required TResult Function()  deleted,required TResult Function( String pedidoVentaAppId,  bool isBorrador)  saved,required TResult Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador,  Object error,  StackTrace? stackTrace)  savedError,}) {final _that = this;
switch (_that) {
case _loading():
return loading();case _data():
return data(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador);case _error():
return error(_that.error,_that.stackTrace);case _deleted():
return deleted();case _saved():
return saved(_that.pedidoVentaAppId,_that.isBorrador);case _savedError():
return savedError(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador,_that.error,_that.stackTrace);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador)?  data,TResult? Function( Object error,  StackTrace? stackTrace)?  error,TResult? Function()?  deleted,TResult? Function( String pedidoVentaAppId,  bool isBorrador)?  saved,TResult? Function( Cliente? cliente,  ClienteDireccion? clienteDireccion,  List<PedidoVentaLinea> pedidoVentaLinea,  int currentStep,  String? observaciones,  String? pedidoCliente,  bool oferta,  DateTime? ofertaFechaHasta,  bool isBorrador,  Object error,  StackTrace? stackTrace)?  savedError,}) {final _that = this;
switch (_that) {
case _loading() when loading != null:
return loading();case _data() when data != null:
return data(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador);case _error() when error != null:
return error(_that.error,_that.stackTrace);case _deleted() when deleted != null:
return deleted();case _saved() when saved != null:
return saved(_that.pedidoVentaAppId,_that.isBorrador);case _savedError() when savedError != null:
return savedError(_that.cliente,_that.clienteDireccion,_that.pedidoVentaLinea,_that.currentStep,_that.observaciones,_that.pedidoCliente,_that.oferta,_that.ofertaFechaHasta,_that.isBorrador,_that.error,_that.stackTrace);case _:
  return null;

}
}

}

/// @nodoc


class _loading extends PedidoVentaEditPageControllerState {
  const _loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.loading()';
}


}




/// @nodoc


class _data extends PedidoVentaEditPageControllerState {
  const _data(this.cliente, this.clienteDireccion, final  List<PedidoVentaLinea> pedidoVentaLinea, this.currentStep, this.observaciones, this.pedidoCliente, this.oferta, this.ofertaFechaHasta, this.isBorrador): _pedidoVentaLinea = pedidoVentaLinea,super._();
  

 final  Cliente? cliente;
 final  ClienteDireccion? clienteDireccion;
 final  List<PedidoVentaLinea> _pedidoVentaLinea;
 List<PedidoVentaLinea> get pedidoVentaLinea {
  if (_pedidoVentaLinea is EqualUnmodifiableListView) return _pedidoVentaLinea;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pedidoVentaLinea);
}

 final  int currentStep;
 final  String? observaciones;
 final  String? pedidoCliente;
 final  bool oferta;
 final  DateTime? ofertaFechaHasta;
 final  bool isBorrador;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$dataCopyWith<_data> get copyWith => __$dataCopyWithImpl<_data>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _data&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.clienteDireccion, clienteDireccion) || other.clienteDireccion == clienteDireccion)&&const DeepCollectionEquality().equals(other._pedidoVentaLinea, _pedidoVentaLinea)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.pedidoCliente, pedidoCliente) || other.pedidoCliente == pedidoCliente)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.isBorrador, isBorrador) || other.isBorrador == isBorrador));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,clienteDireccion,const DeepCollectionEquality().hash(_pedidoVentaLinea),currentStep,observaciones,pedidoCliente,oferta,ofertaFechaHasta,isBorrador);

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.data(cliente: $cliente, clienteDireccion: $clienteDireccion, pedidoVentaLinea: $pedidoVentaLinea, currentStep: $currentStep, observaciones: $observaciones, pedidoCliente: $pedidoCliente, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, isBorrador: $isBorrador)';
}


}

/// @nodoc
abstract mixin class _$dataCopyWith<$Res> implements $PedidoVentaEditPageControllerStateCopyWith<$Res> {
  factory _$dataCopyWith(_data value, $Res Function(_data) _then) = __$dataCopyWithImpl;
@useResult
$Res call({
 Cliente? cliente, ClienteDireccion? clienteDireccion, List<PedidoVentaLinea> pedidoVentaLinea, int currentStep, String? observaciones, String? pedidoCliente, bool oferta, DateTime? ofertaFechaHasta, bool isBorrador
});


$ClienteCopyWith<$Res>? get cliente;$ClienteDireccionCopyWith<$Res>? get clienteDireccion;

}
/// @nodoc
class __$dataCopyWithImpl<$Res>
    implements _$dataCopyWith<$Res> {
  __$dataCopyWithImpl(this._self, this._then);

  final _data _self;
  final $Res Function(_data) _then;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cliente = freezed,Object? clienteDireccion = freezed,Object? pedidoVentaLinea = null,Object? currentStep = null,Object? observaciones = freezed,Object? pedidoCliente = freezed,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? isBorrador = null,}) {
  return _then(_data(
freezed == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente?,freezed == clienteDireccion ? _self.clienteDireccion : clienteDireccion // ignore: cast_nullable_to_non_nullable
as ClienteDireccion?,null == pedidoVentaLinea ? _self._pedidoVentaLinea : pedidoVentaLinea // ignore: cast_nullable_to_non_nullable
as List<PedidoVentaLinea>,null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,freezed == pedidoCliente ? _self.pedidoCliente : pedidoCliente // ignore: cast_nullable_to_non_nullable
as String?,null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as bool,freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,null == isBorrador ? _self.isBorrador : isBorrador // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get cliente {
    if (_self.cliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.cliente!, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteDireccionCopyWith<$Res>? get clienteDireccion {
    if (_self.clienteDireccion == null) {
    return null;
  }

  return $ClienteDireccionCopyWith<$Res>(_self.clienteDireccion!, (value) {
    return _then(_self.copyWith(clienteDireccion: value));
  });
}
}

/// @nodoc


class _error extends PedidoVentaEditPageControllerState {
  const _error(this.error, {this.stackTrace}): super._();
  

 final  Object error;
 final  StackTrace? stackTrace;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$errorCopyWith<_error> get copyWith => __$errorCopyWithImpl<_error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _error&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.error(error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$errorCopyWith<$Res> implements $PedidoVentaEditPageControllerStateCopyWith<$Res> {
  factory _$errorCopyWith(_error value, $Res Function(_error) _then) = __$errorCopyWithImpl;
@useResult
$Res call({
 Object error, StackTrace? stackTrace
});




}
/// @nodoc
class __$errorCopyWithImpl<$Res>
    implements _$errorCopyWith<$Res> {
  __$errorCopyWithImpl(this._self, this._then);

  final _error _self;
  final $Res Function(_error) _then;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_error(
null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}


}

/// @nodoc


class _deleted extends PedidoVentaEditPageControllerState {
  const _deleted(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _deleted);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.deleted()';
}


}




/// @nodoc


class _saved extends PedidoVentaEditPageControllerState {
  const _saved(this.pedidoVentaAppId, this.isBorrador): super._();
  

 final  String pedidoVentaAppId;
 final  bool isBorrador;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$savedCopyWith<_saved> get copyWith => __$savedCopyWithImpl<_saved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _saved&&(identical(other.pedidoVentaAppId, pedidoVentaAppId) || other.pedidoVentaAppId == pedidoVentaAppId)&&(identical(other.isBorrador, isBorrador) || other.isBorrador == isBorrador));
}


@override
int get hashCode => Object.hash(runtimeType,pedidoVentaAppId,isBorrador);

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.saved(pedidoVentaAppId: $pedidoVentaAppId, isBorrador: $isBorrador)';
}


}

/// @nodoc
abstract mixin class _$savedCopyWith<$Res> implements $PedidoVentaEditPageControllerStateCopyWith<$Res> {
  factory _$savedCopyWith(_saved value, $Res Function(_saved) _then) = __$savedCopyWithImpl;
@useResult
$Res call({
 String pedidoVentaAppId, bool isBorrador
});




}
/// @nodoc
class __$savedCopyWithImpl<$Res>
    implements _$savedCopyWith<$Res> {
  __$savedCopyWithImpl(this._self, this._then);

  final _saved _self;
  final $Res Function(_saved) _then;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? pedidoVentaAppId = null,Object? isBorrador = null,}) {
  return _then(_saved(
null == pedidoVentaAppId ? _self.pedidoVentaAppId : pedidoVentaAppId // ignore: cast_nullable_to_non_nullable
as String,null == isBorrador ? _self.isBorrador : isBorrador // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _savedError extends PedidoVentaEditPageControllerState {
  const _savedError(this.cliente, this.clienteDireccion, final  List<PedidoVentaLinea> pedidoVentaLinea, this.currentStep, this.observaciones, this.pedidoCliente, this.oferta, this.ofertaFechaHasta, this.isBorrador, this.error, {this.stackTrace}): _pedidoVentaLinea = pedidoVentaLinea,super._();
  

 final  Cliente? cliente;
 final  ClienteDireccion? clienteDireccion;
 final  List<PedidoVentaLinea> _pedidoVentaLinea;
 List<PedidoVentaLinea> get pedidoVentaLinea {
  if (_pedidoVentaLinea is EqualUnmodifiableListView) return _pedidoVentaLinea;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pedidoVentaLinea);
}

 final  int currentStep;
 final  String? observaciones;
 final  String? pedidoCliente;
 final  bool oferta;
 final  DateTime? ofertaFechaHasta;
 final  bool isBorrador;
 final  Object error;
 final  StackTrace? stackTrace;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$savedErrorCopyWith<_savedError> get copyWith => __$savedErrorCopyWithImpl<_savedError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _savedError&&(identical(other.cliente, cliente) || other.cliente == cliente)&&(identical(other.clienteDireccion, clienteDireccion) || other.clienteDireccion == clienteDireccion)&&const DeepCollectionEquality().equals(other._pedidoVentaLinea, _pedidoVentaLinea)&&(identical(other.currentStep, currentStep) || other.currentStep == currentStep)&&(identical(other.observaciones, observaciones) || other.observaciones == observaciones)&&(identical(other.pedidoCliente, pedidoCliente) || other.pedidoCliente == pedidoCliente)&&(identical(other.oferta, oferta) || other.oferta == oferta)&&(identical(other.ofertaFechaHasta, ofertaFechaHasta) || other.ofertaFechaHasta == ofertaFechaHasta)&&(identical(other.isBorrador, isBorrador) || other.isBorrador == isBorrador)&&const DeepCollectionEquality().equals(other.error, error)&&(identical(other.stackTrace, stackTrace) || other.stackTrace == stackTrace));
}


@override
int get hashCode => Object.hash(runtimeType,cliente,clienteDireccion,const DeepCollectionEquality().hash(_pedidoVentaLinea),currentStep,observaciones,pedidoCliente,oferta,ofertaFechaHasta,isBorrador,const DeepCollectionEquality().hash(error),stackTrace);

@override
String toString() {
  return 'PedidoVentaEditPageControllerState.savedError(cliente: $cliente, clienteDireccion: $clienteDireccion, pedidoVentaLinea: $pedidoVentaLinea, currentStep: $currentStep, observaciones: $observaciones, pedidoCliente: $pedidoCliente, oferta: $oferta, ofertaFechaHasta: $ofertaFechaHasta, isBorrador: $isBorrador, error: $error, stackTrace: $stackTrace)';
}


}

/// @nodoc
abstract mixin class _$savedErrorCopyWith<$Res> implements $PedidoVentaEditPageControllerStateCopyWith<$Res> {
  factory _$savedErrorCopyWith(_savedError value, $Res Function(_savedError) _then) = __$savedErrorCopyWithImpl;
@useResult
$Res call({
 Cliente? cliente, ClienteDireccion? clienteDireccion, List<PedidoVentaLinea> pedidoVentaLinea, int currentStep, String? observaciones, String? pedidoCliente, bool oferta, DateTime? ofertaFechaHasta, bool isBorrador, Object error, StackTrace? stackTrace
});


$ClienteCopyWith<$Res>? get cliente;$ClienteDireccionCopyWith<$Res>? get clienteDireccion;

}
/// @nodoc
class __$savedErrorCopyWithImpl<$Res>
    implements _$savedErrorCopyWith<$Res> {
  __$savedErrorCopyWithImpl(this._self, this._then);

  final _savedError _self;
  final $Res Function(_savedError) _then;

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cliente = freezed,Object? clienteDireccion = freezed,Object? pedidoVentaLinea = null,Object? currentStep = null,Object? observaciones = freezed,Object? pedidoCliente = freezed,Object? oferta = null,Object? ofertaFechaHasta = freezed,Object? isBorrador = null,Object? error = null,Object? stackTrace = freezed,}) {
  return _then(_savedError(
freezed == cliente ? _self.cliente : cliente // ignore: cast_nullable_to_non_nullable
as Cliente?,freezed == clienteDireccion ? _self.clienteDireccion : clienteDireccion // ignore: cast_nullable_to_non_nullable
as ClienteDireccion?,null == pedidoVentaLinea ? _self._pedidoVentaLinea : pedidoVentaLinea // ignore: cast_nullable_to_non_nullable
as List<PedidoVentaLinea>,null == currentStep ? _self.currentStep : currentStep // ignore: cast_nullable_to_non_nullable
as int,freezed == observaciones ? _self.observaciones : observaciones // ignore: cast_nullable_to_non_nullable
as String?,freezed == pedidoCliente ? _self.pedidoCliente : pedidoCliente // ignore: cast_nullable_to_non_nullable
as String?,null == oferta ? _self.oferta : oferta // ignore: cast_nullable_to_non_nullable
as bool,freezed == ofertaFechaHasta ? _self.ofertaFechaHasta : ofertaFechaHasta // ignore: cast_nullable_to_non_nullable
as DateTime?,null == isBorrador ? _self.isBorrador : isBorrador // ignore: cast_nullable_to_non_nullable
as bool,null == error ? _self.error : error ,stackTrace: freezed == stackTrace ? _self.stackTrace : stackTrace // ignore: cast_nullable_to_non_nullable
as StackTrace?,
  ));
}

/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteCopyWith<$Res>? get cliente {
    if (_self.cliente == null) {
    return null;
  }

  return $ClienteCopyWith<$Res>(_self.cliente!, (value) {
    return _then(_self.copyWith(cliente: value));
  });
}/// Create a copy of PedidoVentaEditPageControllerState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ClienteDireccionCopyWith<$Res>? get clienteDireccion {
    if (_self.clienteDireccion == null) {
    return null;
  }

  return $ClienteDireccionCopyWith<$Res>(_self.clienteDireccion!, (value) {
    return _then(_self.copyWith(clienteDireccion: value));
  });
}
}

// dart format on
