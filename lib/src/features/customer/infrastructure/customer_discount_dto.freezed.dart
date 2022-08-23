// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_discount_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDiscountDTO _$CustomerDiscountDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDiscountDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerDiscountDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId => throw _privateConstructorUsedError;
  @JsonKey(name: 'FAMILIA_ID')
  String get familyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'SUBFAMILIA_ID')
  String get subfamilyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get quantityFrom => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO')
  double get discount => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDiscountDTOCopyWith<CustomerDiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDiscountDTOCopyWith<$Res> {
  factory $CustomerDiscountDTOCopyWith(
          CustomerDiscountDTO value, $Res Function(CustomerDiscountDTO) then) =
      _$CustomerDiscountDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'FAMILIA_ID') String familyId,
      @JsonKey(name: 'SUBFAMILIA_ID') String subfamilyId,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'DESCUENTO') double discount,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class _$CustomerDiscountDTOCopyWithImpl<$Res>
    implements $CustomerDiscountDTOCopyWith<$Res> {
  _$CustomerDiscountDTOCopyWithImpl(this._value, this._then);

  final CustomerDiscountDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerDiscountDTO) _then;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? familyId = freezed,
    Object? subfamilyId = freezed,
    Object? quantityFrom = freezed,
    Object? discount = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String,
      subfamilyId: subfamilyId == freezed
          ? _value.subfamilyId
          : subfamilyId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFrom: quantityFrom == freezed
          ? _value.quantityFrom
          : quantityFrom // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CustomerDiscountDTOCopyWith<$Res>
    implements $CustomerDiscountDTOCopyWith<$Res> {
  factory _$$_CustomerDiscountDTOCopyWith(_$_CustomerDiscountDTO value,
          $Res Function(_$_CustomerDiscountDTO) then) =
      __$$_CustomerDiscountDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID') String customerId,
      @JsonKey(name: 'ARTICULO_ID') String articleId,
      @JsonKey(name: 'FAMILIA_ID') String familyId,
      @JsonKey(name: 'SUBFAMILIA_ID') String subfamilyId,
      @JsonKey(name: 'CANTIDAD_DESDE') double quantityFrom,
      @JsonKey(name: 'DESCUENTO') double discount,
      @JsonKey(name: 'LAST_UPDATED') DateTime lastUpdated,
      @JsonKey(name: 'DELETED') String deleted});
}

