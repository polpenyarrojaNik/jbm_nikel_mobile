// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sales_order_line_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SalesOrderLineDTO _$SalesOrderLineDTOFromJson(Map<String, dynamic> json) {
  return _SalesOrderLineDTO.fromJson(json);
}

/// @nodoc
mixin _$SalesOrderLineDTO {
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_ID')
  String get salesOrderId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String? get articleDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD')
  double get quantity => throw _privateConstructorUsedError;
  @JsonKey(name: 'PRECIO_DIVISA')
  double get divisaPrice => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_PRECIO')
  double? get priceType => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO1')
  double get discount1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO2')
  double get discount2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO3')
  double get discount3 => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SalesOrderLineDTOCopyWith<SalesOrderLineDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SalesOrderLineDTOCopyWith<$Res> {
  factory $SalesOrderLineDTOCopyWith(
          SalesOrderLineDTO value, $Res Function(SalesOrderLineDTO) then) =
      _$SalesOrderLineDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String companyId,
      @JsonKey(name: 'PEDIDO_ID') String salesOrderId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') String id,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String? articleDescription,
      @JsonKey(name: 'CANTIDAD') double quantity,
      @JsonKey(name: 'PRECIO_DIVISA') double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'DESCUENTO1') double discount1,
      @JsonKey(name: 'DESCUENTO2') double discount2,
      @JsonKey(name: 'DESCUENTO3') double discount3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$SalesOrderLineDTOCopyWithImpl<$Res>
    implements $SalesOrderLineDTOCopyWith<$Res> {
  _$SalesOrderLineDTOCopyWithImpl(this._value, this._then);

  final SalesOrderLineDTO _value;
  // ignore: unused_field
  final $Res Function(SalesOrderLineDTO) _then;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? salesOrderId = freezed,
    Object? id = freezed,
    Object? articleId = freezed,
    Object? articleDescription = freezed,
    Object? quantity = freezed,
    Object? divisaPrice = freezed,
    Object? priceType = freezed,
    Object? discount1 = freezed,
    Object? discount2 = freezed,
    Object? discount3 = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      articleDescription: articleDescription == freezed
          ? _value.articleDescription
          : articleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      divisaPrice: divisaPrice == freezed
          ? _value.divisaPrice
          : divisaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double?,
      discount1: discount1 == freezed
          ? _value.discount1
          : discount1 // ignore: cast_nullable_to_non_nullable
              as double,
      discount2: discount2 == freezed
          ? _value.discount2
          : discount2 // ignore: cast_nullable_to_non_nullable
              as double,
      discount3: discount3 == freezed
          ? _value.discount3
          : discount3 // ignore: cast_nullable_to_non_nullable
              as double,
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
abstract class _$$_SalesOrderLineDTOCopyWith<$Res>
    implements $SalesOrderLineDTOCopyWith<$Res> {
  factory _$$_SalesOrderLineDTOCopyWith(_$_SalesOrderLineDTO value,
          $Res Function(_$_SalesOrderLineDTO) then) =
      __$$_SalesOrderLineDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'EMPRESA_ID') String companyId,
      @JsonKey(name: 'PEDIDO_ID') String salesOrderId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') String id,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') String? articleDescription,
      @JsonKey(name: 'CANTIDAD') double quantity,
      @JsonKey(name: 'PRECIO_DIVISA') double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') double? priceType,
      @JsonKey(name: 'DESCUENTO1') double discount1,
      @JsonKey(name: 'DESCUENTO2') double discount2,
      @JsonKey(name: 'DESCUENTO3') double discount3,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_SalesOrderLineDTOCopyWithImpl<$Res>
    extends _$SalesOrderLineDTOCopyWithImpl<$Res>
    implements _$$_SalesOrderLineDTOCopyWith<$Res> {
  __$$_SalesOrderLineDTOCopyWithImpl(
      _$_SalesOrderLineDTO _value, $Res Function(_$_SalesOrderLineDTO) _then)
      : super(_value, (v) => _then(v as _$_SalesOrderLineDTO));

  @override
  _$_SalesOrderLineDTO get _value => super._value as _$_SalesOrderLineDTO;

  @override
  $Res call({
    Object? companyId = freezed,
    Object? salesOrderId = freezed,
    Object? id = freezed,
    Object? articleId = freezed,
    Object? articleDescription = freezed,
    Object? quantity = freezed,
    Object? divisaPrice = freezed,
    Object? priceType = freezed,
    Object? discount1 = freezed,
    Object? discount2 = freezed,
    Object? discount3 = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_SalesOrderLineDTO(
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      salesOrderId: salesOrderId == freezed
          ? _value.salesOrderId
          : salesOrderId // ignore: cast_nullable_to_non_nullable
              as String,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      articleDescription: articleDescription == freezed
          ? _value.articleDescription
          : articleDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      quantity: quantity == freezed
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as double,
      divisaPrice: divisaPrice == freezed
          ? _value.divisaPrice
          : divisaPrice // ignore: cast_nullable_to_non_nullable
              as double,
      priceType: priceType == freezed
          ? _value.priceType
          : priceType // ignore: cast_nullable_to_non_nullable
              as double?,
      discount1: discount1 == freezed
          ? _value.discount1
          : discount1 // ignore: cast_nullable_to_non_nullable
              as double,
      discount2: discount2 == freezed
          ? _value.discount2
          : discount2 // ignore: cast_nullable_to_non_nullable
              as double,
      discount3: discount3 == freezed
          ? _value.discount3
          : discount3 // ignore: cast_nullable_to_non_nullable
              as double,
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
class _$_SalesOrderLineDTO extends _SalesOrderLineDTO {
  const _$_SalesOrderLineDTO(
      {@JsonKey(name: 'EMPRESA_ID') required this.companyId,
      @JsonKey(name: 'PEDIDO_ID') required this.salesOrderId,
      @JsonKey(name: 'PEDIDO_LINEA_ID') required this.id,
      @JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION') this.articleDescription,
      @JsonKey(name: 'CANTIDAD') required this.quantity,
      @JsonKey(name: 'PRECIO_DIVISA') required this.divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO') this.priceType,
      @JsonKey(name: 'DESCUENTO1') required this.discount1,
      @JsonKey(name: 'DESCUENTO2') required this.discount2,
      @JsonKey(name: 'DESCUENTO3') required this.discount3,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') required this.deleted})
      : super._();

  factory _$_SalesOrderLineDTO.fromJson(Map<String, dynamic> json) =>
      _$$_SalesOrderLineDTOFromJson(json);

  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String companyId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  final String salesOrderId;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  final String id;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  final String? articleDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  final double quantity;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  final double divisaPrice;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  final double? priceType;
  @override
  @JsonKey(name: 'DESCUENTO1')
  final double discount1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  final double discount2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  final double discount3;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'SalesOrderLineDTO(companyId: $companyId, salesOrderId: $salesOrderId, id: $id, articleId: $articleId, articleDescription: $articleDescription, quantity: $quantity, divisaPrice: $divisaPrice, priceType: $priceType, discount1: $discount1, discount2: $discount2, discount3: $discount3, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SalesOrderLineDTO &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.salesOrderId, salesOrderId) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality()
                .equals(other.articleDescription, articleDescription) &&
            const DeepCollectionEquality().equals(other.quantity, quantity) &&
            const DeepCollectionEquality()
                .equals(other.divisaPrice, divisaPrice) &&
            const DeepCollectionEquality().equals(other.priceType, priceType) &&
            const DeepCollectionEquality().equals(other.discount1, discount1) &&
            const DeepCollectionEquality().equals(other.discount2, discount2) &&
            const DeepCollectionEquality().equals(other.discount3, discount3) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(companyId),
      const DeepCollectionEquality().hash(salesOrderId),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(articleDescription),
      const DeepCollectionEquality().hash(quantity),
      const DeepCollectionEquality().hash(divisaPrice),
      const DeepCollectionEquality().hash(priceType),
      const DeepCollectionEquality().hash(discount1),
      const DeepCollectionEquality().hash(discount2),
      const DeepCollectionEquality().hash(discount3),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_SalesOrderLineDTOCopyWith<_$_SalesOrderLineDTO> get copyWith =>
      __$$_SalesOrderLineDTOCopyWithImpl<_$_SalesOrderLineDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SalesOrderLineDTOToJson(
      this,
    );
  }
}

abstract class _SalesOrderLineDTO extends SalesOrderLineDTO {
  const factory _SalesOrderLineDTO(
      {@JsonKey(name: 'EMPRESA_ID')
          required final String companyId,
      @JsonKey(name: 'PEDIDO_ID')
          required final String salesOrderId,
      @JsonKey(name: 'PEDIDO_LINEA_ID')
          required final String id,
      @JsonKey(name: 'ARTICULO_ID')
          required final String articleId,
      @JsonKey(name: 'ARTICULO_DESCRIPCION')
          final String? articleDescription,
      @JsonKey(name: 'CANTIDAD')
          required final double quantity,
      @JsonKey(name: 'PRECIO_DIVISA')
          required final double divisaPrice,
      @JsonKey(name: 'TIPO_PRECIO')
          final double? priceType,
      @JsonKey(name: 'DESCUENTO1')
          required final double discount1,
      @JsonKey(name: 'DESCUENTO2')
          required final double discount2,
      @JsonKey(name: 'DESCUENTO3')
          required final double discount3,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          required final String deleted}) = _$_SalesOrderLineDTO;
  const _SalesOrderLineDTO._() : super._();

  factory _SalesOrderLineDTO.fromJson(Map<String, dynamic> json) =
      _$_SalesOrderLineDTO.fromJson;

  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId;
  @override
  @JsonKey(name: 'PEDIDO_ID')
  String get salesOrderId;
  @override
  @JsonKey(name: 'PEDIDO_LINEA_ID')
  String get id;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'ARTICULO_DESCRIPCION')
  String? get articleDescription;
  @override
  @JsonKey(name: 'CANTIDAD')
  double get quantity;
  @override
  @JsonKey(name: 'PRECIO_DIVISA')
  double get divisaPrice;
  @override
  @JsonKey(name: 'TIPO_PRECIO')
  double? get priceType;
  @override
  @JsonKey(name: 'DESCUENTO1')
  double get discount1;
  @override
  @JsonKey(name: 'DESCUENTO2')
  double get discount2;
  @override
  @JsonKey(name: 'DESCUENTO3')
  double get discount3;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_SalesOrderLineDTOCopyWith<_$_SalesOrderLineDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
