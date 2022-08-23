// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_pending_payment_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerPendingPaymentDTO _$CustomerPendingPaymentDTOFromJson(
    Map<String, dynamic> json) {
  return _CustomerPendingPaymentDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerPendingPaymentDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'EFECTO_ID')
  String get effectId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FACTURA_ID')
  String? get invoiceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_FACUTRA')
  DateTime? get invoiceDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  DateTime? get expirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get collectionMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ESTADO_COBRO_ID')
  String? get collectionStatusId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IMPORTE')
  double? get amount => throw _privateConstructorUsedError;
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  DateTime? get initialExpirationDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENCIDO_JBM')
  String? get expirationJBM => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerPendingPaymentDTOCopyWith<CustomerPendingPaymentDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerPendingPaymentDTOCopyWith<$Res> {
  factory $CustomerPendingPaymentDTOCopyWith(CustomerPendingPaymentDTO value,
          $Res Function(CustomerPendingPaymentDTO) then) =
      _$CustomerPendingPaymentDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String customerId,
      @JsonKey(name: 'EFECTO_ID')
          String effectId,
      @JsonKey(name: 'FACTURA_ID')
          String? invoiceId,
      @JsonKey(name: 'FECHA_FACUTRA')
          DateTime? invoiceDate,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          DateTime? expirationDate,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? collectionMethodId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          String? collectionStatusId,
      @JsonKey(name: 'IMPORTE')
          double? amount,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          DateTime? initialExpirationDate,
      @JsonKey(name: 'VENCIDO_JBM')
          String? expirationJBM,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class _$CustomerPendingPaymentDTOCopyWithImpl<$Res>
    implements $CustomerPendingPaymentDTOCopyWith<$Res> {
  _$CustomerPendingPaymentDTOCopyWithImpl(this._value, this._then);

  final CustomerPendingPaymentDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerPendingPaymentDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? effectId = freezed,
    Object? invoiceId = freezed,
    Object? invoiceDate = freezed,
    Object? expirationDate = freezed,
    Object? collectionMethodId = freezed,
    Object? collectionStatusId = freezed,
    Object? amount = freezed,
    Object? initialExpirationDate = freezed,
    Object? expirationJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionMethodId: collectionMethodId == freezed
          ? _value.collectionMethodId
          : collectionMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionStatusId: collectionStatusId == freezed
          ? _value.collectionStatusId
          : collectionStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      initialExpirationDate: initialExpirationDate == freezed
          ? _value.initialExpirationDate
          : initialExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationJBM: expirationJBM == freezed
          ? _value.expirationJBM
          : expirationJBM // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_CustomerPendingPaymentDTOCopyWith<$Res>
    implements $CustomerPendingPaymentDTOCopyWith<$Res> {
  factory _$$_CustomerPendingPaymentDTOCopyWith(
          _$_CustomerPendingPaymentDTO value,
          $Res Function(_$_CustomerPendingPaymentDTO) then) =
      __$$_CustomerPendingPaymentDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String customerId,
      @JsonKey(name: 'EFECTO_ID')
          String effectId,
      @JsonKey(name: 'FACTURA_ID')
          String? invoiceId,
      @JsonKey(name: 'FECHA_FACUTRA')
          DateTime? invoiceDate,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          DateTime? expirationDate,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? collectionMethodId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          String? collectionStatusId,
      @JsonKey(name: 'IMPORTE')
          double? amount,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          DateTime? initialExpirationDate,
      @JsonKey(name: 'VENCIDO_JBM')
          String? expirationJBM,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class __$$_CustomerPendingPaymentDTOCopyWithImpl<$Res>
    extends _$CustomerPendingPaymentDTOCopyWithImpl<$Res>
    implements _$$_CustomerPendingPaymentDTOCopyWith<$Res> {
  __$$_CustomerPendingPaymentDTOCopyWithImpl(
      _$_CustomerPendingPaymentDTO _value,
      $Res Function(_$_CustomerPendingPaymentDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerPendingPaymentDTO));

  @override
  _$_CustomerPendingPaymentDTO get _value =>
      super._value as _$_CustomerPendingPaymentDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? effectId = freezed,
    Object? invoiceId = freezed,
    Object? invoiceDate = freezed,
    Object? expirationDate = freezed,
    Object? collectionMethodId = freezed,
    Object? collectionStatusId = freezed,
    Object? amount = freezed,
    Object? initialExpirationDate = freezed,
    Object? expirationJBM = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerPendingPaymentDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      effectId: effectId == freezed
          ? _value.effectId
          : effectId // ignore: cast_nullable_to_non_nullable
              as String,
      invoiceId: invoiceId == freezed
          ? _value.invoiceId
          : invoiceId // ignore: cast_nullable_to_non_nullable
              as String?,
      invoiceDate: invoiceDate == freezed
          ? _value.invoiceDate
          : invoiceDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationDate: expirationDate == freezed
          ? _value.expirationDate
          : expirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      collectionMethodId: collectionMethodId == freezed
          ? _value.collectionMethodId
          : collectionMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionStatusId: collectionStatusId == freezed
          ? _value.collectionStatusId
          : collectionStatusId // ignore: cast_nullable_to_non_nullable
              as String?,
      amount: amount == freezed
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double?,
      initialExpirationDate: initialExpirationDate == freezed
          ? _value.initialExpirationDate
          : initialExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      expirationJBM: expirationJBM == freezed
          ? _value.expirationJBM
          : expirationJBM // ignore: cast_nullable_to_non_nullable
              as String?,
      lastUpdated: lastUpdated == freezed
          ? _value.lastUpdated
          : lastUpdated // ignore: cast_nullable_to_non_nullable
              as DateTime,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CustomerPendingPaymentDTO extends _CustomerPendingPaymentDTO {
  const _$_CustomerPendingPaymentDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'EFECTO_ID') required this.effectId,
      @JsonKey(name: 'FACTURA_ID') this.invoiceId,
      @JsonKey(name: 'FECHA_FACUTRA') this.invoiceDate,
      @JsonKey(name: 'FECHA_VENCIMIENTO') this.expirationDate,
      @JsonKey(name: 'METODO_COBRO_ID') this.collectionMethodId,
      @JsonKey(name: 'ESTADO_COBRO_ID') this.collectionStatusId,
      @JsonKey(name: 'IMPORTE') this.amount,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL') this.initialExpirationDate,
      @JsonKey(name: 'VENCIDO_JBM') this.expirationJBM,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerPendingPaymentDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerPendingPaymentDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'EFECTO_ID')
  final String effectId;
  @override
  @JsonKey(name: 'FACTURA_ID')
  final String? invoiceId;
  @override
  @JsonKey(name: 'FECHA_FACUTRA')
  final DateTime? invoiceDate;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  final DateTime? expirationDate;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  final String? collectionMethodId;
  @override
  @JsonKey(name: 'ESTADO_COBRO_ID')
  final String? collectionStatusId;
  @override
  @JsonKey(name: 'IMPORTE')
  final double? amount;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  final DateTime? initialExpirationDate;
  @override
  @JsonKey(name: 'VENCIDO_JBM')
  final String? expirationJBM;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerPendingPaymentDTO(customerId: $customerId, effectId: $effectId, invoiceId: $invoiceId, invoiceDate: $invoiceDate, expirationDate: $expirationDate, collectionMethodId: $collectionMethodId, collectionStatusId: $collectionStatusId, amount: $amount, initialExpirationDate: $initialExpirationDate, expirationJBM: $expirationJBM, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerPendingPaymentDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.effectId, effectId) &&
            const DeepCollectionEquality().equals(other.invoiceId, invoiceId) &&
            const DeepCollectionEquality()
                .equals(other.invoiceDate, invoiceDate) &&
            const DeepCollectionEquality()
                .equals(other.expirationDate, expirationDate) &&
            const DeepCollectionEquality()
                .equals(other.collectionMethodId, collectionMethodId) &&
            const DeepCollectionEquality()
                .equals(other.collectionStatusId, collectionStatusId) &&
            const DeepCollectionEquality().equals(other.amount, amount) &&
            const DeepCollectionEquality()
                .equals(other.initialExpirationDate, initialExpirationDate) &&
            const DeepCollectionEquality()
                .equals(other.expirationJBM, expirationJBM) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(effectId),
      const DeepCollectionEquality().hash(invoiceId),
      const DeepCollectionEquality().hash(invoiceDate),
      const DeepCollectionEquality().hash(expirationDate),
      const DeepCollectionEquality().hash(collectionMethodId),
      const DeepCollectionEquality().hash(collectionStatusId),
      const DeepCollectionEquality().hash(amount),
      const DeepCollectionEquality().hash(initialExpirationDate),
      const DeepCollectionEquality().hash(expirationJBM),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerPendingPaymentDTOCopyWith<_$_CustomerPendingPaymentDTO>
      get copyWith => __$$_CustomerPendingPaymentDTOCopyWithImpl<
          _$_CustomerPendingPaymentDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerPendingPaymentDTOToJson(
      this,
    );
  }
}

abstract class _CustomerPendingPaymentDTO extends CustomerPendingPaymentDTO {
  const factory _CustomerPendingPaymentDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String customerId,
      @JsonKey(name: 'EFECTO_ID')
          required final String effectId,
      @JsonKey(name: 'FACTURA_ID')
          final String? invoiceId,
      @JsonKey(name: 'FECHA_FACUTRA')
          final DateTime? invoiceDate,
      @JsonKey(name: 'FECHA_VENCIMIENTO')
          final DateTime? expirationDate,
      @JsonKey(name: 'METODO_COBRO_ID')
          final String? collectionMethodId,
      @JsonKey(name: 'ESTADO_COBRO_ID')
          final String? collectionStatusId,
      @JsonKey(name: 'IMPORTE')
          final double? amount,
      @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
          final DateTime? initialExpirationDate,
      @JsonKey(name: 'VENCIDO_JBM')
          final String? expirationJBM,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_CustomerPendingPaymentDTO;
  const _CustomerPendingPaymentDTO._() : super._();

  factory _CustomerPendingPaymentDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerPendingPaymentDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'EFECTO_ID')
  String get effectId;
  @override
  @JsonKey(name: 'FACTURA_ID')
  String? get invoiceId;
  @override
  @JsonKey(name: 'FECHA_FACUTRA')
  DateTime? get invoiceDate;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO')
  DateTime? get expirationDate;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get collectionMethodId;
  @override
  @JsonKey(name: 'ESTADO_COBRO_ID')
  String? get collectionStatusId;
  @override
  @JsonKey(name: 'IMPORTE')
  double? get amount;
  @override
  @JsonKey(name: 'FECHA_VENCIMIENTO_INICIAL')
  DateTime? get initialExpirationDate;
  @override
  @JsonKey(name: 'VENCIDO_JBM')
  String? get expirationJBM;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerPendingPaymentDTOCopyWith<_$_CustomerPendingPaymentDTO>
      get copyWith => throw _privateConstructorUsedError;
}
