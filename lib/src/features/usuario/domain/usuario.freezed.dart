// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$Usuario {

 String get id; String get usuario; String get contrasenya; String? get nombreUsuario; String? get refreshToken; String get provisionalToken; bool get test; String get idiomaId; bool get modificarPedido; bool get verTotalVentas; double get margenComercial; String get packageName; String get version; String get buildNumber; String get deviceInfo;
/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioCopyWith<Usuario> get copyWith => _$UsuarioCopyWithImpl<Usuario>(this as Usuario, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Usuario&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.contrasenya, contrasenya) || other.contrasenya == contrasenya)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.provisionalToken, provisionalToken) || other.provisionalToken == provisionalToken)&&(identical(other.test, test) || other.test == test)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}


@override
int get hashCode => Object.hash(runtimeType,id,usuario,contrasenya,nombreUsuario,refreshToken,provisionalToken,test,idiomaId,modificarPedido,verTotalVentas,margenComercial,packageName,version,buildNumber,deviceInfo);

@override
String toString() {
  return 'Usuario(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, refreshToken: $refreshToken, provisionalToken: $provisionalToken, test: $test, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, margenComercial: $margenComercial, packageName: $packageName, version: $version, buildNumber: $buildNumber, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class $UsuarioCopyWith<$Res>  {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) _then) = _$UsuarioCopyWithImpl;
@useResult
$Res call({
 String id, String usuario, String contrasenya, String? nombreUsuario, String? refreshToken, String provisionalToken, bool test, String idiomaId, bool modificarPedido, bool verTotalVentas, double margenComercial, String packageName, String version, String buildNumber, String deviceInfo
});




}
/// @nodoc
class _$UsuarioCopyWithImpl<$Res>
    implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._self, this._then);

  final Usuario _self;
  final $Res Function(Usuario) _then;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? usuario = null,Object? contrasenya = null,Object? nombreUsuario = freezed,Object? refreshToken = freezed,Object? provisionalToken = null,Object? test = null,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? margenComercial = null,Object? packageName = null,Object? version = null,Object? buildNumber = null,Object? deviceInfo = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,contrasenya: null == contrasenya ? _self.contrasenya : contrasenya // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,provisionalToken: null == provisionalToken ? _self.provisionalToken : provisionalToken // ignore: cast_nullable_to_non_nullable
as String,test: null == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as bool,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as bool,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as bool,margenComercial: null == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [Usuario].
extension UsuarioPatterns on Usuario {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Usuario value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Usuario() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Usuario value)  $default,){
final _that = this;
switch (_that) {
case _Usuario():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Usuario value)?  $default,){
final _that = this;
switch (_that) {
case _Usuario() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String usuario,  String contrasenya,  String? nombreUsuario,  String? refreshToken,  String provisionalToken,  bool test,  String idiomaId,  bool modificarPedido,  bool verTotalVentas,  double margenComercial,  String packageName,  String version,  String buildNumber,  String deviceInfo)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Usuario() when $default != null:
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.refreshToken,_that.provisionalToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String usuario,  String contrasenya,  String? nombreUsuario,  String? refreshToken,  String provisionalToken,  bool test,  String idiomaId,  bool modificarPedido,  bool verTotalVentas,  double margenComercial,  String packageName,  String version,  String buildNumber,  String deviceInfo)  $default,) {final _that = this;
switch (_that) {
case _Usuario():
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.refreshToken,_that.provisionalToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String usuario,  String contrasenya,  String? nombreUsuario,  String? refreshToken,  String provisionalToken,  bool test,  String idiomaId,  bool modificarPedido,  bool verTotalVentas,  double margenComercial,  String packageName,  String version,  String buildNumber,  String deviceInfo)?  $default,) {final _that = this;
switch (_that) {
case _Usuario() when $default != null:
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.refreshToken,_that.provisionalToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.margenComercial,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo);case _:
  return null;

}
}

}

/// @nodoc


class _Usuario extends Usuario {
  const _Usuario({required this.id, required this.usuario, required this.contrasenya, this.nombreUsuario, this.refreshToken, required this.provisionalToken, required this.test, required this.idiomaId, required this.modificarPedido, required this.verTotalVentas, required this.margenComercial, required this.packageName, required this.version, required this.buildNumber, required this.deviceInfo}): super._();
  

@override final  String id;
@override final  String usuario;
@override final  String contrasenya;
@override final  String? nombreUsuario;
@override final  String? refreshToken;
@override final  String provisionalToken;
@override final  bool test;
@override final  String idiomaId;
@override final  bool modificarPedido;
@override final  bool verTotalVentas;
@override final  double margenComercial;
@override final  String packageName;
@override final  String version;
@override final  String buildNumber;
@override final  String deviceInfo;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioCopyWith<_Usuario> get copyWith => __$UsuarioCopyWithImpl<_Usuario>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Usuario&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.contrasenya, contrasenya) || other.contrasenya == contrasenya)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.provisionalToken, provisionalToken) || other.provisionalToken == provisionalToken)&&(identical(other.test, test) || other.test == test)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo));
}


@override
int get hashCode => Object.hash(runtimeType,id,usuario,contrasenya,nombreUsuario,refreshToken,provisionalToken,test,idiomaId,modificarPedido,verTotalVentas,margenComercial,packageName,version,buildNumber,deviceInfo);

@override
String toString() {
  return 'Usuario(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, refreshToken: $refreshToken, provisionalToken: $provisionalToken, test: $test, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, margenComercial: $margenComercial, packageName: $packageName, version: $version, buildNumber: $buildNumber, deviceInfo: $deviceInfo)';
}


}

/// @nodoc
abstract mixin class _$UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$UsuarioCopyWith(_Usuario value, $Res Function(_Usuario) _then) = __$UsuarioCopyWithImpl;
@override @useResult
$Res call({
 String id, String usuario, String contrasenya, String? nombreUsuario, String? refreshToken, String provisionalToken, bool test, String idiomaId, bool modificarPedido, bool verTotalVentas, double margenComercial, String packageName, String version, String buildNumber, String deviceInfo
});




}
/// @nodoc
class __$UsuarioCopyWithImpl<$Res>
    implements _$UsuarioCopyWith<$Res> {
  __$UsuarioCopyWithImpl(this._self, this._then);

  final _Usuario _self;
  final $Res Function(_Usuario) _then;

/// Create a copy of Usuario
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? usuario = null,Object? contrasenya = null,Object? nombreUsuario = freezed,Object? refreshToken = freezed,Object? provisionalToken = null,Object? test = null,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? margenComercial = null,Object? packageName = null,Object? version = null,Object? buildNumber = null,Object? deviceInfo = null,}) {
  return _then(_Usuario(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,contrasenya: null == contrasenya ? _self.contrasenya : contrasenya // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,provisionalToken: null == provisionalToken ? _self.provisionalToken : provisionalToken // ignore: cast_nullable_to_non_nullable
as String,test: null == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as bool,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as bool,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as bool,margenComercial: null == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double,packageName: null == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String,version: null == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String,buildNumber: null == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String,deviceInfo: null == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
