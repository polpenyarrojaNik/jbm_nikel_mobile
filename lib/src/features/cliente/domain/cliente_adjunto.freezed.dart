// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$ClienteAdjuntoCopyWithImpl<$Res, ClienteAdjunto>;
  @useResult
  $Res call({String clienteId, String nombreAdjunto});
}

/// @nodoc
class _$ClienteAdjuntoCopyWithImpl<$Res, $Val extends ClienteAdjunto>
    implements $ClienteAdjuntoCopyWith<$Res> {
  _$ClienteAdjuntoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombreAdjunto = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: null == nombreAdjunto
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ClienteAdjuntoImplCopyWith<$Res>
    implements $ClienteAdjuntoCopyWith<$Res> {
  factory _$$ClienteAdjuntoImplCopyWith(_$ClienteAdjuntoImpl value,
          $Res Function(_$ClienteAdjuntoImpl) then) =
      __$$ClienteAdjuntoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String clienteId, String nombreAdjunto});
}

/// @nodoc
class __$$ClienteAdjuntoImplCopyWithImpl<$Res>
    extends _$ClienteAdjuntoCopyWithImpl<$Res, _$ClienteAdjuntoImpl>
    implements _$$ClienteAdjuntoImplCopyWith<$Res> {
  __$$ClienteAdjuntoImplCopyWithImpl(
      _$ClienteAdjuntoImpl _value, $Res Function(_$ClienteAdjuntoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? nombreAdjunto = null,
  }) {
    return _then(_$ClienteAdjuntoImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      nombreAdjunto: null == nombreAdjunto
          ? _value.nombreAdjunto
          : nombreAdjunto // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ClienteAdjuntoImpl extends _ClienteAdjunto {
  const _$ClienteAdjuntoImpl(
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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteAdjuntoImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.nombreAdjunto, nombreAdjunto) ||
                other.nombreAdjunto == nombreAdjunto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, clienteId, nombreAdjunto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteAdjuntoImplCopyWith<_$ClienteAdjuntoImpl> get copyWith =>
      __$$ClienteAdjuntoImplCopyWithImpl<_$ClienteAdjuntoImpl>(
          this, _$identity);
}

abstract class _ClienteAdjunto extends ClienteAdjunto {
  const factory _ClienteAdjunto(
      {required final String clienteId,
      required final String nombreAdjunto}) = _$ClienteAdjuntoImpl;
  const _ClienteAdjunto._() : super._();

  @override
  String get clienteId;
  @override
  String get nombreAdjunto;
  @override
  @JsonKey(ignore: true)
  _$$ClienteAdjuntoImplCopyWith<_$ClienteAdjuntoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
