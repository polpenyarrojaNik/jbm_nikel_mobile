// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UsuarioDTO {

@JsonKey(name: 'USUARIO_ID') String get id;@JsonKey(name: 'USUARIO') String get usuario;@JsonKey(name: 'CLAVE') String get contrasenya;@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? get nombreUsuario;@JsonKey(name: 'PROVISIONAL_TOKEN') String get provisionalToken;@JsonKey(name: 'REFRESH_TOKEN') String? get refreshToken;@JsonKey(name: 'TEST') String get test;@JsonKey(name: 'IDIOMA_ID') String get idiomaId;@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String get modificarPedido;@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String get verTotalVentas;@JsonKey(name: 'PACKAGE_NAME') String? get packageName;@JsonKey(name: 'VERSION') String? get version;@JsonKey(name: 'BUILD_NUMBER') String? get buildNumber;@JsonKey(name: 'DEVICE_INFO') String? get deviceInfo;@JsonKey(name: 'MARGEN_COMERCIAL') double? get margenComercial;
/// Create a copy of UsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsuarioDTOCopyWith<UsuarioDTO> get copyWith => _$UsuarioDTOCopyWithImpl<UsuarioDTO>(this as UsuarioDTO, _$identity);

  /// Serializes this UsuarioDTO to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsuarioDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.contrasenya, contrasenya) || other.contrasenya == contrasenya)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.provisionalToken, provisionalToken) || other.provisionalToken == provisionalToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.test, test) || other.test == test)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,usuario,contrasenya,nombreUsuario,provisionalToken,refreshToken,test,idiomaId,modificarPedido,verTotalVentas,packageName,version,buildNumber,deviceInfo,margenComercial);

@override
String toString() {
  return 'UsuarioDTO(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, provisionalToken: $provisionalToken, refreshToken: $refreshToken, test: $test, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, packageName: $packageName, version: $version, buildNumber: $buildNumber, deviceInfo: $deviceInfo, margenComercial: $margenComercial)';
}


}

