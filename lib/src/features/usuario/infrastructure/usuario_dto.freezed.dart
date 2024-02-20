// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UsuarioDTO _$UsuarioDTOFromJson(Map<String, dynamic> json) {
  return _UsuarioDTO.fromJson(json);
}

/// @nodoc
mixin _$UsuarioDTO {
  @JsonKey(name: 'USUARIO_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'USUARIO')
  String get usuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'CLAVE')
  String get contrasenya => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  String? get nombreUsuario => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVISIONAL_TOKEN')
  String get provisionalToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'REFRESH_TOKEN')
  String? get refreshToken => throw _privateConstructorUsedError;
  @JsonKey(name: 'TEST')
  String get test => throw _privateConstructorUsedError;
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  String get modificarPedido => throw _privateConstructorUsedError;
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  String get verTotalVentas => throw _privateConstructorUsedError;
  @JsonKey(name: 'PACKAGE_NAME')
  String? get packageName => throw _privateConstructorUsedError;
  @JsonKey(name: 'VERSION')
  String? get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'BUILD_NUMBER')
  String? get buildNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'DEVICE_INFO')
  String? get deviceInfo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioDTOCopyWith<UsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioDTOCopyWith<$Res> {
  factory $UsuarioDTOCopyWith(
          UsuarioDTO value, $Res Function(UsuarioDTO) then) =
      _$UsuarioDTOCopyWithImpl<$Res, UsuarioDTO>;
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'CLAVE') String contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,
      @JsonKey(name: 'TEST') String test,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,
      @JsonKey(name: 'PACKAGE_NAME') String? packageName,
      @JsonKey(name: 'VERSION') String? version,
      @JsonKey(name: 'BUILD_NUMBER') String? buildNumber,
      @JsonKey(name: 'DEVICE_INFO') String? deviceInfo});
}

/// @nodoc
class _$UsuarioDTOCopyWithImpl<$Res, $Val extends UsuarioDTO>
    implements $UsuarioDTOCopyWith<$Res> {
  _$UsuarioDTOCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usuario = null,
    Object? contrasenya = null,
    Object? nombreUsuario = freezed,
    Object? provisionalToken = null,
    Object? refreshToken = freezed,
    Object? test = null,
    Object? idiomaId = null,
    Object? modificarPedido = null,
    Object? verTotalVentas = null,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasenya: null == contrasenya
          ? _value.contrasenya
          : contrasenya // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: freezed == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      provisionalToken: null == provisionalToken
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      modificarPedido: null == modificarPedido
          ? _value.modificarPedido
          : modificarPedido // ignore: cast_nullable_to_non_nullable
              as String,
      verTotalVentas: null == verTotalVentas
          ? _value.verTotalVentas
          : verTotalVentas // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UsuarioDTOImplCopyWith<$Res>
    implements $UsuarioDTOCopyWith<$Res> {
  factory _$$UsuarioDTOImplCopyWith(
          _$UsuarioDTOImpl value, $Res Function(_$UsuarioDTOImpl) then) =
      __$$UsuarioDTOImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'CLAVE') String contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,
      @JsonKey(name: 'TEST') String test,
      @JsonKey(name: 'IDIOMA_ID') String idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN') String modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') String verTotalVentas,
      @JsonKey(name: 'PACKAGE_NAME') String? packageName,
      @JsonKey(name: 'VERSION') String? version,
      @JsonKey(name: 'BUILD_NUMBER') String? buildNumber,
      @JsonKey(name: 'DEVICE_INFO') String? deviceInfo});
}

