// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'customer_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CustomerDTO _$CustomerDTOFromJson(Map<String, dynamic> json) {
  return _CustomerDTO.fromJson(json);
}

/// @nodoc
mixin _$CustomerDTO {
  @JsonKey(name: 'CLIENTE_ID')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE')
  String? get customerName => throw _privateConstructorUsedError;
  @JsonKey(name: 'NIF')
  String? get nif => throw _privateConstructorUsedError;
  @JsonKey(name: 'NOMBRE_FISCAL')
  String? get fiscalName => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_FISCAL1')
  String? get fiscalAddress1 => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIRECCION_FISCAL2')
  String? get fiscalAddress2 => throw _privateConstructorUsedError;
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  String? get fiscalZipCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'POBLACION_FISCAL')
  String? get fiscalCity => throw _privateConstructorUsedError;
  @JsonKey(name: 'PAIS_ID_FISCAL')
  String? get fiscalCountryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'PROVINCIA_FISCAL')
  String? get fiscalState => throw _privateConstructorUsedError;
  @JsonKey(name: 'LATITUD_FISCAL')
  double? get fiscalLatitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'LONGITUD_FISCAL')
  double? get fiscalLongitude => throw _privateConstructorUsedError;
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA_ESPECIAL')
  double? get especialVAT => throw _privateConstructorUsedError;
  @JsonKey(name: 'IVA_EXENTO')
  String? get exemptVat => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  double? get currentYearSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  double? get previousYearSales => throw _privateConstructorUsedError;
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  double? get salesTwoYearsAgo => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  double? get currentYearMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  double? get previousYearMargin => throw _privateConstructorUsedError;
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  double? get marginTwoYearsAgo => throw _privateConstructorUsedError;
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  double? get paymentPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  double? get warrantyPercent => throw _privateConstructorUsedError;
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  String? get shoppingCenterName => throw _privateConstructorUsedError;
  @JsonKey(name: 'URL_WEB')
  String? get urlWebsite => throw _privateConstructorUsedError;
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_ID')
  String? get rateId => throw _privateConstructorUsedError;
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get rateDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String? get generalDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  String? get generalDiscountDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  String get priceCalculationType => throw _privateConstructorUsedError;
  @JsonKey(name: 'PLAZO_COBRO_ID')
  String? get collectionTermId => throw _privateConstructorUsedError;
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get collectionMethodId => throw _privateConstructorUsedError;
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get promptPaymentDiscount => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  double get internalGrantedRisk => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  DateTime? get internalGrantedRiskDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  double get cofaceGrantedRisk => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  DateTime? get cofaceGrantedRiskDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  double? get riskGranted => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  double? get riskPendingCollectionDue => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  double? get riskPendingColleectionNotDue =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  double? get riskPendingToServe => throw _privateConstructorUsedError;
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  double? get riskPendingBilling => throw _privateConstructorUsedError;
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  String? get internalRemarks => throw _privateConstructorUsedError;
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated => throw _privateConstructorUsedError;
  @JsonKey(name: 'DELETED')
  String get deleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CustomerDTOCopyWith<CustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CustomerDTOCopyWith<$Res> {
  factory $CustomerDTOCopyWith(
          CustomerDTO value, $Res Function(CustomerDTO) then) =
      _$CustomerDTOCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String id,
      @JsonKey(name: 'NOMBRE')
          String? customerName,
      @JsonKey(name: 'NIF')
          String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL')
          String? fiscalName,
      @JsonKey(name: 'DIRECCION_FISCAL1')
          String? fiscalAddress1,
      @JsonKey(name: 'DIRECCION_FISCAL2')
          String? fiscalAddress2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
          String? fiscalZipCode,
      @JsonKey(name: 'POBLACION_FISCAL')
          String? fiscalCity,
      @JsonKey(name: 'PAIS_ID_FISCAL')
          String? fiscalCountryId,
      @JsonKey(name: 'PROVINCIA_FISCAL')
          String? fiscalState,
      @JsonKey(name: 'LATITUD_FISCAL')
          double? fiscalLatitude,
      @JsonKey(name: 'LONGITUD_FISCAL')
          double? fiscalLongitude,
      @JsonKey(name: 'EMPRESA_ID')
          String companyId,
      @JsonKey(name: 'IVA_ESPECIAL')
          double? especialVAT,
      @JsonKey(name: 'IVA_EXENTO')
          String? exemptVat,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
          double? currentYearSales,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
          double? previousYearSales,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
          double? salesTwoYearsAgo,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
          double? currentYearMargin,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
          double? previousYearMargin,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
          double? marginTwoYearsAgo,
      @JsonKey(name: 'PORCENTAJE_ABONOS')
          double? paymentPercent,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS')
          double? warrantyPercent,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
          String? shoppingCenterName,
      @JsonKey(name: 'URL_WEB')
          String? urlWebsite,
      @JsonKey(name: 'DIVISA_ID')
          String? divisaId,
      @JsonKey(name: 'TARIFA_ID')
          String? rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION')
          String? rateDescription,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID')
          String? generalDiscount,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
          String? generalDiscountDescription,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO')
          String priceCalculationType,
      @JsonKey(name: 'PLAZO_COBRO_ID')
          String? collectionTermId,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? collectionMethodId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          double promptPaymentDiscount,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
          double internalGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
          DateTime? internalGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
          double cofaceGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
          DateTime? cofaceGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO')
          double? riskGranted,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
          double? riskPendingCollectionDue,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
          double? riskPendingColleectionNotDue,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
          double? riskPendingToServe,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
          double? riskPendingBilling,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS')
          String? internalRemarks,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class _$CustomerDTOCopyWithImpl<$Res> implements $CustomerDTOCopyWith<$Res> {
  _$CustomerDTOCopyWithImpl(this._value, this._then);

  final CustomerDTO _value;
  // ignore: unused_field
  final $Res Function(CustomerDTO) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? nif = freezed,
    Object? fiscalName = freezed,
    Object? fiscalAddress1 = freezed,
    Object? fiscalAddress2 = freezed,
    Object? fiscalZipCode = freezed,
    Object? fiscalCity = freezed,
    Object? fiscalCountryId = freezed,
    Object? fiscalState = freezed,
    Object? fiscalLatitude = freezed,
    Object? fiscalLongitude = freezed,
    Object? companyId = freezed,
    Object? especialVAT = freezed,
    Object? exemptVat = freezed,
    Object? currentYearSales = freezed,
    Object? previousYearSales = freezed,
    Object? salesTwoYearsAgo = freezed,
    Object? currentYearMargin = freezed,
    Object? previousYearMargin = freezed,
    Object? marginTwoYearsAgo = freezed,
    Object? paymentPercent = freezed,
    Object? warrantyPercent = freezed,
    Object? shoppingCenterName = freezed,
    Object? urlWebsite = freezed,
    Object? divisaId = freezed,
    Object? rateId = freezed,
    Object? rateDescription = freezed,
    Object? generalDiscount = freezed,
    Object? generalDiscountDescription = freezed,
    Object? priceCalculationType = freezed,
    Object? collectionTermId = freezed,
    Object? collectionMethodId = freezed,
    Object? promptPaymentDiscount = freezed,
    Object? internalGrantedRisk = freezed,
    Object? internalGrantedRiskDate = freezed,
    Object? cofaceGrantedRisk = freezed,
    Object? cofaceGrantedRiskDate = freezed,
    Object? riskGranted = freezed,
    Object? riskPendingCollectionDue = freezed,
    Object? riskPendingColleectionNotDue = freezed,
    Object? riskPendingToServe = freezed,
    Object? riskPendingBilling = freezed,
    Object? internalRemarks = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      nif: nif == freezed
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalName: fiscalName == freezed
          ? _value.fiscalName
          : fiscalName // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalAddress1: fiscalAddress1 == freezed
          ? _value.fiscalAddress1
          : fiscalAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalAddress2: fiscalAddress2 == freezed
          ? _value.fiscalAddress2
          : fiscalAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalZipCode: fiscalZipCode == freezed
          ? _value.fiscalZipCode
          : fiscalZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalCity: fiscalCity == freezed
          ? _value.fiscalCity
          : fiscalCity // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalCountryId: fiscalCountryId == freezed
          ? _value.fiscalCountryId
          : fiscalCountryId // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalState: fiscalState == freezed
          ? _value.fiscalState
          : fiscalState // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalLatitude: fiscalLatitude == freezed
          ? _value.fiscalLatitude
          : fiscalLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      fiscalLongitude: fiscalLongitude == freezed
          ? _value.fiscalLongitude
          : fiscalLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      especialVAT: especialVAT == freezed
          ? _value.especialVAT
          : especialVAT // ignore: cast_nullable_to_non_nullable
              as double?,
      exemptVat: exemptVat == freezed
          ? _value.exemptVat
          : exemptVat // ignore: cast_nullable_to_non_nullable
              as String?,
      currentYearSales: currentYearSales == freezed
          ? _value.currentYearSales
          : currentYearSales // ignore: cast_nullable_to_non_nullable
              as double?,
      previousYearSales: previousYearSales == freezed
          ? _value.previousYearSales
          : previousYearSales // ignore: cast_nullable_to_non_nullable
              as double?,
      salesTwoYearsAgo: salesTwoYearsAgo == freezed
          ? _value.salesTwoYearsAgo
          : salesTwoYearsAgo // ignore: cast_nullable_to_non_nullable
              as double?,
      currentYearMargin: currentYearMargin == freezed
          ? _value.currentYearMargin
          : currentYearMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      previousYearMargin: previousYearMargin == freezed
          ? _value.previousYearMargin
          : previousYearMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      marginTwoYearsAgo: marginTwoYearsAgo == freezed
          ? _value.marginTwoYearsAgo
          : marginTwoYearsAgo // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentPercent: paymentPercent == freezed
          ? _value.paymentPercent
          : paymentPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPercent: warrantyPercent == freezed
          ? _value.warrantyPercent
          : warrantyPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      shoppingCenterName: shoppingCenterName == freezed
          ? _value.shoppingCenterName
          : shoppingCenterName // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWebsite: urlWebsite == freezed
          ? _value.urlWebsite
          : urlWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      rateDescription: rateDescription == freezed
          ? _value.rateDescription
          : rateDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      generalDiscount: generalDiscount == freezed
          ? _value.generalDiscount
          : generalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      generalDiscountDescription: generalDiscountDescription == freezed
          ? _value.generalDiscountDescription
          : generalDiscountDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCalculationType: priceCalculationType == freezed
          ? _value.priceCalculationType
          : priceCalculationType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTermId: collectionTermId == freezed
          ? _value.collectionTermId
          : collectionTermId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionMethodId: collectionMethodId == freezed
          ? _value.collectionMethodId
          : collectionMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      promptPaymentDiscount: promptPaymentDiscount == freezed
          ? _value.promptPaymentDiscount
          : promptPaymentDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      internalGrantedRisk: internalGrantedRisk == freezed
          ? _value.internalGrantedRisk
          : internalGrantedRisk // ignore: cast_nullable_to_non_nullable
              as double,
      internalGrantedRiskDate: internalGrantedRiskDate == freezed
          ? _value.internalGrantedRiskDate
          : internalGrantedRiskDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cofaceGrantedRisk: cofaceGrantedRisk == freezed
          ? _value.cofaceGrantedRisk
          : cofaceGrantedRisk // ignore: cast_nullable_to_non_nullable
              as double,
      cofaceGrantedRiskDate: cofaceGrantedRiskDate == freezed
          ? _value.cofaceGrantedRiskDate
          : cofaceGrantedRiskDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riskGranted: riskGranted == freezed
          ? _value.riskGranted
          : riskGranted // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingCollectionDue: riskPendingCollectionDue == freezed
          ? _value.riskPendingCollectionDue
          : riskPendingCollectionDue // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingColleectionNotDue: riskPendingColleectionNotDue == freezed
          ? _value.riskPendingColleectionNotDue
          : riskPendingColleectionNotDue // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingToServe: riskPendingToServe == freezed
          ? _value.riskPendingToServe
          : riskPendingToServe // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingBilling: riskPendingBilling == freezed
          ? _value.riskPendingBilling
          : riskPendingBilling // ignore: cast_nullable_to_non_nullable
              as double?,
      internalRemarks: internalRemarks == freezed
          ? _value.internalRemarks
          : internalRemarks // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_CustomerDTOCopyWith<$Res>
    implements $CustomerDTOCopyWith<$Res> {
  factory _$$_CustomerDTOCopyWith(
          _$_CustomerDTO value, $Res Function(_$_CustomerDTO) then) =
      __$$_CustomerDTOCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'CLIENTE_ID')
          String id,
      @JsonKey(name: 'NOMBRE')
          String? customerName,
      @JsonKey(name: 'NIF')
          String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL')
          String? fiscalName,
      @JsonKey(name: 'DIRECCION_FISCAL1')
          String? fiscalAddress1,
      @JsonKey(name: 'DIRECCION_FISCAL2')
          String? fiscalAddress2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
          String? fiscalZipCode,
      @JsonKey(name: 'POBLACION_FISCAL')
          String? fiscalCity,
      @JsonKey(name: 'PAIS_ID_FISCAL')
          String? fiscalCountryId,
      @JsonKey(name: 'PROVINCIA_FISCAL')
          String? fiscalState,
      @JsonKey(name: 'LATITUD_FISCAL')
          double? fiscalLatitude,
      @JsonKey(name: 'LONGITUD_FISCAL')
          double? fiscalLongitude,
      @JsonKey(name: 'EMPRESA_ID')
          String companyId,
      @JsonKey(name: 'IVA_ESPECIAL')
          double? especialVAT,
      @JsonKey(name: 'IVA_EXENTO')
          String? exemptVat,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
          double? currentYearSales,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
          double? previousYearSales,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
          double? salesTwoYearsAgo,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
          double? currentYearMargin,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
          double? previousYearMargin,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
          double? marginTwoYearsAgo,
      @JsonKey(name: 'PORCENTAJE_ABONOS')
          double? paymentPercent,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS')
          double? warrantyPercent,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
          String? shoppingCenterName,
      @JsonKey(name: 'URL_WEB')
          String? urlWebsite,
      @JsonKey(name: 'DIVISA_ID')
          String? divisaId,
      @JsonKey(name: 'TARIFA_ID')
          String? rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION')
          String? rateDescription,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID')
          String? generalDiscount,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
          String? generalDiscountDescription,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO')
          String priceCalculationType,
      @JsonKey(name: 'PLAZO_COBRO_ID')
          String? collectionTermId,
      @JsonKey(name: 'METODO_COBRO_ID')
          String? collectionMethodId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          double promptPaymentDiscount,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
          double internalGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
          DateTime? internalGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
          double cofaceGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
          DateTime? cofaceGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO')
          double? riskGranted,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
          double? riskPendingCollectionDue,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
          double? riskPendingColleectionNotDue,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
          double? riskPendingToServe,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
          double? riskPendingBilling,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS')
          String? internalRemarks,
      @JsonKey(name: 'LAST_UPDATED')
          DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          String deleted});
}