/// @nodoc
abstract mixin class $UsuarioDTOCopyWith<$Res>  {
  factory $UsuarioDTOCopyWith(UsuarioDTO value, $Res Function(UsuarioDTO) _then) = _$UsuarioDTOCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String id,@JsonKey(name: 'USUARIO') String usuario,@JsonKey(name: 'CLAVE') String contrasenya,@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,@JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,@JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,@JsonKey(name: 'TEST') String test,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,@JsonKey(name: 'PACKAGE_NAME') String? packageName,@JsonKey(name: 'VERSION') String? version,@JsonKey(name: 'BUILD_NUMBER') String? buildNumber,@JsonKey(name: 'DEVICE_INFO') String? deviceInfo,@JsonKey(name: 'MARGEN_COMERCIAL') double? margenComercial
});




}
/// @nodoc
class _$UsuarioDTOCopyWithImpl<$Res>
    implements $UsuarioDTOCopyWith<$Res> {
  _$UsuarioDTOCopyWithImpl(this._self, this._then);

  final UsuarioDTO _self;
  final $Res Function(UsuarioDTO) _then;

/// Create a copy of UsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? usuario = null,Object? contrasenya = null,Object? nombreUsuario = freezed,Object? provisionalToken = null,Object? refreshToken = freezed,Object? test = null,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? packageName = freezed,Object? version = freezed,Object? buildNumber = freezed,Object? deviceInfo = freezed,Object? margenComercial = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,contrasenya: null == contrasenya ? _self.contrasenya : contrasenya // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,provisionalToken: null == provisionalToken ? _self.provisionalToken : provisionalToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,test: null == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as String,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as String,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as String,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,margenComercial: freezed == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [UsuarioDTO].
extension UsuarioDTOPatterns on UsuarioDTO {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _UsuarioDTO value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _UsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _UsuarioDTO value)  $default,){
final _that = this;
switch (_that) {
case _UsuarioDTO():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _UsuarioDTO value)?  $default,){
final _that = this;
switch (_that) {
case _UsuarioDTO() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'CLAVE')  String contrasenya, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'PROVISIONAL_TOKEN')  String provisionalToken, @JsonKey(name: 'REFRESH_TOKEN')  String? refreshToken, @JsonKey(name: 'TEST')  String test, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'PACKAGE_NAME')  String? packageName, @JsonKey(name: 'VERSION')  String? version, @JsonKey(name: 'BUILD_NUMBER')  String? buildNumber, @JsonKey(name: 'DEVICE_INFO')  String? deviceInfo, @JsonKey(name: 'MARGEN_COMERCIAL')  double? margenComercial)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _UsuarioDTO() when $default != null:
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.provisionalToken,_that.refreshToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo,_that.margenComercial);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'CLAVE')  String contrasenya, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'PROVISIONAL_TOKEN')  String provisionalToken, @JsonKey(name: 'REFRESH_TOKEN')  String? refreshToken, @JsonKey(name: 'TEST')  String test, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'PACKAGE_NAME')  String? packageName, @JsonKey(name: 'VERSION')  String? version, @JsonKey(name: 'BUILD_NUMBER')  String? buildNumber, @JsonKey(name: 'DEVICE_INFO')  String? deviceInfo, @JsonKey(name: 'MARGEN_COMERCIAL')  double? margenComercial)  $default,) {final _that = this;
switch (_that) {
case _UsuarioDTO():
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.provisionalToken,_that.refreshToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo,_that.margenComercial);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'USUARIO_ID')  String id, @JsonKey(name: 'USUARIO')  String usuario, @JsonKey(name: 'CLAVE')  String contrasenya, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')  String? nombreUsuario, @JsonKey(name: 'PROVISIONAL_TOKEN')  String provisionalToken, @JsonKey(name: 'REFRESH_TOKEN')  String? refreshToken, @JsonKey(name: 'TEST')  String test, @JsonKey(name: 'IDIOMA_ID')  String idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')  String modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS')  String verTotalVentas, @JsonKey(name: 'PACKAGE_NAME')  String? packageName, @JsonKey(name: 'VERSION')  String? version, @JsonKey(name: 'BUILD_NUMBER')  String? buildNumber, @JsonKey(name: 'DEVICE_INFO')  String? deviceInfo, @JsonKey(name: 'MARGEN_COMERCIAL')  double? margenComercial)?  $default,) {final _that = this;
switch (_that) {
case _UsuarioDTO() when $default != null:
return $default(_that.id,_that.usuario,_that.contrasenya,_that.nombreUsuario,_that.provisionalToken,_that.refreshToken,_that.test,_that.idiomaId,_that.modificarPedido,_that.verTotalVentas,_that.packageName,_that.version,_that.buildNumber,_that.deviceInfo,_that.margenComercial);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _UsuarioDTO extends UsuarioDTO {
  const _UsuarioDTO({@JsonKey(name: 'USUARIO_ID') required this.id, @JsonKey(name: 'USUARIO') required this.usuario, @JsonKey(name: 'CLAVE') required this.contrasenya, @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') required this.nombreUsuario, @JsonKey(name: 'PROVISIONAL_TOKEN') required this.provisionalToken, @JsonKey(name: 'REFRESH_TOKEN') this.refreshToken, @JsonKey(name: 'TEST') required this.test, @JsonKey(name: 'IDIOMA_ID') required this.idiomaId, @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') required this.modificarPedido, @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required this.verTotalVentas, @JsonKey(name: 'PACKAGE_NAME') this.packageName, @JsonKey(name: 'VERSION') this.version, @JsonKey(name: 'BUILD_NUMBER') this.buildNumber, @JsonKey(name: 'DEVICE_INFO') this.deviceInfo, @JsonKey(name: 'MARGEN_COMERCIAL') this.margenComercial}): super._();
  factory _UsuarioDTO.fromJson(Map<String, dynamic> json) => _$UsuarioDTOFromJson(json);

@override@JsonKey(name: 'USUARIO_ID') final  String id;
@override@JsonKey(name: 'USUARIO') final  String usuario;
@override@JsonKey(name: 'CLAVE') final  String contrasenya;
@override@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') final  String? nombreUsuario;
@override@JsonKey(name: 'PROVISIONAL_TOKEN') final  String provisionalToken;
@override@JsonKey(name: 'REFRESH_TOKEN') final  String? refreshToken;
@override@JsonKey(name: 'TEST') final  String test;
@override@JsonKey(name: 'IDIOMA_ID') final  String idiomaId;
@override@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') final  String modificarPedido;
@override@JsonKey(name: 'APP_VER_TOTAL_VENTAS') final  String verTotalVentas;
@override@JsonKey(name: 'PACKAGE_NAME') final  String? packageName;
@override@JsonKey(name: 'VERSION') final  String? version;
@override@JsonKey(name: 'BUILD_NUMBER') final  String? buildNumber;
@override@JsonKey(name: 'DEVICE_INFO') final  String? deviceInfo;
@override@JsonKey(name: 'MARGEN_COMERCIAL') final  double? margenComercial;

/// Create a copy of UsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsuarioDTOCopyWith<_UsuarioDTO> get copyWith => __$UsuarioDTOCopyWithImpl<_UsuarioDTO>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UsuarioDTOToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsuarioDTO&&(identical(other.id, id) || other.id == id)&&(identical(other.usuario, usuario) || other.usuario == usuario)&&(identical(other.contrasenya, contrasenya) || other.contrasenya == contrasenya)&&(identical(other.nombreUsuario, nombreUsuario) || other.nombreUsuario == nombreUsuario)&&(identical(other.provisionalToken, provisionalToken) || other.provisionalToken == provisionalToken)&&(identical(other.refreshToken, refreshToken) || other.refreshToken == refreshToken)&&(identical(other.test, test) || other.test == test)&&(identical(other.idiomaId, idiomaId) || other.idiomaId == idiomaId)&&(identical(other.modificarPedido, modificarPedido) || other.modificarPedido == modificarPedido)&&(identical(other.verTotalVentas, verTotalVentas) || other.verTotalVentas == verTotalVentas)&&(identical(other.packageName, packageName) || other.packageName == packageName)&&(identical(other.version, version) || other.version == version)&&(identical(other.buildNumber, buildNumber) || other.buildNumber == buildNumber)&&(identical(other.deviceInfo, deviceInfo) || other.deviceInfo == deviceInfo)&&(identical(other.margenComercial, margenComercial) || other.margenComercial == margenComercial));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,usuario,contrasenya,nombreUsuario,provisionalToken,refreshToken,test,idiomaId,modificarPedido,verTotalVentas,packageName,version,buildNumber,deviceInfo,margenComercial);

@override
String toString() {
  return 'UsuarioDTO(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, provisionalToken: $provisionalToken, refreshToken: $refreshToken, test: $test, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, packageName: $packageName, version: $version, buildNumber: $buildNumber, deviceInfo: $deviceInfo, margenComercial: $margenComercial)';
}


}

