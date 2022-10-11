// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_venta_articulo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClienteVentaArticulo {
  double get clienteId => throw _privateConstructorUsedError;
  double get mes => throw _privateConstructorUsedError;
  Money get importe => throw _privateConstructorUsedError;
  Money get coste => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteVentaArticuloCopyWith<ClienteVentaArticulo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteVentaArticuloCopyWith<$Res> {
  factory $ClienteVentaArticuloCopyWith(ClienteVentaArticulo value,
          $Res Function(ClienteVentaArticulo) then) =
      _$ClienteVentaArticuloCopyWithImpl<$Res>;
  $Res call({double clienteId, double mes, Money importe, Money coste});
}

/// @nodoc
class _$ClienteVentaArticuloCopyWithImpl<$Res>
    implements $ClienteVentaArticuloCopyWith<$Res> {
  _$ClienteVentaArticuloCopyWithImpl(this._value, this._then);

  final ClienteVentaArticulo _value;
  // ignore: unused_field
  final $Res Function(ClienteVentaArticulo) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? mes = freezed,
    Object? importe = freezed,
    Object? coste = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as double,
      mes: mes == freezed
          ? _value.mes
          : mes // ignore: cast_nullable_to_non_nullable
              as double,
      importe: importe == freezed
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as Money,
      coste: coste == freezed
          ? _value.coste
          : coste // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }
}

/// @nodoc
abstract class _$$_ClienteVentaArticuloCopyWith<$Res>
    implements $ClienteVentaArticuloCopyWith<$Res> {
  factory _$$_ClienteVentaArticuloCopyWith(_$_ClienteVentaArticulo value,
          $Res Function(_$_ClienteVentaArticulo) then) =
      __$$_ClienteVentaArticuloCopyWithImpl<$Res>;
  @override
  $Res call({double clienteId, double mes, Money importe, Money coste});
}

/// @nodoc
class __$$_ClienteVentaArticuloCopyWithImpl<$Res>
    extends _$ClienteVentaArticuloCopyWithImpl<$Res>
    implements _$$_ClienteVentaArticuloCopyWith<$Res> {
  __$$_ClienteVentaArticuloCopyWithImpl(_$_ClienteVentaArticulo _value,
      $Res Function(_$_ClienteVentaArticulo) _then)
      : super(_value, (v) => _then(v as _$_ClienteVentaArticulo));

  @override
  _$_ClienteVentaArticulo get _value => super._value as _$_ClienteVentaArticulo;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? mes = freezed,
    Object? importe = freezed,
    Object? coste = freezed,
  }) {
    return _then(_$_ClienteVentaArticulo(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as double,
      mes: mes == freezed
          ? _value.mes
          : mes // ignore: cast_nullable_to_non_nullable
              as double,
      importe: importe == freezed
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as Money,
      coste: coste == freezed
          ? _value.coste
          : coste // ignore: cast_nullable_to_non_nullable
              as Money,
    ));
  }
}

/// @nodoc

class _$_ClienteVentaArticulo extends _ClienteVentaArticulo {
  const _$_ClienteVentaArticulo(
      {required this.clienteId,
      required this.mes,
      required this.importe,
      required this.coste})
      : super._();

  @override
  final double clienteId;
  @override
  final double mes;
  @override
  final Money importe;
  @override
  final Money coste;

  @override
  String toString() {
    return 'ClienteVentaArticulo(clienteId: $clienteId, mes: $mes, importe: $importe, coste: $coste)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClienteVentaArticulo &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality().equals(other.mes, mes) &&
            const DeepCollectionEquality().equals(other.importe, importe) &&
            const DeepCollectionEquality().equals(other.coste, coste));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(mes),
      const DeepCollectionEquality().hash(importe),
      const DeepCollectionEquality().hash(coste));

  @JsonKey(ignore: true)
  @override
  _$$_ClienteVentaArticuloCopyWith<_$_ClienteVentaArticulo> get copyWith =>
      __$$_ClienteVentaArticuloCopyWithImpl<_$_ClienteVentaArticulo>(
          this, _$identity);
}

abstract class _ClienteVentaArticulo extends ClienteVentaArticulo {
  const factory _ClienteVentaArticulo(
      {required final double clienteId,
      required final double mes,
      required final Money importe,
      required final Money coste}) = _$_ClienteVentaArticulo;
  const _ClienteVentaArticulo._() : super._();

  @override
  double get clienteId;
  @override
  double get mes;
  @override
  Money get importe;
  @override
  Money get coste;
  @override
  @JsonKey(ignore: true)
  _$$_ClienteVentaArticuloCopyWith<_$_ClienteVentaArticulo> get copyWith =>
      throw _privateConstructorUsedError;
}
