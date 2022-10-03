// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usuario_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UsuarioDTOCopyWith<UsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioDTOCopyWith<$Res> {
  factory $UsuarioDTOCopyWith(
          UsuarioDTO value, $Res Function(UsuarioDTO) then) =
      _$UsuarioDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'CLAVE') String contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,
      @JsonKey(name: 'TEST') String test});
}

/// @nodoc
class _$UsuarioDTOCopyWithImpl<$Res> implements $UsuarioDTOCopyWith<$Res> {
  _$UsuarioDTOCopyWithImpl(this._value, this._then);

  final UsuarioDTO _value;
  // ignore: unused_field
  final $Res Function(UsuarioDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? usuario = freezed,
    Object? contrasenya = freezed,
    Object? nombreUsuario = freezed,
    Object? provisionalToken = freezed,
    Object? refreshToken = freezed,
    Object? test = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: usuario == freezed
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasenya: contrasenya == freezed
          ? _value.contrasenya
          : contrasenya // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: nombreUsuario == freezed
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      provisionalToken: provisionalToken == freezed
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      test: test == freezed
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UsuarioDTOCopyWith<$Res>
    implements $UsuarioDTOCopyWith<$Res> {
  factory _$$_UsuarioDTOCopyWith(
          _$_UsuarioDTO value, $Res Function(_$_UsuarioDTO) then) =
      __$$_UsuarioDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'USUARIO_ID') String id,
      @JsonKey(name: 'USUARIO') String usuario,
      @JsonKey(name: 'CLAVE') String contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '') String? nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN') String provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN') String? refreshToken,
      @JsonKey(name: 'TEST') String test});
}

/// @nodoc
class __$$_UsuarioDTOCopyWithImpl<$Res> extends _$UsuarioDTOCopyWithImpl<$Res>
    implements _$$_UsuarioDTOCopyWith<$Res> {
  __$$_UsuarioDTOCopyWithImpl(
      _$_UsuarioDTO _value, $Res Function(_$_UsuarioDTO) _then)
      : super(_value, (v) => _then(v as _$_UsuarioDTO));

  @override
  _$_UsuarioDTO get _value => super._value as _$_UsuarioDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? usuario = freezed,
    Object? contrasenya = freezed,
    Object? nombreUsuario = freezed,
    Object? provisionalToken = freezed,
    Object? refreshToken = freezed,
    Object? test = freezed,
  }) {
    return _then(_$_UsuarioDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      usuario: usuario == freezed
          ? _value.usuario
          : usuario // ignore: cast_nullable_to_non_nullable
              as String,
      contrasenya: contrasenya == freezed
          ? _value.contrasenya
          : contrasenya // ignore: cast_nullable_to_non_nullable
              as String,
      nombreUsuario: nombreUsuario == freezed
          ? _value.nombreUsuario
          : nombreUsuario // ignore: cast_nullable_to_non_nullable
              as String?,
      provisionalToken: provisionalToken == freezed
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      test: test == freezed
          ? _value.test
          : test // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UsuarioDTO extends _UsuarioDTO {
  const _$_UsuarioDTO(
      {@JsonKey(name: 'USUARIO_ID')
          required this.id,
      @JsonKey(name: 'USUARIO')
          required this.usuario,
      @JsonKey(name: 'CLAVE')
          required this.contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
          required this.nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN')
          required this.provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN')
          this.refreshToken,
      @JsonKey(name: 'TEST')
          required this.test})
      : super._();

  factory _$_UsuarioDTO.fromJson(Map<String, dynamic> json) =>
      _$$_UsuarioDTOFromJson(json);

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
  String toString() {
    return 'UsuarioDTO(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, provisionalToken: $provisionalToken, refreshToken: $refreshToken, test: $test)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UsuarioDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.usuario, usuario) &&
            const DeepCollectionEquality()
                .equals(other.contrasenya, contrasenya) &&
            const DeepCollectionEquality()
                .equals(other.nombreUsuario, nombreUsuario) &&
            const DeepCollectionEquality()
                .equals(other.provisionalToken, provisionalToken) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.test, test));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(usuario),
      const DeepCollectionEquality().hash(contrasenya),
      const DeepCollectionEquality().hash(nombreUsuario),
      const DeepCollectionEquality().hash(provisionalToken),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(test));

  @JsonKey(ignore: true)
  @override
  _$$_UsuarioDTOCopyWith<_$_UsuarioDTO> get copyWith =>
      __$$_UsuarioDTOCopyWithImpl<_$_UsuarioDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UsuarioDTOToJson(
      this,
    );
  }
}

abstract class _UsuarioDTO extends UsuarioDTO {
  const factory _UsuarioDTO(
      {@JsonKey(name: 'USUARIO_ID')
          required final String id,
      @JsonKey(name: 'USUARIO')
          required final String usuario,
      @JsonKey(name: 'CLAVE')
          required final String contrasenya,
      @JsonKey(name: 'NOMBRE_MOSTRAR', defaultValue: '')
          required final String? nombreUsuario,
      @JsonKey(name: 'PROVISIONAL_TOKEN')
          required final String provisionalToken,
      @JsonKey(name: 'REFRESH_TOKEN')
          final String? refreshToken,
      @JsonKey(name: 'TEST')
          required final String test}) = _$_UsuarioDTO;
  const _UsuarioDTO._() : super._();

  factory _UsuarioDTO.fromJson(Map<String, dynamic> json) =
      _$_UsuarioDTO.fromJson;

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
  @JsonKey(ignore: true)
  _$$_UsuarioDTOCopyWith<_$_UsuarioDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
