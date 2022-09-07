// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_adjunto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteAdjunto {
  String get clienteId => throw _privateConstructorUsedError;
  String get nombreAdjunto => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteAdjuntoCopyWith<ClienteAdjunto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteAdjuntoCopyWith<$Res> {
  factory $ClienteAdjuntoCopyWith(
          ClienteAdjunto value, $Res Function(ClienteAdjunto) then) =
      _$ClienteAdjuntoCopyWithImpl<$Res>;
  $Res call({String clienteId, String nombreAdjunto});
}

/// @nodoc
class _$ClienteAdjuntoCopyWithImpl<$Res>
    implements $ClienteAdjuntoCopyWith<$Res> {
  _$ClienteAdjuntoCopyWithImpl(this._value, this._then);

  final ClienteAdjunto _value;
  // ignore: unused_field
  final $Res Function(ClienteAdjunto) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? nombreAdjunto = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: nombreAdjunto == freezed
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ClienteAdjuntoCopyWith<$Res>
    implements $ClienteAdjuntoCopyWith<$Res> {
  factory _$$_ClienteAdjuntoCopyWith(
          _$_ClienteAdjunto value, $Res Function(_$_ClienteAdjunto) then) =
      __$$_ClienteAdjuntoCopyWithImpl<$Res>;
  @override
  $Res call({String clienteId, String nombreAdjunto});
}

/// @nodoc
class __$$_ClienteAdjuntoCopyWithImpl<$Res>
    extends _$ClienteAdjuntoCopyWithImpl<$Res>
    implements _$$_ClienteAdjuntoCopyWith<$Res> {
  __$$_ClienteAdjuntoCopyWithImpl(
      _$_ClienteAdjunto _value, $Res Function(_$_ClienteAdjunto) _then)
      : super(_value, (v) => _then(v as _$_ClienteAdjunto));

  @override
  _$_ClienteAdjunto get _value => super._value as _$_ClienteAdjunto;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? nombreAdjunto = freezed,
  }) {
    return _then(_$_ClienteAdjunto(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: nombreAdjunto == freezed
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClienteAdjunto extends _ClienteAdjunto {
  const _$_ClienteAdjunto(
      {required this.clienteId, required this.nombreAdjunto})
      : super._();

  @override
  final String clienteId;
  @override
  final String nombreAdjunto;

  @override
  String toString() {
    return 'ClienteAdjunto(clienteId: $clienteId, nombreAdjunto: $nombreAdjunto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteAdjunto &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality()
                .equals(other.nombreAdjunto, nombreAdjunto));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(nombreAdjunto));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteAdjuntoCopyWith<_$_ClienteAdjunto> get copyWith =>
      __$$_ClienteAdjuntoCopyWithImpl<_$_ClienteAdjunto>(this, _$identity);
}

abstract class _ClienteAdjunto extends ClienteAdjunto {
  const factory _ClienteAdjunto(
      {required final String clienteId,
      required final String nombreAdjunto}) = _$_ClienteAdjunto;
  const _ClienteAdjunto._() : super._();

  @override
  String get clienteId;
  @override
  String get nombreAdjunto;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteAdjuntoCopyWith<_$_ClienteAdjunto> get copyWith =>
      throw _privateConstructorUsedError;
}
