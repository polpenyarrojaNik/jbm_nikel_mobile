// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'cliente_pago_pendiente.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ClientePagoPendiente {
  String get clienteId => throw _privateConstructorUsedError;
  String get efectoId => throw _privateConstructorUsedError;
  String? get facutaId => throw _privateConstructorUsedError;
  DateTime? get fechaFactura => throw _privateConstructorUsedError;
  DateTime? get fechaExpiracion => throw _privateConstructorUsedError;
  MetodoDeCobro? get metodoDeCobro => throw _privateConstructorUsedError;
  String? get estadoCobroId => throw _privateConstructorUsedError;
  double? get importe => throw _privateConstructorUsedError;
  DateTime? get fechaExpiracionInicial => throw _privateConstructorUsedError;
  bool? get vencidoJBM => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClientePagoPendienteCopyWith<ClientePagoPendiente> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClientePagoPendienteCopyWith<$Res> {
  factory $ClientePagoPendienteCopyWith(ClientePagoPendiente value,
          $Res Function(ClientePagoPendiente) then) =
      _$ClientePagoPendienteCopyWithImpl<$Res>;
  $Res call(
      {String clienteId,
      String efectoId,
      String? facutaId,
      DateTime? fechaFactura,
      DateTime? fechaExpiracion,
      MetodoDeCobro? metodoDeCobro,
      String? estadoCobroId,
      double? importe,
      DateTime? fechaExpiracionInicial,
      bool? vencidoJBM,
      DateTime lastUpdated,
      bool deleted});

  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
}

/// @nodoc
class _$ClientePagoPendienteCopyWithImpl<$Res>
    implements $ClientePagoPendienteCopyWith<$Res> {
  _$ClientePagoPendienteCopyWithImpl(this._value, this._then);

  final ClientePagoPendiente _value;
  // ignore: unused_field
  final $Res Function(ClientePagoPendiente) _then;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? efectoId = freezed,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobro = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: efectoId == freezed
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: facutaId == freezed
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: fechaFactura == freezed
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: fechaExpiracion == freezed
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobro: metodoDeCobro == freezed
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      estadoCobroId: estadoCobroId == freezed
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: importe == freezed
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double?,
      fechaExpiracionInicial: fechaExpiracionInicial == freezed
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: vencidoJBM == freezed
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }

  @override
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_value.metodoDeCobro == null) {
      return null;
    }

    return $MetodoDeCobroCopyWith<$Res>(_value.metodoDeCobro!, (value) {
      return _then(_value.copyWith(metodoDeCobro: value));
    });
  }
}

/// @nodoc
abstract class _$$_ClientePagoPendienteCopyWith<$Res>
    implements $ClientePagoPendienteCopyWith<$Res> {
  factory _$$_ClientePagoPendienteCopyWith(_$_ClientePagoPendiente value,
          $Res Function(_$_ClientePagoPendiente) then) =
      __$$_ClientePagoPendienteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String clienteId,
      String efectoId,
      String? facutaId,
      DateTime? fechaFactura,
      DateTime? fechaExpiracion,
      MetodoDeCobro? metodoDeCobro,
      String? estadoCobroId,
      double? importe,
      DateTime? fechaExpiracionInicial,
      bool? vencidoJBM,
      DateTime lastUpdated,
      bool deleted});

  @override
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
}

