// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_id_nombre.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteIdNombre {
  String get id => throw _privateConstructorUsedError;
  String? get nombreCliente => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteIdNombreCopyWith<ClienteIdNombre> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteIdNombreCopyWith<$Res> {
  factory $ClienteIdNombreCopyWith(
          ClienteIdNombre value, $Res Function(ClienteIdNombre) then) =
      _$ClienteIdNombreCopyWithImpl<$Res>;
  $Res call({String id, String? nombreCliente});
}

/// @nodoc
class _$ClienteIdNombreCopyWithImpl<$Res>
    implements $ClienteIdNombreCopyWith<$Res> {
  _$ClienteIdNombreCopyWithImpl(this._value, this._then);

  final ClienteIdNombre _value;
  // ignore: unused_field
  final $Res Function(ClienteIdNombre) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreCliente = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: nombreCliente == freezed
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ClienteIdNombreCopyWith<$Res>
    implements $ClienteIdNombreCopyWith<$Res> {
  factory _$$_ClienteIdNombreCopyWith(
          _$_ClienteIdNombre value, $Res Function(_$_ClienteIdNombre) then) =
      __$$_ClienteIdNombreCopyWithImpl<$Res>;
  @override
  $Res call({String id, String? nombreCliente});
}

/// @nodoc
class __$$_ClienteIdNombreCopyWithImpl<$Res>
    extends _$ClienteIdNombreCopyWithImpl<$Res>
    implements _$$_ClienteIdNombreCopyWith<$Res> {
  __$$_ClienteIdNombreCopyWithImpl(
      _$_ClienteIdNombre _value, $Res Function(_$_ClienteIdNombre) _then)
      : super(_value, (v) => _then(v as _$_ClienteIdNombre));

  @override
  _$_ClienteIdNombre get _value => super._value as _$_ClienteIdNombre;

  @override
  $Res call({
    Object? id = freezed,
    Object? nombreCliente = freezed,
  }) {
    return _then(_$_ClienteIdNombre(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nombreCliente: nombreCliente == freezed
          ? _value.nombreCliente
          : nombreCliente // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_ClienteIdNombre extends _ClienteIdNombre {
  const _$_ClienteIdNombre({required this.id, required this.nombreCliente})
      : super._();

  @override
  final String id;
  @override
  final String? nombreCliente;

  @override
  String toString() {
    return 'ClienteIdNombre(id: $id, nombreCliente: $nombreCliente)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteIdNombre &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.nombreCliente, nombreCliente));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(nombreCliente));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteIdNombreCopyWith<_$_ClienteIdNombre> get copyWith =>
      __$$_ClienteIdNombreCopyWithImpl<_$_ClienteIdNombre>(this, _$identity);
}

abstract class _ClienteIdNombre extends ClienteIdNombre {
  const factory _ClienteIdNombre(
      {required final String id,
      required final String? nombreCliente}) = _$_ClienteIdNombre;
  const _ClienteIdNombre._() : super._();

  @override
  String get id;
  @override
  String? get nombreCliente;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteIdNombreCopyWith<_$_ClienteIdNombre> get copyWith =>
      throw _privateConstructorUsedError;
}
