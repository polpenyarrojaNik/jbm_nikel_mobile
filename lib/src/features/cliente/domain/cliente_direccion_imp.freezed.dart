// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_direccion_imp.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteDireccionImp {
  String get id => throw _privateConstructorUsedError;
  DateTime get fecha => throw _privateConstructorUsedError;
  String get usuarioId => throw _privateConstructorUsedError;
  String get clienteId => throw _privateConstructorUsedError;
  String? get direccionId => throw _privateConstructorUsedError;
  String? get nombre => throw _privateConstructorUsedError;
  String? get direccion1 => throw _privateConstructorUsedError;
  String? get direccion2 => throw _privateConstructorUsedError;
  String? get codigoPostal => throw _privateConstructorUsedError;
  String? get poblacion => throw _privateConstructorUsedError;
  String? get provincia => throw _privateConstructorUsedError;
  Pais? get pais => throw _privateConstructorUsedError;
  bool get enviada => throw _privateConstructorUsedError;
  bool get borrar => throw _privateConstructorUsedError;

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ClienteDireccionImpCopyWith<ClienteDireccionImp> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDireccionImpCopyWith<$Res> {
  factory $ClienteDireccionImpCopyWith(
          ClienteDireccionImp value, $Res Function(ClienteDireccionImp) then) =
      _$ClienteDireccionImpCopyWithImpl<$Res, ClienteDireccionImp>;
  @useResult
  $Res call(
      {String id,
      DateTime fecha,
      String usuarioId,
      String clienteId,
      String? direccionId,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      bool enviada,
      bool borrar});

  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class _$ClienteDireccionImpCopyWithImpl<$Res, $Val extends ClienteDireccionImp>
    implements $ClienteDireccionImpCopyWith<$Res> {
  _$ClienteDireccionImpCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? enviada = null,
    Object? borrar = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      borrar: null == borrar
          ? _value.borrar
          : borrar // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PaisCopyWith<$Res>? get pais {
    if (_value.pais == null) {
      return null;
    }

    return $PaisCopyWith<$Res>(_value.pais!, (value) {
      return _then(_value.copyWith(pais: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteDireccionImpImplCopyWith<$Res>
    implements $ClienteDireccionImpCopyWith<$Res> {
  factory _$$ClienteDireccionImpImplCopyWith(_$ClienteDireccionImpImpl value,
          $Res Function(_$ClienteDireccionImpImpl) then) =
      __$$ClienteDireccionImpImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime fecha,
      String usuarioId,
      String clienteId,
      String? direccionId,
      String? nombre,
      String? direccion1,
      String? direccion2,
      String? codigoPostal,
      String? poblacion,
      String? provincia,
      Pais? pais,
      bool enviada,
      bool borrar});

  @override
  $PaisCopyWith<$Res>? get pais;
}

/// @nodoc
class __$$ClienteDireccionImpImplCopyWithImpl<$Res>
    extends _$ClienteDireccionImpCopyWithImpl<$Res, _$ClienteDireccionImpImpl>
    implements _$$ClienteDireccionImpImplCopyWith<$Res> {
  __$$ClienteDireccionImpImplCopyWithImpl(_$ClienteDireccionImpImpl _value,
      $Res Function(_$ClienteDireccionImpImpl) _then)
      : super(_value, _then);

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fecha = null,
    Object? usuarioId = null,
    Object? clienteId = null,
    Object? direccionId = freezed,
    Object? nombre = freezed,
    Object? direccion1 = freezed,
    Object? direccion2 = freezed,
    Object? codigoPostal = freezed,
    Object? poblacion = freezed,
    Object? provincia = freezed,
    Object? pais = freezed,
    Object? enviada = null,
    Object? borrar = null,
  }) {
    return _then(_$ClienteDireccionImpImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fecha: null == fecha
          ? _value.fecha
          : fecha // ignore: cast_nullable_to_non_nullable
              as DateTime,
      usuarioId: null == usuarioId
          ? _value.usuarioId
          : usuarioId // ignore: cast_nullable_to_non_nullable
              as String,
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      direccionId: freezed == direccionId
          ? _value.direccionId
          : direccionId // ignore: cast_nullable_to_non_nullable
              as String?,
      nombre: freezed == nombre
          ? _value.nombre
          : nombre // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion1: freezed == direccion1
          ? _value.direccion1
          : direccion1 // ignore: cast_nullable_to_non_nullable
              as String?,
      direccion2: freezed == direccion2
          ? _value.direccion2
          : direccion2 // ignore: cast_nullable_to_non_nullable
              as String?,
      codigoPostal: freezed == codigoPostal
          ? _value.codigoPostal
          : codigoPostal // ignore: cast_nullable_to_non_nullable
              as String?,
      poblacion: freezed == poblacion
          ? _value.poblacion
          : poblacion // ignore: cast_nullable_to_non_nullable
              as String?,
      provincia: freezed == provincia
          ? _value.provincia
          : provincia // ignore: cast_nullable_to_non_nullable
              as String?,
      pais: freezed == pais
          ? _value.pais
          : pais // ignore: cast_nullable_to_non_nullable
              as Pais?,
      enviada: null == enviada
          ? _value.enviada
          : enviada // ignore: cast_nullable_to_non_nullable
              as bool,
      borrar: null == borrar
          ? _value.borrar
          : borrar // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$ClienteDireccionImpImpl extends _ClienteDireccionImp {
  const _$ClienteDireccionImpImpl(
      {required this.id,
      required this.fecha,
      required this.usuarioId,
      required this.clienteId,
      required this.direccionId,
      this.nombre,
      this.direccion1,
      this.direccion2,
      this.codigoPostal,
      this.poblacion,
      this.provincia,
      this.pais,
      required this.enviada,
      required this.borrar})
      : super._();

  @override
  final String id;
  @override
  final DateTime fecha;
  @override
  final String usuarioId;
  @override
  final String clienteId;
  @override
  final String? direccionId;
  @override
  final String? nombre;
  @override
  final String? direccion1;
  @override
  final String? direccion2;
  @override
  final String? codigoPostal;
  @override
  final String? poblacion;
  @override
  final String? provincia;
  @override
  final Pais? pais;
  @override
  final bool enviada;
  @override
  final bool borrar;

  @override
  String toString() {
    return 'ClienteDireccionImp(id: $id, fecha: $fecha, usuarioId: $usuarioId, clienteId: $clienteId, direccionId: $direccionId, nombre: $nombre, direccion1: $direccion1, direccion2: $direccion2, codigoPostal: $codigoPostal, poblacion: $poblacion, provincia: $provincia, pais: $pais, enviada: $enviada, borrar: $borrar)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDireccionImpImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fecha, fecha) || other.fecha == fecha) &&
            (identical(other.usuarioId, usuarioId) ||
                other.usuarioId == usuarioId) &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.direccionId, direccionId) ||
                other.direccionId == direccionId) &&
            (identical(other.nombre, nombre) || other.nombre == nombre) &&
            (identical(other.direccion1, direccion1) ||
                other.direccion1 == direccion1) &&
            (identical(other.direccion2, direccion2) ||
                other.direccion2 == direccion2) &&
            (identical(other.codigoPostal, codigoPostal) ||
                other.codigoPostal == codigoPostal) &&
            (identical(other.poblacion, poblacion) ||
                other.poblacion == poblacion) &&
            (identical(other.provincia, provincia) ||
                other.provincia == provincia) &&
            (identical(other.pais, pais) || other.pais == pais) &&
            (identical(other.enviada, enviada) || other.enviada == enviada) &&
            (identical(other.borrar, borrar) || other.borrar == borrar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fecha,
      usuarioId,
      clienteId,
      direccionId,
      nombre,
      direccion1,
      direccion2,
      codigoPostal,
      poblacion,
      provincia,
      pais,
      enviada,
      borrar);

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDireccionImpImplCopyWith<_$ClienteDireccionImpImpl> get copyWith =>
      __$$ClienteDireccionImpImplCopyWithImpl<_$ClienteDireccionImpImpl>(
          this, _$identity);
}

abstract class _ClienteDireccionImp extends ClienteDireccionImp {
  const factory _ClienteDireccionImp(
      {required final String id,
      required final DateTime fecha,
      required final String usuarioId,
      required final String clienteId,
      required final String? direccionId,
      final String? nombre,
      final String? direccion1,
      final String? direccion2,
      final String? codigoPostal,
      final String? poblacion,
      final String? provincia,
      final Pais? pais,
      required final bool enviada,
      required final bool borrar}) = _$ClienteDireccionImpImpl;
  const _ClienteDireccionImp._() : super._();

  @override
  String get id;
  @override
  DateTime get fecha;
  @override
  String get usuarioId;
  @override
  String get clienteId;
  @override
  String? get direccionId;
  @override
  String? get nombre;
  @override
  String? get direccion1;
  @override
  String? get direccion2;
  @override
  String? get codigoPostal;
  @override
  String? get poblacion;
  @override
  String? get provincia;
  @override
  Pais? get pais;
  @override
  bool get enviada;
  @override
  bool get borrar;

  /// Create a copy of ClienteDireccionImp
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ClienteDireccionImpImplCopyWith<_$ClienteDireccionImpImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
