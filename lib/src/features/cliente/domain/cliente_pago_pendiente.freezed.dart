// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  Money? get importe => throw _privateConstructorUsedError;
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
      _$ClientePagoPendienteCopyWithImpl<$Res, ClientePagoPendiente>;
  @useResult
  $Res call(
      {String clienteId,
      String efectoId,
      String? facutaId,
      DateTime? fechaFactura,
      DateTime? fechaExpiracion,
      MetodoDeCobro? metodoDeCobro,
      String? estadoCobroId,
      Money? importe,
      DateTime? fechaExpiracionInicial,
      bool? vencidoJBM,
      DateTime lastUpdated,
      bool deleted});

  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
}

/// @nodoc
class _$ClientePagoPendienteCopyWithImpl<$Res,
        $Val extends ClientePagoPendiente>
    implements $ClientePagoPendienteCopyWith<$Res> {
  _$ClientePagoPendienteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? efectoId = null,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobro = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: null == efectoId
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: freezed == facutaId
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: freezed == fechaFactura
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: freezed == fechaExpiracion
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobro: freezed == metodoDeCobro
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      estadoCobroId: freezed == estadoCobroId
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: freezed == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as Money?,
      fechaExpiracionInicial: freezed == fechaExpiracionInicial
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: freezed == vencidoJBM
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro {
    if (_value.metodoDeCobro == null) {
      return null;
    }

    return $MetodoDeCobroCopyWith<$Res>(_value.metodoDeCobro!, (value) {
      return _then(_value.copyWith(metodoDeCobro: value) as $Val);
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
  @useResult
  $Res call(
      {String clienteId,
      String efectoId,
      String? facutaId,
      DateTime? fechaFactura,
      DateTime? fechaExpiracion,
      MetodoDeCobro? metodoDeCobro,
      String? estadoCobroId,
      Money? importe,
      DateTime? fechaExpiracionInicial,
      bool? vencidoJBM,
      DateTime lastUpdated,
      bool deleted});

  @override
  $MetodoDeCobroCopyWith<$Res>? get metodoDeCobro;
}

/// @nodoc
class __$$_ClientePagoPendienteCopyWithImpl<$Res>
    extends _$ClientePagoPendienteCopyWithImpl<$Res, _$_ClientePagoPendiente>
    implements _$$_ClientePagoPendienteCopyWith<$Res> {
  __$$_ClientePagoPendienteCopyWithImpl(_$_ClientePagoPendiente _value,
      $Res Function(_$_ClientePagoPendiente) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? efectoId = null,
    Object? facutaId = freezed,
    Object? fechaFactura = freezed,
    Object? fechaExpiracion = freezed,
    Object? metodoDeCobro = freezed,
    Object? estadoCobroId = freezed,
    Object? importe = freezed,
    Object? fechaExpiracionInicial = freezed,
    Object? vencidoJBM = freezed,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$_ClientePagoPendiente(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      efectoId: null == efectoId
          ? _value.efectoId
          : efectoId // ignore: cast_nullable_to_non_nullable
              as String,
      facutaId: freezed == facutaId
          ? _value.facutaId
          : facutaId // ignore: cast_nullable_to_non_nullable
              as String?,
      fechaFactura: freezed == fechaFactura
          ? _value.fechaFactura
          : fechaFactura // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fechaExpiracion: freezed == fechaExpiracion
          ? _value.fechaExpiracion
          : fechaExpiracion // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      metodoDeCobro: freezed == metodoDeCobro
          ? _value.metodoDeCobro
          : metodoDeCobro // ignore: cast_nullable_to_non_nullable
              as MetodoDeCobro?,
      estadoCobroId: freezed == estadoCobroId
          ? _value.estadoCobroId
          : estadoCobroId // ignore: cast_nullable_to_non_nullable
              as String?,
      importe: freezed == importe
          ? _value.importe
          : importe // ignore: cast_nullable_to_non_nullable
              as Money?,
      fechaExpiracionInicial: freezed == fechaExpiracionInicial
          ? _value.fechaExpiracionInicial
          : fechaExpiracionInicial // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      vencidoJBM: freezed == vencidoJBM
          ? _value.vencidoJBM
          : vencidoJBM // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastUpdated: null == lastUpdated
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: null == deleted
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
  final Money? importe;
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
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.efectoId, efectoId) ||
                other.efectoId == efectoId) &&
            (identical(other.facutaId, facutaId) ||
                other.facutaId == facutaId) &&
            (identical(other.fechaFactura, fechaFactura) ||
                other.fechaFactura == fechaFactura) &&
            (identical(other.fechaExpiracion, fechaExpiracion) ||
                other.fechaExpiracion == fechaExpiracion) &&
            (identical(other.metodoDeCobro, metodoDeCobro) ||
                other.metodoDeCobro == metodoDeCobro) &&
            (identical(other.estadoCobroId, estadoCobroId) ||
                other.estadoCobroId == estadoCobroId) &&
            (identical(other.importe, importe) || other.importe == importe) &&
            (identical(other.fechaExpiracionInicial, fechaExpiracionInicial) ||
                other.fechaExpiracionInicial == fechaExpiracionInicial) &&
            (identical(other.vencidoJBM, vencidoJBM) ||
                other.vencidoJBM == vencidoJBM) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      efectoId,
      facutaId,
      fechaFactura,
      fechaExpiracion,
      metodoDeCobro,
      estadoCobroId,
      importe,
      fechaExpiracionInicial,
      vencidoJBM,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
      final Money? importe,
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
  Money? get importe;
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
