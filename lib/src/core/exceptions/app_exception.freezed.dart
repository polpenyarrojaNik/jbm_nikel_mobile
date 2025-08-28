// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AppException {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AppException);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException()';
}


}

/// @nodoc
class $AppExceptionCopyWith<$Res>  {
$AppExceptionCopyWith(AppException _, $Res Function(AppException) __);
}


/// Adds pattern-matching-related methods to [AppException].
extension AppExceptionPatterns on AppException {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( RestApiFailure value)?  restApiFailure,TResult Function( AuthLocalFailure value)?  authLocalFailure,TResult Function( FetchLocalDataFailure value)?  fetchLocalDataFailure,TResult Function( CreateFileInCahceFailure value)?  createFileInCacheFailure,TResult Function( SyncFailure value)?  syncFailure,TResult Function( ClienteNotFoundFailure value)?  clienteNotFound,TResult Function( ArticuloNotFoundFailure value)?  articuloNotFound,TResult Function( PedidoVentaNotFoundFailure value)?  pedidoVentaNotFound,TResult Function( PedidoVentaDeleteFailure value)?  pedidoVentaDeleteFailure,TResult Function( InsertDataFailure value)?  insertDataFailure,TResult Function( NotConnectionFailure value)?  notConnection,TResult Function( ArchivoNoEncontrado value)?  noSuchFileOrDirectory,TResult Function( UnexpectedResponseFormat value)?  unexpectedResponseFormat,TResult Function( UnexpectedError value)?  unexpectedError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case RestApiFailure() when restApiFailure != null:
return restApiFailure(_that);case AuthLocalFailure() when authLocalFailure != null:
return authLocalFailure(_that);case FetchLocalDataFailure() when fetchLocalDataFailure != null:
return fetchLocalDataFailure(_that);case CreateFileInCahceFailure() when createFileInCacheFailure != null:
return createFileInCacheFailure(_that);case SyncFailure() when syncFailure != null:
return syncFailure(_that);case ClienteNotFoundFailure() when clienteNotFound != null:
return clienteNotFound(_that);case ArticuloNotFoundFailure() when articuloNotFound != null:
return articuloNotFound(_that);case PedidoVentaNotFoundFailure() when pedidoVentaNotFound != null:
return pedidoVentaNotFound(_that);case PedidoVentaDeleteFailure() when pedidoVentaDeleteFailure != null:
return pedidoVentaDeleteFailure(_that);case InsertDataFailure() when insertDataFailure != null:
return insertDataFailure(_that);case NotConnectionFailure() when notConnection != null:
return notConnection(_that);case ArchivoNoEncontrado() when noSuchFileOrDirectory != null:
return noSuchFileOrDirectory(_that);case UnexpectedResponseFormat() when unexpectedResponseFormat != null:
return unexpectedResponseFormat(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( RestApiFailure value)  restApiFailure,required TResult Function( AuthLocalFailure value)  authLocalFailure,required TResult Function( FetchLocalDataFailure value)  fetchLocalDataFailure,required TResult Function( CreateFileInCahceFailure value)  createFileInCacheFailure,required TResult Function( SyncFailure value)  syncFailure,required TResult Function( ClienteNotFoundFailure value)  clienteNotFound,required TResult Function( ArticuloNotFoundFailure value)  articuloNotFound,required TResult Function( PedidoVentaNotFoundFailure value)  pedidoVentaNotFound,required TResult Function( PedidoVentaDeleteFailure value)  pedidoVentaDeleteFailure,required TResult Function( InsertDataFailure value)  insertDataFailure,required TResult Function( NotConnectionFailure value)  notConnection,required TResult Function( ArchivoNoEncontrado value)  noSuchFileOrDirectory,required TResult Function( UnexpectedResponseFormat value)  unexpectedResponseFormat,required TResult Function( UnexpectedError value)  unexpectedError,}){
final _that = this;
switch (_that) {
case RestApiFailure():
return restApiFailure(_that);case AuthLocalFailure():
return authLocalFailure(_that);case FetchLocalDataFailure():
return fetchLocalDataFailure(_that);case CreateFileInCahceFailure():
return createFileInCacheFailure(_that);case SyncFailure():
return syncFailure(_that);case ClienteNotFoundFailure():
return clienteNotFound(_that);case ArticuloNotFoundFailure():
return articuloNotFound(_that);case PedidoVentaNotFoundFailure():
return pedidoVentaNotFound(_that);case PedidoVentaDeleteFailure():
return pedidoVentaDeleteFailure(_that);case InsertDataFailure():
return insertDataFailure(_that);case NotConnectionFailure():
return notConnection(_that);case ArchivoNoEncontrado():
return noSuchFileOrDirectory(_that);case UnexpectedResponseFormat():
return unexpectedResponseFormat(_that);case UnexpectedError():
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( RestApiFailure value)?  restApiFailure,TResult? Function( AuthLocalFailure value)?  authLocalFailure,TResult? Function( FetchLocalDataFailure value)?  fetchLocalDataFailure,TResult? Function( CreateFileInCahceFailure value)?  createFileInCacheFailure,TResult? Function( SyncFailure value)?  syncFailure,TResult? Function( ClienteNotFoundFailure value)?  clienteNotFound,TResult? Function( ArticuloNotFoundFailure value)?  articuloNotFound,TResult? Function( PedidoVentaNotFoundFailure value)?  pedidoVentaNotFound,TResult? Function( PedidoVentaDeleteFailure value)?  pedidoVentaDeleteFailure,TResult? Function( InsertDataFailure value)?  insertDataFailure,TResult? Function( NotConnectionFailure value)?  notConnection,TResult? Function( ArchivoNoEncontrado value)?  noSuchFileOrDirectory,TResult? Function( UnexpectedResponseFormat value)?  unexpectedResponseFormat,TResult? Function( UnexpectedError value)?  unexpectedError,}){
final _that = this;
switch (_that) {
case RestApiFailure() when restApiFailure != null:
return restApiFailure(_that);case AuthLocalFailure() when authLocalFailure != null:
return authLocalFailure(_that);case FetchLocalDataFailure() when fetchLocalDataFailure != null:
return fetchLocalDataFailure(_that);case CreateFileInCahceFailure() when createFileInCacheFailure != null:
return createFileInCacheFailure(_that);case SyncFailure() when syncFailure != null:
return syncFailure(_that);case ClienteNotFoundFailure() when clienteNotFound != null:
return clienteNotFound(_that);case ArticuloNotFoundFailure() when articuloNotFound != null:
return articuloNotFound(_that);case PedidoVentaNotFoundFailure() when pedidoVentaNotFound != null:
return pedidoVentaNotFound(_that);case PedidoVentaDeleteFailure() when pedidoVentaDeleteFailure != null:
return pedidoVentaDeleteFailure(_that);case InsertDataFailure() when insertDataFailure != null:
return insertDataFailure(_that);case NotConnectionFailure() when notConnection != null:
return notConnection(_that);case ArchivoNoEncontrado() when noSuchFileOrDirectory != null:
return noSuchFileOrDirectory(_that);case UnexpectedResponseFormat() when unexpectedResponseFormat != null:
return unexpectedResponseFormat(_that);case UnexpectedError() when unexpectedError != null:
return unexpectedError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( int errorCode,  String errorMessage)?  restApiFailure,TResult Function( String errorMessage)?  authLocalFailure,TResult Function( String errorMessage)?  fetchLocalDataFailure,TResult Function( String errorMessage)?  createFileInCacheFailure,TResult Function( String tableToSync,  String errorMessage)?  syncFailure,TResult Function()?  clienteNotFound,TResult Function()?  articuloNotFound,TResult Function()?  pedidoVentaNotFound,TResult Function( String errorMessage)?  pedidoVentaDeleteFailure,TResult Function( String errorMessage)?  insertDataFailure,TResult Function()?  notConnection,TResult Function()?  noSuchFileOrDirectory,TResult Function()?  unexpectedResponseFormat,TResult Function()?  unexpectedError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case RestApiFailure() when restApiFailure != null:
return restApiFailure(_that.errorCode,_that.errorMessage);case AuthLocalFailure() when authLocalFailure != null:
return authLocalFailure(_that.errorMessage);case FetchLocalDataFailure() when fetchLocalDataFailure != null:
return fetchLocalDataFailure(_that.errorMessage);case CreateFileInCahceFailure() when createFileInCacheFailure != null:
return createFileInCacheFailure(_that.errorMessage);case SyncFailure() when syncFailure != null:
return syncFailure(_that.tableToSync,_that.errorMessage);case ClienteNotFoundFailure() when clienteNotFound != null:
return clienteNotFound();case ArticuloNotFoundFailure() when articuloNotFound != null:
return articuloNotFound();case PedidoVentaNotFoundFailure() when pedidoVentaNotFound != null:
return pedidoVentaNotFound();case PedidoVentaDeleteFailure() when pedidoVentaDeleteFailure != null:
return pedidoVentaDeleteFailure(_that.errorMessage);case InsertDataFailure() when insertDataFailure != null:
return insertDataFailure(_that.errorMessage);case NotConnectionFailure() when notConnection != null:
return notConnection();case ArchivoNoEncontrado() when noSuchFileOrDirectory != null:
return noSuchFileOrDirectory();case UnexpectedResponseFormat() when unexpectedResponseFormat != null:
return unexpectedResponseFormat();case UnexpectedError() when unexpectedError != null:
return unexpectedError();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( int errorCode,  String errorMessage)  restApiFailure,required TResult Function( String errorMessage)  authLocalFailure,required TResult Function( String errorMessage)  fetchLocalDataFailure,required TResult Function( String errorMessage)  createFileInCacheFailure,required TResult Function( String tableToSync,  String errorMessage)  syncFailure,required TResult Function()  clienteNotFound,required TResult Function()  articuloNotFound,required TResult Function()  pedidoVentaNotFound,required TResult Function( String errorMessage)  pedidoVentaDeleteFailure,required TResult Function( String errorMessage)  insertDataFailure,required TResult Function()  notConnection,required TResult Function()  noSuchFileOrDirectory,required TResult Function()  unexpectedResponseFormat,required TResult Function()  unexpectedError,}) {final _that = this;
switch (_that) {
case RestApiFailure():
return restApiFailure(_that.errorCode,_that.errorMessage);case AuthLocalFailure():
return authLocalFailure(_that.errorMessage);case FetchLocalDataFailure():
return fetchLocalDataFailure(_that.errorMessage);case CreateFileInCahceFailure():
return createFileInCacheFailure(_that.errorMessage);case SyncFailure():
return syncFailure(_that.tableToSync,_that.errorMessage);case ClienteNotFoundFailure():
return clienteNotFound();case ArticuloNotFoundFailure():
return articuloNotFound();case PedidoVentaNotFoundFailure():
return pedidoVentaNotFound();case PedidoVentaDeleteFailure():
return pedidoVentaDeleteFailure(_that.errorMessage);case InsertDataFailure():
return insertDataFailure(_that.errorMessage);case NotConnectionFailure():
return notConnection();case ArchivoNoEncontrado():
return noSuchFileOrDirectory();case UnexpectedResponseFormat():
return unexpectedResponseFormat();case UnexpectedError():
return unexpectedError();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( int errorCode,  String errorMessage)?  restApiFailure,TResult? Function( String errorMessage)?  authLocalFailure,TResult? Function( String errorMessage)?  fetchLocalDataFailure,TResult? Function( String errorMessage)?  createFileInCacheFailure,TResult? Function( String tableToSync,  String errorMessage)?  syncFailure,TResult? Function()?  clienteNotFound,TResult? Function()?  articuloNotFound,TResult? Function()?  pedidoVentaNotFound,TResult? Function( String errorMessage)?  pedidoVentaDeleteFailure,TResult? Function( String errorMessage)?  insertDataFailure,TResult? Function()?  notConnection,TResult? Function()?  noSuchFileOrDirectory,TResult? Function()?  unexpectedResponseFormat,TResult? Function()?  unexpectedError,}) {final _that = this;
switch (_that) {
case RestApiFailure() when restApiFailure != null:
return restApiFailure(_that.errorCode,_that.errorMessage);case AuthLocalFailure() when authLocalFailure != null:
return authLocalFailure(_that.errorMessage);case FetchLocalDataFailure() when fetchLocalDataFailure != null:
return fetchLocalDataFailure(_that.errorMessage);case CreateFileInCahceFailure() when createFileInCacheFailure != null:
return createFileInCacheFailure(_that.errorMessage);case SyncFailure() when syncFailure != null:
return syncFailure(_that.tableToSync,_that.errorMessage);case ClienteNotFoundFailure() when clienteNotFound != null:
return clienteNotFound();case ArticuloNotFoundFailure() when articuloNotFound != null:
return articuloNotFound();case PedidoVentaNotFoundFailure() when pedidoVentaNotFound != null:
return pedidoVentaNotFound();case PedidoVentaDeleteFailure() when pedidoVentaDeleteFailure != null:
return pedidoVentaDeleteFailure(_that.errorMessage);case InsertDataFailure() when insertDataFailure != null:
return insertDataFailure(_that.errorMessage);case NotConnectionFailure() when notConnection != null:
return notConnection();case ArchivoNoEncontrado() when noSuchFileOrDirectory != null:
return noSuchFileOrDirectory();case UnexpectedResponseFormat() when unexpectedResponseFormat != null:
return unexpectedResponseFormat();case UnexpectedError() when unexpectedError != null:
return unexpectedError();case _:
  return null;

}
}

}