/// @nodoc
class __$$_ClientePagoPendienteCopyWithImpl<$Res>
    extends _$ClientePagoPendienteCopyWithImpl<$Res>
    implements _$$_ClientePagoPendienteCopyWith<$Res> {
  __$$_ClientePagoPendienteCopyWithImpl(_$_ClientePagoPendiente _value,
      $Res Function(_$_ClientePagoPendiente) _then)
      : super(_value, (v) => _then(v as _$_ClientePagoPendiente));

  @override
  _$_ClientePagoPendiente get _value => super._value as _$_ClientePagoPendiente;

  @override
  $Res call({
    Object? clienteId = freezed,
    Object? efectoId = freezed,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobro = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_ClientePagoPendiente(
      clienteId: clienteId == freezed
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: efectoId == freezed
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: facutaId == freezed
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: fechaFactura == freezed
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: fechaExpiracion == freezed
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobro: metodoDeCobro == freezed
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      estadoCobroId: estadoCobroId == freezed
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: importe == freezed
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as double?,
      fechaExpiracionInicial: fechaExpiracionInicial == freezed
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: vencidoJBM == freezed
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ClientePagoPendiente extends _ClientePagoPendiente {
  const _$_ClientePagoPendiente(
      {required this.clienteId,
      required this.efectoId,
      this.facutaId,
      this.fechaFactura,
      this.fechaExpiracion,
      this.metodoDeCobro,
      this.estadoCobroId,
      this.importe,
      this.fechaExpiracionInicial,
      this.vencidoJBM,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String efectoId;
  @override
  final String? facutaId;
  @override
  final DateTime? fechaFactura;
  @override
  final DateTime? fechaExpiracion;
  @override
  final MetodoDeCobro? metodoDeCobro;
  @override
  final String? estadoCobroId;
  @override
  final double? importe;
  @override
  final DateTime? fechaExpiracionInicial;
  @override
  final bool? vencidoJBM;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClientePagoPendiente(clienteId: $clienteId, efectoId: $efectoId, facutaId: $facutaId, fechaFactura: $fechaFactura, fechaExpiracion: $fechaExpiracion, metodoDeCobro: $metodoDeCobro, estadoCobroId: $estadoCobroId, importe: $importe, fechaExpiracionInicial: $fechaExpiracionInicial, vencidoJBM: $vencidoJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClientePagoPendiente &&
            const DeepCollectionEquality().equals(other.clienteId, clienteId) &&
            const DeepCollectionEquality().equals(other.efectoId, efectoId) &&
            const DeepCollectionEquality().equals(other.facutaId, facutaId) &&
            const DeepCollectionEquality()
                .equals(other.fechaFactura, fechaFactura) &&
            const DeepCollectionEquality()
                .equals(other.fechaExpiracion, fechaExpiracion) &&
            const DeepCollectionEquality()
                .equals(other.metodoDeCobro, metodoDeCobro) &&
            const DeepCollectionEquality()
                .equals(other.estadoCobroId, estadoCobroId) &&
            const DeepCollectionEquality().equals(other.importe, importe) &&
            const DeepCollectionEquality()
                .equals(other.fechaExpiracionInicial, fechaExpiracionInicial) &&
            const DeepCollectionEquality()
                .equals(other.vencidoJBM, vencidoJBM) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(clienteId),
      const DeepCollectionEquality().hash(efectoId),
      const DeepCollectionEquality().hash(facutaId),
      const DeepCollectionEquality().hash(fechaFactura),
      const DeepCollectionEquality().hash(fechaExpiracion),
      const DeepCollectionEquality().hash(metodoDeCobro),
      const DeepCollectionEquality().hash(estadoCobroId),
      const DeepCollectionEquality().hash(importe),
      const DeepCollectionEquality().hash(fechaExpiracionInicial),
      const DeepCollectionEquality().hash(vencidoJBM),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_ClientePagoPendienteCopyWith<_$_ClientePagoPendiente> get copyWith =>
      __$$_ClientePagoPendienteCopyWithImpl<_$_ClientePagoPendiente>(
          this, _$identity);
}

abstract class _ClientePagoPendiente extends ClientePagoPendiente {
  const factory _ClientePagoPendiente(
      {required final String clienteId,
      required final String efectoId,
      final String? facutaId,
      final DateTime? fechaFactura,
      final DateTime? fechaExpiracion,
      final MetodoDeCobro? metodoDeCobro,
      final String? estadoCobroId,
      final double? importe,
      final DateTime? fechaExpiracionInicial,
      final bool? vencidoJBM,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$_ClientePagoPendiente;
  const _ClientePagoPendiente._() : super._();

  @override
  String get clienteId;
  @override
  String get efectoId;
  @override
  String? get facutaId;
  @override
  DateTime? get fechaFactura;
  @override
  DateTime? get fechaExpiracion;
  @override
  MetodoDeCobro? get metodoDeCobro;
  @override
  String? get estadoCobroId;
  @override
  double? get importe;
  @override
  DateTime? get fechaExpiracionInicial;
  @override
  bool? get vencidoJBM;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_ClientePagoPendienteCopyWith<_$_ClientePagoPendiente> get copyWith =>
      throw _privateConstructorUsedError;
}