/// @nodoc
class __$$UsuarioDTOImplCopyWithImpl<$Res>
    extends _$UsuarioDTOCopyWithImpl<$Res, _$UsuarioDTOImpl>
    implements _$$UsuarioDTOImplCopyWith<$Res> {
  __$$UsuarioDTOImplCopyWithImpl(
      _$UsuarioDTOImpl _value, $Res Function(_$UsuarioDTOImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? usuario = null,
    Object? contrasenya = null,
    Object? nombreUsuario = freezed,
    Object? provisionalToken = null,
    Object? refreshToken = freezed,
    Object? test = null,
    Object? idiomaId = null,
    Object? modificarPedido = null,
    Object? verTotalVentas = null,
    Object? packageName = freezed,
    Object? version = freezed,
    Object? buildNumber = freezed,
    Object? deviceInfo = freezed,
  }) {
    return _then(_$UsuarioDTOImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: null == usuario
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasenya: null == contrasenya
          ? _value.contrasenya
          : contrasenya // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: freezed == nombreUsuario
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      provisionalToken: null == provisionalToken
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      test: null == test
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
      idiomaId: null == idiomaId
          ? _value.idiomaId
          : idiomaId // ignore: cast_nullable_to_non_nullable
              as String,
      modificarPedido: null == modificarPedido
          ? _value.modificarPedido
          : modificarPedido // ignore: cast_nullable_to_non_nullable
              as String,
      verTotalVentas: null == verTotalVentas
          ? _value.verTotalVentas
          : verTotalVentas // ignore: cast_nullable_to_non_nullable
              as String,
      packageName: freezed == packageName
          ? _value.packageName
          : packageName // ignore: cast_nullable_to_non_nullable
              as String?,
      version: freezed == version
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String?,
      buildNumber: freezed == buildNumber
          ? _value.buildNumber
          : buildNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceInfo: freezed == deviceInfo
          ? _value.deviceInfo
          : deviceInfo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UsuarioDTOImpl extends _UsuarioDTO {
  const _$UsuarioDTOImpl(
      {@JsonKey(name: 'USUARIO_ID') required this.id,
      @JsonKey(name: 'USUARIO') required this.usuario,
      @JsonKey(name: 'CLAVE') required this.contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
      required this.nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN') required this.provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN') this.refreshToken,
      @JsonKey(name: 'TEST') required this.test,
      @JsonKey(name: 'IDIOMA_ID') required this.idiomaId,
      @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
      required this.modificarPedido,
      @JsonKey(name: 'APP_VER_TOTAL_VENTAS') required this.verTotalVentas,
      @JsonKey(name: 'PACKAGE_NAME') this.packageName,
      @JsonKey(name: 'VERSION') this.version,
      @JsonKey(name: 'BUILD_NUMBER') this.buildNumber,
      @JsonKey(name: 'DEVICE_INFO') this.deviceInfo})
      : super._();

  factory _$UsuarioDTOImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsuarioDTOImplFromJson(json);

  @override
  @JsonKey(name: 'USUARIO_ID')
  final String id;
  @override
  @JsonKey(name: 'USUARIO')
  final String usuario;
  @override
  @JsonKey(name: 'CLAVE')
  final String contrasenya;
  @override
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  final String? nombreUsuario;
  @override
  @JsonKey(name: 'PROVISIONAL_TOKEN')
  final String provisionalToken;
  @override
  @JsonKey(name: 'REFRESH_TOKEN')
  final String? refreshToken;
  @override
  @JsonKey(name: 'TEST')
  final String test;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  final String idiomaId;
  @override
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  final String modificarPedido;
  @override
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  final String verTotalVentas;
  @override
  @JsonKey(name: 'PACKAGE_NAME')
  final String? packageName;
  @override
  @JsonKey(name: 'VERSION')
  final String? version;
  @override
  @JsonKey(name: 'BUILD_NUMBER')
  final String? buildNumber;
  @override
  @JsonKey(name: 'DEVICE_INFO')
  final String? deviceInfo;

  @override
  String toString() {
    return 'UsuarioDTO(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, provisionalToken: $provisionalToken, refreshToken: $refreshToken, test: $test, idiomaId: $idiomaId, modificarPedido: $modificarPedido, verTotalVentas: $verTotalVentas, packageName: $packageName, version: $version, buildNumber: $buildNumber, deviceInfo: $deviceInfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UsuarioDTOImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.usuario, usuario) || other.usuario == usuario) &&
            (identical(other.contrasenya, contrasenya) ||
                other.contrasenya == contrasenya) &&
            (identical(other.nombreUsuario, nombreUsuario) ||
                other.nombreUsuario == nombreUsuario) &&
            (identical(other.provisionalToken, provisionalToken) ||
                other.provisionalToken == provisionalToken) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.test, test) || other.test == test) &&
            (identical(other.idiomaId, idiomaId) ||
                other.idiomaId == idiomaId) &&
            (identical(other.modificarPedido, modificarPedido) ||
                other.modificarPedido == modificarPedido) &&
            (identical(other.verTotalVentas, verTotalVentas) ||
                other.verTotalVentas == verTotalVentas) &&
            (identical(other.packageName, packageName) ||
                other.packageName == packageName) &&
            (identical(other.version, version) || other.version == version) &&
            (identical(other.buildNumber, buildNumber) ||
                other.buildNumber == buildNumber) &&
            (identical(other.deviceInfo, deviceInfo) ||
                other.deviceInfo == deviceInfo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      usuario,
      contrasenya,
      nombreUsuario,
      provisionalToken,
      refreshToken,
      test,
      idiomaId,
      modificarPedido,
      verTotalVentas,
      packageName,
      version,
      buildNumber,
      deviceInfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UsuarioDTOImplCopyWith<_$UsuarioDTOImpl> get copyWith =>
      __$$UsuarioDTOImplCopyWithImpl<_$UsuarioDTOImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UsuarioDTOImplToJson(
      this,
    );
  }
}

abstract class _UsuarioDTO extends UsuarioDTO {
  const factory _UsuarioDTO(
          {@JsonKey(name: 'USUARIO_ID') required final String id,
          @JsonKey(name: 'USUARIO') required final String usuario,
          @JsonKey(name: 'CLAVE') required final String contrasenya,
          @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
          required final String? nombreUsuario,
          @JsonKey(name: 'PROVISIONAL_TOKEN')
          required final String provisionalToken,
          @JsonKey(name: 'REFRESH_TOKEN') final String? refreshToken,
          @JsonKey(name: 'TEST') required final String test,
          @JsonKey(name: 'IDIOMA_ID') required final String idiomaId,
          @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
          required final String modificarPedido,
          @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
          required final String verTotalVentas,
          @JsonKey(name: 'PACKAGE_NAME') final String? packageName,
          @JsonKey(name: 'VERSION') final String? version,
          @JsonKey(name: 'BUILD_NUMBER') final String? buildNumber,
          @JsonKey(name: 'DEVICE_INFO') final String? deviceInfo}) =
      _$UsuarioDTOImpl;
  const _UsuarioDTO._() : super._();

  factory _UsuarioDTO.fromJson(Map<String, dynamic> json) =
      _$UsuarioDTOImpl.fromJson;

  @override
  @JsonKey(name: 'USUARIO_ID')
  String get id;
  @override
  @JsonKey(name: 'USUARIO')
  String get usuario;
  @override
  @JsonKey(name: 'CLAVE')
  String get contrasenya;
  @override
  @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
  String? get nombreUsuario;
  @override
  @JsonKey(name: 'PROVISIONAL_TOKEN')
  String get provisionalToken;
  @override
  @JsonKey(name: 'REFRESH_TOKEN')
  String? get refreshToken;
  @override
  @JsonKey(name: 'TEST')
  String get test;
  @override
  @JsonKey(name: 'IDIOMA_ID')
  String get idiomaId;
  @override
  @JsonKey(name: 'MODIFICAR_PRECIO_PEDIDO_SN')
  String get modificarPedido;
  @override
  @JsonKey(name: 'APP_VER_TOTAL_VENTAS')
  String get verTotalVentas;
  @override
  @JsonKey(name: 'PACKAGE_NAME')
  String? get packageName;
  @override
  @JsonKey(name: 'VERSION')
  String? get version;
  @override
  @JsonKey(name: 'BUILD_NUMBER')
  String? get buildNumber;
  @override
  @JsonKey(name: 'DEVICE_INFO')
  String? get deviceInfo;
  @override
  @JsonKey(ignore: true)
  _$$UsuarioDTOImplCopyWith<_$UsuarioDTOImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