/// @nodoc


class RestApiFailure implements AppException {
  const RestApiFailure(this.errorCode, this.errorMessage);
  

 final  int errorCode;
 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestApiFailureCopyWith<RestApiFailure> get copyWith => _$RestApiFailureCopyWithImpl<RestApiFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestApiFailure&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorCode,errorMessage);

@override
String toString() {
  return 'AppException.restApiFailure(errorCode: $errorCode, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $RestApiFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $RestApiFailureCopyWith(RestApiFailure value, $Res Function(RestApiFailure) _then) = _$RestApiFailureCopyWithImpl;
@useResult
$Res call({
 int errorCode, String errorMessage
});




}
/// @nodoc
class _$RestApiFailureCopyWithImpl<$Res>
    implements $RestApiFailureCopyWith<$Res> {
  _$RestApiFailureCopyWithImpl(this._self, this._then);

  final RestApiFailure _self;
  final $Res Function(RestApiFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorCode = null,Object? errorMessage = null,}) {
  return _then(RestApiFailure(
null == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as int,null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AuthLocalFailure implements AppException {
  const AuthLocalFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthLocalFailureCopyWith<AuthLocalFailure> get copyWith => _$AuthLocalFailureCopyWithImpl<AuthLocalFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLocalFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppException.authLocalFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $AuthLocalFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $AuthLocalFailureCopyWith(AuthLocalFailure value, $Res Function(AuthLocalFailure) _then) = _$AuthLocalFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$AuthLocalFailureCopyWithImpl<$Res>
    implements $AuthLocalFailureCopyWith<$Res> {
  _$AuthLocalFailureCopyWithImpl(this._self, this._then);

  final AuthLocalFailure _self;
  final $Res Function(AuthLocalFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(AuthLocalFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchLocalDataFailure implements AppException {
  const FetchLocalDataFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchLocalDataFailureCopyWith<FetchLocalDataFailure> get copyWith => _$FetchLocalDataFailureCopyWithImpl<FetchLocalDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchLocalDataFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppException.fetchLocalDataFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $FetchLocalDataFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $FetchLocalDataFailureCopyWith(FetchLocalDataFailure value, $Res Function(FetchLocalDataFailure) _then) = _$FetchLocalDataFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$FetchLocalDataFailureCopyWithImpl<$Res>
    implements $FetchLocalDataFailureCopyWith<$Res> {
  _$FetchLocalDataFailureCopyWithImpl(this._self, this._then);

  final FetchLocalDataFailure _self;
  final $Res Function(FetchLocalDataFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(FetchLocalDataFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CreateFileInCahceFailure implements AppException {
  const CreateFileInCahceFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateFileInCahceFailureCopyWith<CreateFileInCahceFailure> get copyWith => _$CreateFileInCahceFailureCopyWithImpl<CreateFileInCahceFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateFileInCahceFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppException.createFileInCacheFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $CreateFileInCahceFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $CreateFileInCahceFailureCopyWith(CreateFileInCahceFailure value, $Res Function(CreateFileInCahceFailure) _then) = _$CreateFileInCahceFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$CreateFileInCahceFailureCopyWithImpl<$Res>
    implements $CreateFileInCahceFailureCopyWith<$Res> {
  _$CreateFileInCahceFailureCopyWithImpl(this._self, this._then);

  final CreateFileInCahceFailure _self;
  final $Res Function(CreateFileInCahceFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(CreateFileInCahceFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SyncFailure implements AppException {
  const SyncFailure(this.tableToSync, this.errorMessage);
  

 final  String tableToSync;
 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SyncFailureCopyWith<SyncFailure> get copyWith => _$SyncFailureCopyWithImpl<SyncFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SyncFailure&&(identical(other.tableToSync, tableToSync) || other.tableToSync == tableToSync)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,tableToSync,errorMessage);

@override
String toString() {
  return 'AppException.syncFailure(tableToSync: $tableToSync, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SyncFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $SyncFailureCopyWith(SyncFailure value, $Res Function(SyncFailure) _then) = _$SyncFailureCopyWithImpl;
@useResult
$Res call({
 String tableToSync, String errorMessage
});




}
/// @nodoc
class _$SyncFailureCopyWithImpl<$Res>
    implements $SyncFailureCopyWith<$Res> {
  _$SyncFailureCopyWithImpl(this._self, this._then);

  final SyncFailure _self;
  final $Res Function(SyncFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tableToSync = null,Object? errorMessage = null,}) {
  return _then(SyncFailure(
null == tableToSync ? _self.tableToSync : tableToSync // ignore: cast_nullable_to_non_nullable
as String,null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClienteNotFoundFailure implements AppException {
  const ClienteNotFoundFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClienteNotFoundFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.clienteNotFound()';
}


}




/// @nodoc


class ArticuloNotFoundFailure implements AppException {
  const ArticuloNotFoundFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArticuloNotFoundFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.articuloNotFound()';
}


}




/// @nodoc


class PedidoVentaNotFoundFailure implements AppException {
  const PedidoVentaNotFoundFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaNotFoundFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.pedidoVentaNotFound()';
}


}




/// @nodoc


class PedidoVentaDeleteFailure implements AppException {
  const PedidoVentaDeleteFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PedidoVentaDeleteFailureCopyWith<PedidoVentaDeleteFailure> get copyWith => _$PedidoVentaDeleteFailureCopyWithImpl<PedidoVentaDeleteFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PedidoVentaDeleteFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppException.pedidoVentaDeleteFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PedidoVentaDeleteFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $PedidoVentaDeleteFailureCopyWith(PedidoVentaDeleteFailure value, $Res Function(PedidoVentaDeleteFailure) _then) = _$PedidoVentaDeleteFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$PedidoVentaDeleteFailureCopyWithImpl<$Res>
    implements $PedidoVentaDeleteFailureCopyWith<$Res> {
  _$PedidoVentaDeleteFailureCopyWithImpl(this._self, this._then);

  final PedidoVentaDeleteFailure _self;
  final $Res Function(PedidoVentaDeleteFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(PedidoVentaDeleteFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class InsertDataFailure implements AppException {
  const InsertDataFailure(this.errorMessage);
  

 final  String errorMessage;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InsertDataFailureCopyWith<InsertDataFailure> get copyWith => _$InsertDataFailureCopyWithImpl<InsertDataFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InsertDataFailure&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,errorMessage);

@override
String toString() {
  return 'AppException.insertDataFailure(errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $InsertDataFailureCopyWith<$Res> implements $AppExceptionCopyWith<$Res> {
  factory $InsertDataFailureCopyWith(InsertDataFailure value, $Res Function(InsertDataFailure) _then) = _$InsertDataFailureCopyWithImpl;
@useResult
$Res call({
 String errorMessage
});




}
/// @nodoc
class _$InsertDataFailureCopyWithImpl<$Res>
    implements $InsertDataFailureCopyWith<$Res> {
  _$InsertDataFailureCopyWithImpl(this._self, this._then);

  final InsertDataFailure _self;
  final $Res Function(InsertDataFailure) _then;

/// Create a copy of AppException
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorMessage = null,}) {
  return _then(InsertDataFailure(
null == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class NotConnectionFailure implements AppException {
  const NotConnectionFailure();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is NotConnectionFailure);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.notConnection()';
}


}




/// @nodoc


class ArchivoNoEncontrado implements AppException {
  const ArchivoNoEncontrado();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ArchivoNoEncontrado);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.noSuchFileOrDirectory()';
}


}




/// @nodoc


class UnexpectedResponseFormat implements AppException {
  const UnexpectedResponseFormat();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedResponseFormat);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.unexpectedResponseFormat()';
}


}




/// @nodoc


class UnexpectedError implements AppException {
  const UnexpectedError();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UnexpectedError);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AppException.unexpectedError()';
}


}




// dart format on
