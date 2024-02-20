// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cliente_descuento.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ClienteDescuento {
  String get clienteId => throw _privateConstructorUsedError;
  String get articuloId => throw _privateConstructorUsedError;
  String? get descripcion => throw _privateConstructorUsedError;
  Familia get familia => throw _privateConstructorUsedError;
  Subfamilia get subfamilia => throw _privateConstructorUsedError;
  int get cantidadDesde => throw _privateConstructorUsedError;
  double get descuento => throw _privateConstructorUsedError;
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  bool get deleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ClienteDescuentoCopyWith<ClienteDescuento> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ClienteDescuentoCopyWith<$Res> {
  factory $ClienteDescuentoCopyWith(
          ClienteDescuento value, $Res Function(ClienteDescuento) then) =
      _$ClienteDescuentoCopyWithImpl<$Res, ClienteDescuento>;
  @useResult
  $Res call(
      {String clienteId,
      String articuloId,
      String? descripcion,
      Familia familia,
      Subfamilia subfamilia,
      int cantidadDesde,
      double descuento,
      DateTime lastUpdated,
      bool deleted});

  $FamiliaCopyWith<$Res> get familia;
  $SubfamiliaCopyWith<$Res> get subfamilia;
}

/// @nodoc
class _$ClienteDescuentoCopyWithImpl<$Res, $Val extends ClienteDescuento>
    implements $ClienteDescuentoCopyWith<$Res> {
  _$ClienteDescuentoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? descripcion = freezed,
    Object? familia = null,
    Object? subfamilia = null,
    Object? cantidadDesde = null,
    Object? descuento = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_value.copyWith(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: freezed == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      familia: null == familia
          ? _value.familia
          : familia // ignore: cast_nullable_to_non_nullable
              as Familia,
      subfamilia: null == subfamilia
          ? _value.subfamilia
          : subfamilia // ignore: cast_nullable_to_non_nullable
              as Subfamilia,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      descuento: null == descuento
          ? _value.descuento
          : descuento // ignore: cast_nullable_to_non_nullable
              as double,
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
  $FamiliaCopyWith<$Res> get familia {
    return $FamiliaCopyWith<$Res>(_value.familia, (value) {
      return _then(_value.copyWith(familia: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SubfamiliaCopyWith<$Res> get subfamilia {
    return $SubfamiliaCopyWith<$Res>(_value.subfamilia, (value) {
      return _then(_value.copyWith(subfamilia: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ClienteDescuentoImplCopyWith<$Res>
    implements $ClienteDescuentoCopyWith<$Res> {
  factory _$$ClienteDescuentoImplCopyWith(_$ClienteDescuentoImpl value,
          $Res Function(_$ClienteDescuentoImpl) then) =
      __$$ClienteDescuentoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String clienteId,
      String articuloId,
      String? descripcion,
      Familia familia,
      Subfamilia subfamilia,
      int cantidadDesde,
      double descuento,
      DateTime lastUpdated,
      bool deleted});

  @override
  $FamiliaCopyWith<$Res> get familia;
  @override
  $SubfamiliaCopyWith<$Res> get subfamilia;
}

/// @nodoc
class __$$ClienteDescuentoImplCopyWithImpl<$Res>
    extends _$ClienteDescuentoCopyWithImpl<$Res, _$ClienteDescuentoImpl>
    implements _$$ClienteDescuentoImplCopyWith<$Res> {
  __$$ClienteDescuentoImplCopyWithImpl(_$ClienteDescuentoImpl _value,
      $Res Function(_$ClienteDescuentoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? clienteId = null,
    Object? articuloId = null,
    Object? descripcion = freezed,
    Object? familia = null,
    Object? subfamilia = null,
    Object? cantidadDesde = null,
    Object? descuento = null,
    Object? lastUpdated = null,
    Object? deleted = null,
  }) {
    return _then(_$ClienteDescuentoImpl(
      clienteId: null == clienteId
          ? _value.clienteId
          : clienteId // ignore: cast_nullable_to_non_nullable
              as String,
      articuloId: null == articuloId
          ? _value.articuloId
          : articuloId // ignore: cast_nullable_to_non_nullable
              as String,
      descripcion: freezed == descripcion
          ? _value.descripcion
          : descripcion // ignore: cast_nullable_to_non_nullable
              as String?,
      familia: null == familia
          ? _value.familia
          : familia // ignore: cast_nullable_to_non_nullable
              as Familia,
      subfamilia: null == subfamilia
          ? _value.subfamilia
          : subfamilia // ignore: cast_nullable_to_non_nullable
              as Subfamilia,
      cantidadDesde: null == cantidadDesde
          ? _value.cantidadDesde
          : cantidadDesde // ignore: cast_nullable_to_non_nullable
              as int,
      descuento: null == descuento
          ? _value.descuento
          : descuento // ignore: cast_nullable_to_non_nullable
              as double,
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

class _$ClienteDescuentoImpl extends _ClienteDescuento {
  const _$ClienteDescuentoImpl(
      {required this.clienteId,
      required this.articuloId,
      required this.descripcion,
      required this.familia,
      required this.subfamilia,
      required this.cantidadDesde,
      required this.descuento,
      required this.lastUpdated,
      required this.deleted})
      : super._();

  @override
  final String clienteId;
  @override
  final String articuloId;
  @override
  final String? descripcion;
  @override
  final Familia familia;
  @override
  final Subfamilia subfamilia;
  @override
  final int cantidadDesde;
  @override
  final double descuento;
  @override
  final DateTime lastUpdated;
  @override
  final bool deleted;

  @override
  String toString() {
    return 'ClienteDescuento(clienteId: $clienteId, articuloId: $articuloId, descripcion: $descripcion, familia: $familia, subfamilia: $subfamilia, cantidadDesde: $cantidadDesde, descuento: $descuento, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClienteDescuentoImpl &&
            (identical(other.clienteId, clienteId) ||
                other.clienteId == clienteId) &&
            (identical(other.articuloId, articuloId) ||
                other.articuloId == articuloId) &&
            (identical(other.descripcion, descripcion) ||
                other.descripcion == descripcion) &&
            (identical(other.familia, familia) || other.familia == familia) &&
            (identical(other.subfamilia, subfamilia) ||
                other.subfamilia == subfamilia) &&
            (identical(other.cantidadDesde, cantidadDesde) ||
                other.cantidadDesde == cantidadDesde) &&
            (identical(other.descuento, descuento) ||
                other.descuento == descuento) &&
            (identical(other.lastUpdated, lastUpdated) ||
                other.lastUpdated == lastUpdated) &&
            (identical(other.deleted, deleted) || other.deleted == deleted));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      clienteId,
      articuloId,
      descripcion,
      familia,
      subfamilia,
      cantidadDesde,
      descuento,
      lastUpdated,
      deleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ClienteDescuentoImplCopyWith<_$ClienteDescuentoImpl> get copyWith =>
      __$$ClienteDescuentoImplCopyWithImpl<_$ClienteDescuentoImpl>(
          this, _$identity);
}

abstract class _ClienteDescuento extends ClienteDescuento {
  const factory _ClienteDescuento(
      {required final String clienteId,
      required final String articuloId,
      required final String? descripcion,
      required final Familia familia,
      required final Subfamilia subfamilia,
      required final int cantidadDesde,
      required final double descuento,
      required final DateTime lastUpdated,
      required final bool deleted}) = _$ClienteDescuentoImpl;
  const _ClienteDescuento._() : super._();

  @override
  String get clienteId;
  @override
  String get articuloId;
  @override
  String? get descripcion;
  @override
  Familia get familia;
  @override
  Subfamilia get subfamilia;
  @override
  int get cantidadDesde;
  @override
  double get descuento;
  @override
  DateTime get lastUpdated;
  @override
  bool get deleted;
  @override
  @JsonKey(ignore: true)
  _$$ClienteDescuentoImplCopyWith<_$ClienteDescuentoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
