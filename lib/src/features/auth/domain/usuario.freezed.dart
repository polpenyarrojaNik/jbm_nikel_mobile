// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'usuario.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Usuario {
  String get id => throw _privateConstructorUsedError;
  String get usuario => throw _privateConstructorUsedError;
  String get contrasenya => throw _privateConstructorUsedError;
  String? get nombreUsuario => throw _privateConstructorUsedError;
  String get refreshToken => throw _privateConstructorUsedError;
  String get provisionalToken => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UsuarioCopyWith<Usuario> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsuarioCopyWith<$Res> {
  factory $UsuarioCopyWith(Usuario value, $Res Function(Usuario) then) =
      _$UsuarioCopyWithImpl<$Res>;
  $Res call(
      {String id,
      String usuario,
      String contrasenya,
      String? nombreUsuario,
      String refreshToken,
      String provisionalToken});
}

/// @nodoc
class _$UsuarioCopyWithImpl<$Res> implements $UsuarioCopyWith<$Res> {
  _$UsuarioCopyWithImpl(this._value, this._then);

  final Usuario _value;
  // ignore: unused_field
  final $Res Function(Usuario) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? usuario = freezed,
    Object? contrasenya = freezed,
    Object? nombreUsuario = freezed,
    Object? refreshToken = freezed,
    Object? provisionalToken = freezed,
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
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalToken: provisionalToken == freezed
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UsuarioCopyWith<$Res> implements $UsuarioCopyWith<$Res> {
  factory _$$_UsuarioCopyWith(
          _$_Usuario value, $Res Function(_$_Usuario) then) =
      __$$_UsuarioCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id,
      String usuario,
      String contrasenya,
      String? nombreUsuario,
      String refreshToken,
      String provisionalToken});
}

/// @nodoc
class __$$_UsuarioCopyWithImpl<$Res> extends _$UsuarioCopyWithImpl<$Res>
    implements _$$_UsuarioCopyWith<$Res> {
  __$$_UsuarioCopyWithImpl(_$_Usuario _value, $Res Function(_$_Usuario) _then)
      : super(_value, (v) => _then(v as _$_Usuario));

  @override
  _$_Usuario get _value => super._value as _$_Usuario;

  @override
  $Res call({
    Object? id = freezed,
    Object? usuario = freezed,
    Object? contrasenya = freezed,
    Object? nombreUsuario = freezed,
    Object? refreshToken = freezed,
    Object? provisionalToken = freezed,
  }) {
    return _then(_$_Usuario(
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
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String,
      provisionalToken: provisionalToken == freezed
          ? _value.provisionalToken
          : provisionalToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Usuario extends _Usuario {
  const _$_Usuario(
      {required this.id,
      required this.usuario,
      required this.contrasenya,
      this.nombreUsuario,
      required this.refreshToken,
      required this.provisionalToken})
      : super._();

  @override
  final String id;
  @override
  final String usuario;
  @override
  final String contrasenya;
  @override
  final String? nombreUsuario;
  @override
  final String refreshToken;
  @override
  final String provisionalToken;

  @override
  String toString() {
    return 'Usuario(id: $id, usuario: $usuario, contrasenya: $contrasenya, nombreUsuario: $nombreUsuario, refreshToken: $refreshToken, provisionalToken: $provisionalToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Usuario &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.usuario, usuario) &&
            const DeepCollectionEquality()
                .equals(other.contrasenya, contrasenya) &&
            const DeepCollectionEquality()
                .equals(other.nombreUsuario, nombreUsuario) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality()
                .equals(other.provisionalToken, provisionalToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(usuario),
      const DeepCollectionEquality().hash(contrasenya),
      const DeepCollectionEquality().hash(nombreUsuario),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(provisionalToken));

  @JsonKey(ignore: true)
  @override
  _$$_UsuarioCopyWith<_$_Usuario> get copyWith =>
      __$$_UsuarioCopyWithImpl<_$_Usuario>(this, _$identity);
}

abstract class _Usuario extends Usuario {
  const factory _Usuario(
      {required final String id,
      required final String usuario,
      required final String contrasenya,
      final String? nombreUsuario,
      required final String refreshToken,
      required final String provisionalToken}) = _$_Usuario;
  const _Usuario._() : super._();

  @override
  String get id;
  @override
  String get usuario;
  @override
  String get contrasenya;
  @override
  String? get nombreUsuario;
  @override
  String get refreshToken;
  @override
  String get provisionalToken;
  @override
  @JsonKey(ignore: true)
  _$$_UsuarioCopyWith<_$_Usuario> get copyWith =>
      throw _privateConstructorUsedError;
}