/// @nodoc
class __$$_CustomerDTOCopyWithImpl<$Res> extends _$CustomerDTOCopyWithImpl<$Res>
    implements _$$_CustomerDTOCopyWith<$Res> {
  __$$_CustomerDTOCopyWithImpl(
      _$_CustomerDTO _value, $Res Function(_$_CustomerDTO) _then)
      : super(_value, (v) => _then(v as _$_CustomerDTO));

  @override
  _$_CustomerDTO get _value => super._value as _$_CustomerDTO;

  @override
  $Res call({
    Object? id = freezed,
    Object? customerName = freezed,
    Object? nif = freezed,
    Object? fiscalName = freezed,
    Object? fiscalAddress1 = freezed,
    Object? fiscalAddress2 = freezed,
    Object? fiscalZipCode = freezed,
    Object? fiscalCity = freezed,
    Object? fiscalCountryId = freezed,
    Object? fiscalState = freezed,
    Object? fiscalLatitude = freezed,
    Object? fiscalLongitude = freezed,
    Object? companyId = freezed,
    Object? especialVAT = freezed,
    Object? exemptVat = freezed,
    Object? currentYearSales = freezed,
    Object? previousYearSales = freezed,
    Object? salesTwoYearsAgo = freezed,
    Object? currentYearMargin = freezed,
    Object? previousYearMargin = freezed,
    Object? marginTwoYearsAgo = freezed,
    Object? paymentPercent = freezed,
    Object? warrantyPercent = freezed,
    Object? shoppingCenterName = freezed,
    Object? urlWebsite = freezed,
    Object? divisaId = freezed,
    Object? rateId = freezed,
    Object? rateDescription = freezed,
    Object? generalDiscount = freezed,
    Object? generalDiscountDescription = freezed,
    Object? priceCalculationType = freezed,
    Object? collectionTermId = freezed,
    Object? collectionMethodId = freezed,
    Object? promptPaymentDiscount = freezed,
    Object? internalGrantedRisk = freezed,
    Object? internalGrantedRiskDate = freezed,
    Object? cofaceGrantedRisk = freezed,
    Object? cofaceGrantedRiskDate = freezed,
    Object? riskGranted = freezed,
    Object? riskPendingCollectionDue = freezed,
    Object? riskPendingColleectionNotDue = freezed,
    Object? riskPendingToServe = freezed,
    Object? riskPendingBilling = freezed,
    Object? internalRemarks = freezed,
    Object? lastUpdated = freezed,
    Object? deleted = freezed,
  }) {
    return _then(_$_CustomerDTO(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      customerName: customerName == freezed
          ? _value.customerName
          : customerName // ignore: cast_nullable_to_non_nullable
              as String?,
      nif: nif == freezed
          ? _value.nif
          : nif // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalName: fiscalName == freezed
          ? _value.fiscalName
          : fiscalName // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalAddress1: fiscalAddress1 == freezed
          ? _value.fiscalAddress1
          : fiscalAddress1 // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalAddress2: fiscalAddress2 == freezed
          ? _value.fiscalAddress2
          : fiscalAddress2 // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalZipCode: fiscalZipCode == freezed
          ? _value.fiscalZipCode
          : fiscalZipCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalCity: fiscalCity == freezed
          ? _value.fiscalCity
          : fiscalCity // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalCountryId: fiscalCountryId == freezed
          ? _value.fiscalCountryId
          : fiscalCountryId // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalState: fiscalState == freezed
          ? _value.fiscalState
          : fiscalState // ignore: cast_nullable_to_non_nullable
              as String?,
      fiscalLatitude: fiscalLatitude == freezed
          ? _value.fiscalLatitude
          : fiscalLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      fiscalLongitude: fiscalLongitude == freezed
          ? _value.fiscalLongitude
          : fiscalLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      companyId: companyId == freezed
          ? _value.companyId
          : companyId // ignore: cast_nullable_to_non_nullable
              as String,
      especialVAT: especialVAT == freezed
          ? _value.especialVAT
          : especialVAT // ignore: cast_nullable_to_non_nullable
              as double?,
      exemptVat: exemptVat == freezed
          ? _value.exemptVat
          : exemptVat // ignore: cast_nullable_to_non_nullable
              as String?,
      currentYearSales: currentYearSales == freezed
          ? _value.currentYearSales
          : currentYearSales // ignore: cast_nullable_to_non_nullable
              as double?,
      previousYearSales: previousYearSales == freezed
          ? _value.previousYearSales
          : previousYearSales // ignore: cast_nullable_to_non_nullable
              as double?,
      salesTwoYearsAgo: salesTwoYearsAgo == freezed
          ? _value.salesTwoYearsAgo
          : salesTwoYearsAgo // ignore: cast_nullable_to_non_nullable
              as double?,
      currentYearMargin: currentYearMargin == freezed
          ? _value.currentYearMargin
          : currentYearMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      previousYearMargin: previousYearMargin == freezed
          ? _value.previousYearMargin
          : previousYearMargin // ignore: cast_nullable_to_non_nullable
              as double?,
      marginTwoYearsAgo: marginTwoYearsAgo == freezed
          ? _value.marginTwoYearsAgo
          : marginTwoYearsAgo // ignore: cast_nullable_to_non_nullable
              as double?,
      paymentPercent: paymentPercent == freezed
          ? _value.paymentPercent
          : paymentPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      warrantyPercent: warrantyPercent == freezed
          ? _value.warrantyPercent
          : warrantyPercent // ignore: cast_nullable_to_non_nullable
              as double?,
      shoppingCenterName: shoppingCenterName == freezed
          ? _value.shoppingCenterName
          : shoppingCenterName // ignore: cast_nullable_to_non_nullable
              as String?,
      urlWebsite: urlWebsite == freezed
          ? _value.urlWebsite
          : urlWebsite // ignore: cast_nullable_to_non_nullable
              as String?,
      divisaId: divisaId == freezed
          ? _value.divisaId
          : divisaId // ignore: cast_nullable_to_non_nullable
              as String?,
      rateId: rateId == freezed
          ? _value.rateId
          : rateId // ignore: cast_nullable_to_non_nullable
              as String?,
      rateDescription: rateDescription == freezed
          ? _value.rateDescription
          : rateDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      generalDiscount: generalDiscount == freezed
          ? _value.generalDiscount
          : generalDiscount // ignore: cast_nullable_to_non_nullable
              as String?,
      generalDiscountDescription: generalDiscountDescription == freezed
          ? _value.generalDiscountDescription
          : generalDiscountDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      priceCalculationType: priceCalculationType == freezed
          ? _value.priceCalculationType
          : priceCalculationType // ignore: cast_nullable_to_non_nullable
              as String,
      collectionTermId: collectionTermId == freezed
          ? _value.collectionTermId
          : collectionTermId // ignore: cast_nullable_to_non_nullable
              as String?,
      collectionMethodId: collectionMethodId == freezed
          ? _value.collectionMethodId
          : collectionMethodId // ignore: cast_nullable_to_non_nullable
              as String?,
      promptPaymentDiscount: promptPaymentDiscount == freezed
          ? _value.promptPaymentDiscount
          : promptPaymentDiscount // ignore: cast_nullable_to_non_nullable
              as double,
      internalGrantedRisk: internalGrantedRisk == freezed
          ? _value.internalGrantedRisk
          : internalGrantedRisk // ignore: cast_nullable_to_non_nullable
              as double,
      internalGrantedRiskDate: internalGrantedRiskDate == freezed
          ? _value.internalGrantedRiskDate
          : internalGrantedRiskDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      cofaceGrantedRisk: cofaceGrantedRisk == freezed
          ? _value.cofaceGrantedRisk
          : cofaceGrantedRisk // ignore: cast_nullable_to_non_nullable
              as double,
      cofaceGrantedRiskDate: cofaceGrantedRiskDate == freezed
          ? _value.cofaceGrantedRiskDate
          : cofaceGrantedRiskDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      riskGranted: riskGranted == freezed
          ? _value.riskGranted
          : riskGranted // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingCollectionDue: riskPendingCollectionDue == freezed
          ? _value.riskPendingCollectionDue
          : riskPendingCollectionDue // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingColleectionNotDue: riskPendingColleectionNotDue == freezed
          ? _value.riskPendingColleectionNotDue
          : riskPendingColleectionNotDue // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingToServe: riskPendingToServe == freezed
          ? _value.riskPendingToServe
          : riskPendingToServe // ignore: cast_nullable_to_non_nullable
              as double?,
      riskPendingBilling: riskPendingBilling == freezed
          ? _value.riskPendingBilling
          : riskPendingBilling // ignore: cast_nullable_to_non_nullable
              as double?,
      internalRemarks: internalRemarks == freezed
          ? _value.internalRemarks
          : internalRemarks // ignore: cast_nullable_to_non_nullable
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
class _$_CustomerDTO extends _CustomerDTO {
  const _$_CustomerDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required this.id,
      @JsonKey(name: 'NOMBRE')
          this.customerName,
      @JsonKey(name: 'NIF')
          this.nif,
      @JsonKey(name: 'NOMBRE_FISCAL')
          this.fiscalName,
      @JsonKey(name: 'DIRECCION_FISCAL1')
          this.fiscalAddress1,
      @JsonKey(name: 'DIRECCION_FISCAL2')
          this.fiscalAddress2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
          this.fiscalZipCode,
      @JsonKey(name: 'POBLACION_FISCAL')
          this.fiscalCity,
      @JsonKey(name: 'PAIS_ID_FISCAL')
          this.fiscalCountryId,
      @JsonKey(name: 'PROVINCIA_FISCAL')
          this.fiscalState,
      @JsonKey(name: 'LATITUD_FISCAL')
          this.fiscalLatitude,
      @JsonKey(name: 'LONGITUD_FISCAL')
          this.fiscalLongitude,
      @JsonKey(name: 'EMPRESA_ID')
          required this.companyId,
      @JsonKey(name: 'IVA_ESPECIAL')
          this.especialVAT,
      @JsonKey(name: 'IVA_EXENTO')
          this.exemptVat,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
          this.currentYearSales,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
          this.previousYearSales,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
          this.salesTwoYearsAgo,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
          this.currentYearMargin,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
          this.previousYearMargin,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
          this.marginTwoYearsAgo,
      @JsonKey(name: 'PORCENTAJE_ABONOS')
          this.paymentPercent,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS')
          this.warrantyPercent,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
          this.shoppingCenterName,
      @JsonKey(name: 'URL_WEB')
          this.urlWebsite,
      @JsonKey(name: 'DIVISA_ID')
          this.divisaId,
      @JsonKey(name: 'TARIFA_ID')
          this.rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION')
          this.rateDescription,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID')
          this.generalDiscount,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
          this.generalDiscountDescription,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO')
          required this.priceCalculationType,
      @JsonKey(name: 'PLAZO_COBRO_ID')
          this.collectionTermId,
      @JsonKey(name: 'METODO_COBRO_ID')
          this.collectionMethodId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          required this.promptPaymentDiscount,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
          required this.internalGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
          this.internalGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
          required this.cofaceGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
          this.cofaceGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO')
          this.riskGranted,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
          this.riskPendingCollectionDue,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
          this.riskPendingColleectionNotDue,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
          this.riskPendingToServe,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
          this.riskPendingBilling,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS')
          this.internalRemarks,
      @JsonKey(name: 'LAST_UPDATED')
          required this.lastUpdated,
      @JsonKey(name: 'DELETED')
          this.deleted = 'N'})
      : super._();

  factory _$_CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$$_CustomerDTOFromJson(json);

  @override
  @JsonKey(name: 'CLIENTE_ID')
  final String id;
  @override
  @JsonKey(name: 'NOMBRE')
  final String? customerName;
  @override
  @JsonKey(name: 'NIF')
  final String? nif;
  @override
  @JsonKey(name: 'NOMBRE_FISCAL')
  final String? fiscalName;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL1')
  final String? fiscalAddress1;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL2')
  final String? fiscalAddress2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  final String? fiscalZipCode;
  @override
  @JsonKey(name: 'POBLACION_FISCAL')
  final String? fiscalCity;
  @override
  @JsonKey(name: 'PAIS_ID_FISCAL')
  final String? fiscalCountryId;
  @override
  @JsonKey(name: 'PROVINCIA_FISCAL')
  final String? fiscalState;
  @override
  @JsonKey(name: 'LATITUD_FISCAL')
  final double? fiscalLatitude;
  @override
  @JsonKey(name: 'LONGITUD_FISCAL')
  final double? fiscalLongitude;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  final String companyId;
  @override
  @JsonKey(name: 'IVA_ESPECIAL')
  final double? especialVAT;
  @override
  @JsonKey(name: 'IVA_EXENTO')
  final String? exemptVat;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  final double? currentYearSales;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  final double? previousYearSales;
  @override
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  final double? salesTwoYearsAgo;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  final double? currentYearMargin;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  final double? previousYearMargin;
  @override
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  final double? marginTwoYearsAgo;
  @override
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  final double? paymentPercent;
  @override
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  final double? warrantyPercent;
  @override
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  final String? shoppingCenterName;
  @override
  @JsonKey(name: 'URL_WEB')
  final String? urlWebsite;
  @override
  @JsonKey(name: 'DIVISA_ID')
  final String? divisaId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  final String? rateId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  final String? rateDescription;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  final String? generalDiscount;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  final String? generalDiscountDescription;
  @override
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  final String priceCalculationType;
  @override
  @JsonKey(name: 'PLAZO_COBRO_ID')
  final String? collectionTermId;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  final String? collectionMethodId;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  final double promptPaymentDiscount;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  final double internalGrantedRisk;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  final DateTime? internalGrantedRiskDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  final double cofaceGrantedRisk;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  final DateTime? cofaceGrantedRiskDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  final double? riskGranted;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  final double? riskPendingCollectionDue;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  final double? riskPendingColleectionNotDue;
  @override
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  final double? riskPendingToServe;
  @override
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  final double? riskPendingBilling;
  @override
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  final String? internalRemarks;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  final DateTime lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  final String deleted;

  @override
  String toString() {
    return 'CustomerDTO(id: $id, customerName: $customerName, nif: $nif, fiscalName: $fiscalName, fiscalAddress1: $fiscalAddress1, fiscalAddress2: $fiscalAddress2, fiscalZipCode: $fiscalZipCode, fiscalCity: $fiscalCity, fiscalCountryId: $fiscalCountryId, fiscalState: $fiscalState, fiscalLatitude: $fiscalLatitude, fiscalLongitude: $fiscalLongitude, companyId: $companyId, especialVAT: $especialVAT, exemptVat: $exemptVat, currentYearSales: $currentYearSales, previousYearSales: $previousYearSales, salesTwoYearsAgo: $salesTwoYearsAgo, currentYearMargin: $currentYearMargin, previousYearMargin: $previousYearMargin, marginTwoYearsAgo: $marginTwoYearsAgo, paymentPercent: $paymentPercent, warrantyPercent: $warrantyPercent, shoppingCenterName: $shoppingCenterName, urlWebsite: $urlWebsite, divisaId: $divisaId, rateId: $rateId, rateDescription: $rateDescription, generalDiscount: $generalDiscount, generalDiscountDescription: $generalDiscountDescription, priceCalculationType: $priceCalculationType, collectionTermId: $collectionTermId, collectionMethodId: $collectionMethodId, promptPaymentDiscount: $promptPaymentDiscount, internalGrantedRisk: $internalGrantedRisk, internalGrantedRiskDate: $internalGrantedRiskDate, cofaceGrantedRisk: $cofaceGrantedRisk, cofaceGrantedRiskDate: $cofaceGrantedRiskDate, riskGranted: $riskGranted, riskPendingCollectionDue: $riskPendingCollectionDue, riskPendingColleectionNotDue: $riskPendingColleectionNotDue, riskPendingToServe: $riskPendingToServe, riskPendingBilling: $riskPendingBilling, internalRemarks: $internalRemarks, lastUpdated: $lastUpdated, deleted: $deleted)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CustomerDTO &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.customerName, customerName) &&
            const DeepCollectionEquality().equals(other.nif, nif) &&
            const DeepCollectionEquality()
                .equals(other.fiscalName, fiscalName) &&
            const DeepCollectionEquality()
                .equals(other.fiscalAddress1, fiscalAddress1) &&
            const DeepCollectionEquality()
                .equals(other.fiscalAddress2, fiscalAddress2) &&
            const DeepCollectionEquality()
                .equals(other.fiscalZipCode, fiscalZipCode) &&
            const DeepCollectionEquality()
                .equals(other.fiscalCity, fiscalCity) &&
            const DeepCollectionEquality()
                .equals(other.fiscalCountryId, fiscalCountryId) &&
            const DeepCollectionEquality()
                .equals(other.fiscalState, fiscalState) &&
            const DeepCollectionEquality()
                .equals(other.fiscalLatitude, fiscalLatitude) &&
            const DeepCollectionEquality()
                .equals(other.fiscalLongitude, fiscalLongitude) &&
            const DeepCollectionEquality().equals(other.companyId, companyId) &&
            const DeepCollectionEquality()
                .equals(other.especialVAT, especialVAT) &&
            const DeepCollectionEquality().equals(other.exemptVat, exemptVat) &&
            const DeepCollectionEquality()
                .equals(other.currentYearSales, currentYearSales) &&
            const DeepCollectionEquality()
                .equals(other.previousYearSales, previousYearSales) &&
            const DeepCollectionEquality()
                .equals(other.salesTwoYearsAgo, salesTwoYearsAgo) &&
            const DeepCollectionEquality()
                .equals(other.currentYearMargin, currentYearMargin) &&
            const DeepCollectionEquality()
                .equals(other.previousYearMargin, previousYearMargin) &&
            const DeepCollectionEquality()
                .equals(other.marginTwoYearsAgo, marginTwoYearsAgo) &&
            const DeepCollectionEquality()
                .equals(other.paymentPercent, paymentPercent) &&
            const DeepCollectionEquality()
                .equals(other.warrantyPercent, warrantyPercent) &&
            const DeepCollectionEquality()
                .equals(other.shoppingCenterName, shoppingCenterName) &&
            const DeepCollectionEquality()
                .equals(other.urlWebsite, urlWebsite) &&
            const DeepCollectionEquality().equals(other.divisaId, divisaId) &&
            const DeepCollectionEquality().equals(other.rateId, rateId) &&
            const DeepCollectionEquality()
                .equals(other.rateDescription, rateDescription) &&
            const DeepCollectionEquality()
                .equals(other.generalDiscount, generalDiscount) &&
            const DeepCollectionEquality().equals(
                other.generalDiscountDescription, generalDiscountDescription) &&
            const DeepCollectionEquality()
                .equals(other.priceCalculationType, priceCalculationType) &&
            const DeepCollectionEquality()
                .equals(other.collectionTermId, collectionTermId) &&
            const DeepCollectionEquality()
                .equals(other.collectionMethodId, collectionMethodId) &&
            const DeepCollectionEquality()
                .equals(other.promptPaymentDiscount, promptPaymentDiscount) &&
            const DeepCollectionEquality()
                .equals(other.internalGrantedRisk, internalGrantedRisk) &&
            const DeepCollectionEquality().equals(
                other.internalGrantedRiskDate, internalGrantedRiskDate) &&
            const DeepCollectionEquality()
                .equals(other.cofaceGrantedRisk, cofaceGrantedRisk) &&
            const DeepCollectionEquality()
                .equals(other.cofaceGrantedRiskDate, cofaceGrantedRiskDate) &&
            const DeepCollectionEquality()
                .equals(other.riskGranted, riskGranted) &&
            const DeepCollectionEquality().equals(
                other.riskPendingCollectionDue, riskPendingCollectionDue) &&
            const DeepCollectionEquality().equals(
                other.riskPendingColleectionNotDue,
                riskPendingColleectionNotDue) &&
            const DeepCollectionEquality()
                .equals(other.riskPendingToServe, riskPendingToServe) &&
            const DeepCollectionEquality()
                .equals(other.riskPendingBilling, riskPendingBilling) &&
            const DeepCollectionEquality()
                .equals(other.internalRemarks, internalRemarks) &&
            const DeepCollectionEquality()
                .equals(other.lastUpdated, lastUpdated) &&
            const DeepCollectionEquality().equals(other.deleted, deleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(customerName),
        const DeepCollectionEquality().hash(nif),
        const DeepCollectionEquality().hash(fiscalName),
        const DeepCollectionEquality().hash(fiscalAddress1),
        const DeepCollectionEquality().hash(fiscalAddress2),
        const DeepCollectionEquality().hash(fiscalZipCode),
        const DeepCollectionEquality().hash(fiscalCity),
        const DeepCollectionEquality().hash(fiscalCountryId),
        const DeepCollectionEquality().hash(fiscalState),
        const DeepCollectionEquality().hash(fiscalLatitude),
        const DeepCollectionEquality().hash(fiscalLongitude),
        const DeepCollectionEquality().hash(companyId),
        const DeepCollectionEquality().hash(especialVAT),
        const DeepCollectionEquality().hash(exemptVat),
        const DeepCollectionEquality().hash(currentYearSales),
        const DeepCollectionEquality().hash(previousYearSales),
        const DeepCollectionEquality().hash(salesTwoYearsAgo),
        const DeepCollectionEquality().hash(currentYearMargin),
        const DeepCollectionEquality().hash(previousYearMargin),
        const DeepCollectionEquality().hash(marginTwoYearsAgo),
        const DeepCollectionEquality().hash(paymentPercent),
        const DeepCollectionEquality().hash(warrantyPercent),
        const DeepCollectionEquality().hash(shoppingCenterName),
        const DeepCollectionEquality().hash(urlWebsite),
        const DeepCollectionEquality().hash(divisaId),
        const DeepCollectionEquality().hash(rateId),
        const DeepCollectionEquality().hash(rateDescription),
        const DeepCollectionEquality().hash(generalDiscount),
        const DeepCollectionEquality().hash(generalDiscountDescription),
        const DeepCollectionEquality().hash(priceCalculationType),
        const DeepCollectionEquality().hash(collectionTermId),
        const DeepCollectionEquality().hash(collectionMethodId),
        const DeepCollectionEquality().hash(promptPaymentDiscount),
        const DeepCollectionEquality().hash(internalGrantedRisk),
        const DeepCollectionEquality().hash(internalGrantedRiskDate),
        const DeepCollectionEquality().hash(cofaceGrantedRisk),
        const DeepCollectionEquality().hash(cofaceGrantedRiskDate),
        const DeepCollectionEquality().hash(riskGranted),
        const DeepCollectionEquality().hash(riskPendingCollectionDue),
        const DeepCollectionEquality().hash(riskPendingColleectionNotDue),
        const DeepCollectionEquality().hash(riskPendingToServe),
        const DeepCollectionEquality().hash(riskPendingBilling),
        const DeepCollectionEquality().hash(internalRemarks),
        const DeepCollectionEquality().hash(lastUpdated),
        const DeepCollectionEquality().hash(deleted)
      ]);

  @JsonKey(ignore: true)
  @override
  _$$_CustomerDTOCopyWith<_$_CustomerDTO> get copyWith =>
      __$$_CustomerDTOCopyWithImpl<_$_CustomerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CustomerDTOToJson(
      this,
    );
  }
}

abstract class _CustomerDTO extends CustomerDTO {
  const factory _CustomerDTO(
      {@JsonKey(name: 'CLIENTE_ID')
          required final String id,
      @JsonKey(name: 'NOMBRE')
          final String? customerName,
      @JsonKey(name: 'NIF')
          final String? nif,
      @JsonKey(name: 'NOMBRE_FISCAL')
          final String? fiscalName,
      @JsonKey(name: 'DIRECCION_FISCAL1')
          final String? fiscalAddress1,
      @JsonKey(name: 'DIRECCION_FISCAL2')
          final String? fiscalAddress2,
      @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
          final String? fiscalZipCode,
      @JsonKey(name: 'POBLACION_FISCAL')
          final String? fiscalCity,
      @JsonKey(name: 'PAIS_ID_FISCAL')
          final String? fiscalCountryId,
      @JsonKey(name: 'PROVINCIA_FISCAL')
          final String? fiscalState,
      @JsonKey(name: 'LATITUD_FISCAL')
          final double? fiscalLatitude,
      @JsonKey(name: 'LONGITUD_FISCAL')
          final double? fiscalLongitude,
      @JsonKey(name: 'EMPRESA_ID')
          required final String companyId,
      @JsonKey(name: 'IVA_ESPECIAL')
          final double? especialVAT,
      @JsonKey(name: 'IVA_EXENTO')
          final String? exemptVat,
      @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
          final double? currentYearSales,
      @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
          final double? previousYearSales,
      @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
          final double? salesTwoYearsAgo,
      @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
          final double? currentYearMargin,
      @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
          final double? previousYearMargin,
      @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
          final double? marginTwoYearsAgo,
      @JsonKey(name: 'PORCENTAJE_ABONOS')
          final double? paymentPercent,
      @JsonKey(name: 'PORCENTAJE_GARANTIAS')
          final double? warrantyPercent,
      @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
          final String? shoppingCenterName,
      @JsonKey(name: 'URL_WEB')
          final String? urlWebsite,
      @JsonKey(name: 'DIVISA_ID')
          final String? divisaId,
      @JsonKey(name: 'TARIFA_ID')
          final String? rateId,
      @JsonKey(name: 'TARIFA_DESCRIPCION')
          final String? rateDescription,
      @JsonKey(name: 'DESCUENTO_GENERAL_ID')
          final String? generalDiscount,
      @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
          final String? generalDiscountDescription,
      @JsonKey(name: 'TIPO_CALCULO_PRECIO')
          required final String priceCalculationType,
      @JsonKey(name: 'PLAZO_COBRO_ID')
          final String? collectionTermId,
      @JsonKey(name: 'METODO_COBRO_ID')
          final String? collectionMethodId,
      @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
          required final double promptPaymentDiscount,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
          required final double internalGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
          final DateTime? internalGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
          required final double cofaceGrantedRisk,
      @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
          final DateTime? cofaceGrantedRiskDate,
      @JsonKey(name: 'RIESGO_CONCEDIDO')
          final double? riskGranted,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
          final double? riskPendingCollectionDue,
      @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
          final double? riskPendingColleectionNotDue,
      @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
          final double? riskPendingToServe,
      @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
          final double? riskPendingBilling,
      @JsonKey(name: 'OBSERVACIONES_INTERNAS')
          final String? internalRemarks,
      @JsonKey(name: 'LAST_UPDATED')
          required final DateTime lastUpdated,
      @JsonKey(name: 'DELETED')
          final String deleted}) = _$_CustomerDTO;
  const _CustomerDTO._() : super._();

  factory _CustomerDTO.fromJson(Map<String, dynamic> json) =
      _$_CustomerDTO.fromJson;

  @override
  @JsonKey(name: 'CLIENTE_ID')
  String get id;
  @override
  @JsonKey(name: 'NOMBRE')
  String? get customerName;
  @override
  @JsonKey(name: 'NIF')
  String? get nif;
  @override
  @JsonKey(name: 'NOMBRE_FISCAL')
  String? get fiscalName;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL1')
  String? get fiscalAddress1;
  @override
  @JsonKey(name: 'DIRECCION_FISCAL2')
  String? get fiscalAddress2;
  @override
  @JsonKey(name: 'CODIGO_POSTAL_FISCAL')
  String? get fiscalZipCode;
  @override
  @JsonKey(name: 'POBLACION_FISCAL')
  String? get fiscalCity;
  @override
  @JsonKey(name: 'PAIS_ID_FISCAL')
  String? get fiscalCountryId;
  @override
  @JsonKey(name: 'PROVINCIA_FISCAL')
  String? get fiscalState;
  @override
  @JsonKey(name: 'LATITUD_FISCAL')
  double? get fiscalLatitude;
  @override
  @JsonKey(name: 'LONGITUD_FISCAL')
  double? get fiscalLongitude;
  @override
  @JsonKey(name: 'EMPRESA_ID')
  String get companyId;
  @override
  @JsonKey(name: 'IVA_ESPECIAL')
  double? get especialVAT;
  @override
  @JsonKey(name: 'IVA_EXENTO')
  String? get exemptVat;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ACTUAL')
  double? get currentYearSales;
  @override
  @JsonKey(name: 'VENTAS_ANYO_ANTERIOR')
  double? get previousYearSales;
  @override
  @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS')
  double? get salesTwoYearsAgo;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ACTUAL')
  double? get currentYearMargin;
  @override
  @JsonKey(name: 'MARGEN_ANYO_ANTERIOR')
  double? get previousYearMargin;
  @override
  @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS')
  double? get marginTwoYearsAgo;
  @override
  @JsonKey(name: 'PORCENTAJE_ABONOS')
  double? get paymentPercent;
  @override
  @JsonKey(name: 'PORCENTAJE_GARANTIAS')
  double? get warrantyPercent;
  @override
  @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE')
  String? get shoppingCenterName;
  @override
  @JsonKey(name: 'URL_WEB')
  String? get urlWebsite;
  @override
  @JsonKey(name: 'DIVISA_ID')
  String? get divisaId;
  @override
  @JsonKey(name: 'TARIFA_ID')
  String? get rateId;
  @override
  @JsonKey(name: 'TARIFA_DESCRIPCION')
  String? get rateDescription;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_ID')
  String? get generalDiscount;
  @override
  @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
  String? get generalDiscountDescription;
  @override
  @JsonKey(name: 'TIPO_CALCULO_PRECIO')
  String get priceCalculationType;
  @override
  @JsonKey(name: 'PLAZO_COBRO_ID')
  String? get collectionTermId;
  @override
  @JsonKey(name: 'METODO_COBRO_ID')
  String? get collectionMethodId;
  @override
  @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
  double get promptPaymentDiscount;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
  double get internalGrantedRisk;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
  DateTime? get internalGrantedRiskDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE')
  double get cofaceGrantedRisk;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
  DateTime? get cofaceGrantedRiskDate;
  @override
  @JsonKey(name: 'RIESGO_CONCEDIDO')
  double? get riskGranted;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
  double? get riskPendingCollectionDue;
  @override
  @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
  double? get riskPendingColleectionNotDue;
  @override
  @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE')
  double? get riskPendingToServe;
  @override
  @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE')
  double? get riskPendingBilling;
  @override
  @JsonKey(name: 'OBSERVACIONES_INTERNAS')
  String? get internalRemarks;
  @override
  @JsonKey(name: 'LAST_UPDATED')
  DateTime get lastUpdated;
  @override
  @JsonKey(name: 'DELETED')
  String get deleted;
  @override
  @JsonKey(ignore: true)
  _$$_CustomerDTOCopyWith<_$_CustomerDTO> get copyWith =>
      throw _privateConstructorUsedError;
}