/// @nodoc
class __$$_CustomerDiscountDTOCopyWithImpl<$Res>
    extends _$CustomerDiscountDTOCopyWithImpl<$Res>
    implements _$$_CustomerDiscountDTOCopyWith<$Res> {
  __$$_CustomerDiscountDTOCopyWithImpl(_$_CustomerDiscountDTO _value,
      $Res Function(_$_CustomerDiscountDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerDiscountDTO));

  @override
  _$_CustomerDiscountDTO get _value => super._value as _$_CustomerDiscountDTO;

  @override
  $Res call({
    Object? customerId = freezed,
    Object? articleId = freezed,
    Object? familyId = freezed,
    Object? subfamilyId = freezed,
    Object? quantityFrom = freezed,
    Object? discount = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerDiscountDTO(
      customerId: customerId == freezed
          ? _value.customerId
          : customerId // ignore: cast_nullable_to_non_nullable
              as String,
      articleId: articleId == freezed
          ? _value.articleId
          : articleId // ignore: cast_nullable_to_non_nullable
              as String,
      familyId: familyId == freezed
          ? _value.familyId
          : familyId // ignore: cast_nullable_to_non_nullable
              as String,
      subfamilyId: subfamilyId == freezed
          ? _value.subfamilyId
          : subfamilyId // ignore: cast_nullable_to_non_nullable
              as String,
      quantityFrom: quantityFrom == freezed
          ? _value.quantityFrom
          : quantityFrom // ignore: cast_nullable_to_non_nullable
              as double,
      discount: discount == freezed
          ? _value.discount
          : discount // ignore: cast_nullable_to_non_nullable
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
class _$_CustomerDiscountDTO extends _CustomerDiscountDTO {
  const _$_CustomerDiscountDTO(
      {@JsonKey(name: 'CLIENTE_ID') required this.customerId,
      @JsonKey(name: 'ARTICULO_ID') required this.articleId,
      @JsonKey(name: 'FAMILIA_ID') required this.familyId,
      @JsonKey(name: 'SUBFAMILIA_ID') required this.subfamilyId,
      @JsonKey(name: 'CANTIDAD_DESDE') required this.quantityFrom,
      @JsonKey(name: 'DESCUENTO') required this.discount,
      @JsonKey(name: 'LAST_UPDATED') required this.lastUpdated,
      @JsonKey(name: 'DELETED') this.deleted = 'N'})
      : super._();

  factory _$_CustomerDiscountDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDiscountDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  final String articleId;
  @override
  @JsonKey(name: 'FAMILIA_ID')
  final String familyId;
  @override
  @JsonKey(name: 'SUBFAMILIA_ID')
  final String subfamilyId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  final double quantityFrom;
  @override
  @JsonKey(name: 'DESCUENTO')
  final double discount;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerDiscountDTO(customerId: $customerId, articleId: $articleId, familyId: $familyId, subfamilyId: $subfamilyId, quantityFrom: $quantityFrom, discount: $discount, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDiscountDTO &&
            const DeepCollectionEquality()
                .equals(other.customerId, customerId) &&
            const DeepCollectionEquality().equals(other.articleId, articleId) &&
            const DeepCollectionEquality().equals(other.familyId, familyId) &&
            const DeepCollectionEquality()
                .equals(other.subfamilyId, subfamilyId) &&
            const DeepCollectionEquality()
                .equals(other.quantityFrom, quantityFrom) &&
            const DeepCollectionEquality().equals(other.discount, discount) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(customerId),
      const DeepCollectionEquality().hash(articleId),
      const DeepCollectionEquality().hash(familyId),
      const DeepCollectionEquality().hash(subfamilyId),
      const DeepCollectionEquality().hash(quantityFrom),
      const DeepCollectionEquality().hash(discount),
      const DeepCollectionEquality().hash(lastUpdated),
      const DeepCollectionEquality().hash(deleted));

  @JsonKey(ignore: true)
  @override
  _$$_CustomerDiscountDTOCopyWith<_$_CustomerDiscountDTO> get copyWith =>
      __$$_CustomerDiscountDTOCopyWithImpl<_$_CustomerDiscountDTO>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDiscountDTOToJson(
      this,
    );
  }
}

abstract class _CustomerDiscountDTO extends CustomerDiscountDTO {
  const factory _CustomerDiscountDTO(
      {@JsonKey(name: 'CLIENTE_ID') required final String customerId,
      @JsonKey(name: 'ARTICULO_ID') required final String articleId,
      @JsonKey(name: 'FAMILIA_ID') required final String familyId,
      @JsonKey(name: 'SUBFAMILIA_ID') required final String subfamilyId,
      @JsonKey(name: 'CANTIDAD_DESDE') required final double quantityFrom,
      @JsonKey(name: 'DESCUENTO') required final double discount,
      @JsonKey(name: 'LAST_UPDATED') required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED') final String deleted}) = _$_CustomerDiscountDTO;
  const _CustomerDiscountDTO._() : super._();

  factory _CustomerDiscountDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerDiscountDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get customerId;
  @override
  @JsonKey(name: 'ARTICULO_ID')
  String get articleId;
  @override
  @JsonKey(name: 'FAMILIA_ID')
  String get familyId;
  @override
  @JsonKey(name: 'SUBFAMILIA_ID')
  String get subfamilyId;
  @override
  @JsonKey(name: 'CANTIDAD_DESDE')
  double get quantityFrom;
  @override
  @JsonKey(name: 'DESCUENTO')
  double get discount;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDiscountDTOCopyWith<_$_CustomerDiscountDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