/// @nodoc
abstract mixin class _$UsuarioDTOCopyWith<$Res> implements $UsuarioDTOCopyWith<$Res> {
  factory _$UsuarioDTOCopyWith(_UsuarioDTO value, $Res Function(_UsuarioDTO) _then) = __$UsuarioDTOCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'USUARIO_ID') String id,@JsonKey(name: 'USUARIO') String usuario,@JsonKey(name: 'CLAVE') String contrasenya,@JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,@JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,@JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,@JsonKey(name: 'TEST') String test,@JsonKey(name: 'IDIOMA_ID') String idiomaId,@JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,@JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,@JsonKey(name: 'PACKAGE_NAME') String? packageName,@JsonKey(name: 'VERSION') String? version,@JsonKey(name: 'BUILD_NUMBER') String? buildNumber,@JsonKey(name: 'DEVICE_INFO') String? deviceInfo,@JsonKey(name: 'MARGEN_COMERCIAL') double? margenComercial
});




}
/// @nodoc
class __$UsuarioDTOCopyWithImpl<$Res>
    implements _$UsuarioDTOCopyWith<$Res> {
  __$UsuarioDTOCopyWithImpl(this._self, this._then);

  final _UsuarioDTO _self;
  final $Res Function(_UsuarioDTO) _then;

/// Create a copy of UsuarioDTO
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? usuario = null,Object? contrasenya = null,Object? nombreUsuario = freezed,Object? provisionalToken = null,Object? refreshToken = freezed,Object? test = null,Object? idiomaId = null,Object? modificarPedido = null,Object? verTotalVentas = null,Object? packageName = freezed,Object? version = freezed,Object? buildNumber = freezed,Object? deviceInfo = freezed,Object? margenComercial = freezed,}) {
  return _then(_UsuarioDTO(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,usuario: null == usuario ? _self.usuario : usuario // ignore: cast_nullable_to_non_nullable
as String,contrasenya: null == contrasenya ? _self.contrasenya : contrasenya // ignore: cast_nullable_to_non_nullable
as String,nombreUsuario: freezed == nombreUsuario ? _self.nombreUsuario : nombreUsuario // ignore: cast_nullable_to_non_nullable
as String?,provisionalToken: null == provisionalToken ? _self.provisionalToken : provisionalToken // ignore: cast_nullable_to_non_nullable
as String,refreshToken: freezed == refreshToken ? _self.refreshToken : refreshToken // ignore: cast_nullable_to_non_nullable
as String?,test: null == test ? _self.test : test // ignore: cast_nullable_to_non_nullable
as String,idiomaId: null == idiomaId ? _self.idiomaId : idiomaId // ignore: cast_nullable_to_non_nullable
as String,modificarPedido: null == modificarPedido ? _self.modificarPedido : modificarPedido // ignore: cast_nullable_to_non_nullable
as String,verTotalVentas: null == verTotalVentas ? _self.verTotalVentas : verTotalVentas // ignore: cast_nullable_to_non_nullable
as String,packageName: freezed == packageName ? _self.packageName : packageName // ignore: cast_nullable_to_non_nullable
as String?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,buildNumber: freezed == buildNumber ? _self.buildNumber : buildNumber // ignore: cast_nullable_to_non_nullable
as String?,deviceInfo: freezed == deviceInfo ? _self.deviceInfo : deviceInfo // ignore: cast_nullable_to_non_nullable
as String?,margenComercial: freezed == margenComercial ? _self.margenComercial : margenComercial // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on
