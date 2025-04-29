// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_telefono.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ClienteTelefono {
  String get clienteId => throw _privateConstructorUsedError;
  String get nombre => throw _privateConstructorUsedError;
  String get telefono => throw _privateConstructorUsedError;

  /// Create a copy of ClienteTelefono
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteTelefonoCopyWith<ClienteTelefono> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteTelefonoCopyWith<$Res> {
  factory $ClienteTelefonoCopyWith(
    ClienteTelefono value,
    $Res Function(ClienteTelefono) then,
  ) = _$ClienteTelefonoCopyWithImpl<$Res, ClienteTelefono>;
  @useResult
  $Res call({String clienteId, String nombre, String telefono});
}

/// @nodoc
class _$ClienteTelefonoCopyWithImpl<$Res, $Val extends ClienteTelefono>
    implements $ClienteTelefonoCopyWith<$Res> {
  _$ClienteTelefonoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteTelefono
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombre = null,
    Object? telefono = null,
  }) {
    return _then(
      _value.copyWith(
            clienteId:
                null == clienteId
                    ? _value.clienteId
                    : clienteId // ignore: cast_nullable_to_non_nullable
                        as String,
            nombre:
                null == nombre
                    ? _value.nombre
                    : nombre // ignore: cast_nullable_to_non_nullable
                        as String,
            telefono:
                null == telefono
                    ? _value.telefono
                    : telefono // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ClienteTelefonoImplCopyWith<$Res>
    implements $ClienteTelefonoCopyWith<$Res> {
  factory _$$ClienteTelefonoImplCopyWith(
    _$ClienteTelefonoImpl value,
    $Res Function(_$ClienteTelefonoImpl) then,
  ) = __$$ClienteTelefonoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String nombre, String telefono});
}

/// @nodoc
class __$$ClienteTelefonoImplCopyWithImpl<$Res>
    extends _$ClienteTelefonoCopyWithImpl<$Res, _$ClienteTelefonoImpl>
    implements _$$ClienteTelefonoImplCopyWith<$Res> {
  __$$ClienteTelefonoImplCopyWithImpl(
    _$ClienteTelefonoImpl _value,
    $Res Function(_$ClienteTelefonoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ClienteTelefono
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombre = null,
    Object? telefono = null,
  }) {
    return _then(
      _$ClienteTelefonoImpl(
        clienteId:
            null == clienteId
                ? _value.clienteId
                : clienteId // ignore: cast_nullable_to_non_nullable
                    as String,
        nombre:
            null == nombre
                ? _value.nombre
                : nombre // ignore: cast_nullable_to_non_nullable
                    as String,
        telefono:
            null == telefono
                ? _value.telefono
                : telefono // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$ClienteTelefonoImpl extends _ClienteTelefono {
  const _$ClienteTelefonoImpl({
    required this.clienteId,
    required this.nombre,
    required this.telefono,
  }) : super._();

  @override
  final String clienteId;
  @override
  final String nombre;
  @override
  final String telefono;

  @override
  String toString() {
    return 'ClienteTelefono(clienteId: $clienteId, nombre: $nombre, telefono: $telefono)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteTelefonoImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.telefono, telefono) ||
                other.telefono == telefono));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, nombre, telefono);

  /// Create a copy of ClienteTelefono
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteTelefonoImplCopyWith<_$ClienteTelefonoImpl> get copyWith =>
      __$$ClienteTelefonoImplCopyWithImpl<_$ClienteTelefonoImpl>(
        this,
        _$identity,
      );
}

abstract class _ClienteTelefono extends ClienteTelefono {
  const factory _ClienteTelefono({
    required final String clienteId,
    required final String nombre,
    required final String telefono,
  }) = _$ClienteTelefonoImpl;
  const _ClienteTelefono._() : super._();

  @override
  String get clienteId;
  @override
  String get nombre;
  @override
  String get telefono;

  /// Create a copy of ClienteTelefono
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteTelefonoImplCopyWith<_$ClienteTelefonoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
