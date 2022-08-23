import 'package:drift/drift.dart' hide JsonKey;
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/domain/country.dart';
import '../../../core/domain/divisa.dart';
import '../../../core/infrastructure/country_dto.dart';
import '../../../core/infrastructure/database.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../domain/collection_method.dart';
import '../domain/collection_term.dart';
import '../domain/customer.dart';
import 'collection_method_dto.dart';
import 'collection_term_dto.dart';

part 'customer_dto.freezed.dart';
part 'customer_dto.g.dart';

// ignore_for_file: invalid_annotation_target

@freezed
class CustomerDTO with _$CustomerDTO implements Insertable<CustomerDTO> {
  const CustomerDTO._();
  const factory CustomerDTO({
    @JsonKey(name: 'CLIENTE_ID') required String id,
    @JsonKey(name: 'NOMBRE') String? customerName,
    @JsonKey(name: 'NIF') String? nif,
    @JsonKey(name: 'NOMBRE_FISCAL') String? fiscalName,
    @JsonKey(name: 'DIRECCION_FISCAL1') String? fiscalAddress1,
    @JsonKey(name: 'DIRECCION_FISCAL2') String? fiscalAddress2,
    @JsonKey(name: 'CODIGO_POSTAL_FISCAL') String? fiscalZipCode,
    @JsonKey(name: 'POBLACION_FISCAL') String? fiscalCity,
    @JsonKey(name: 'PAIS_ID_FISCAL') String? fiscalCountryId,
    @JsonKey(name: 'PROVINCIA_FISCAL') String? fiscalState,
    @JsonKey(name: 'LATITUD_FISCAL') double? fiscalLatitude,
    @JsonKey(name: 'LONGITUD_FISCAL') double? fiscalLongitude,
    @JsonKey(name: 'EMPRESA_ID') required String companyId,
    @JsonKey(name: 'IVA_ESPECIAL') double? especialVAT,
    @JsonKey(name: 'IVA_EXENTO') String? exemptVat,
    @JsonKey(name: 'VENTAS_ANYO_ACTUAL') double? currentYearSales,
    @JsonKey(name: 'VENTAS_ANYO_ANTERIOR') double? previousYearSales,
    @JsonKey(name: 'VENTAS_HACE_DOS_ANYOS') double? salesTwoYearsAgo,
    @JsonKey(name: 'MARGEN_ANYO_ACTUAL') double? currentYearMargin,
    @JsonKey(name: 'MARGEN_ANYO_ANTERIOR') double? previousYearMargin,
    @JsonKey(name: 'MARGEN_HACE_DOS_ANYOS') double? marginTwoYearsAgo,
    @JsonKey(name: 'PORCENTAJE_ABONOS') double? paymentPercent,
    @JsonKey(name: 'PORCENTAJE_GARANTIAS') double? warrantyPercent,
    @JsonKey(name: 'CENTRAL_COMPRAS_NOMBRE') String? shoppingCenterName,
    @JsonKey(name: 'URL_WEB') String? urlWebsite,
    @JsonKey(name: 'DIVISA_ID') String? divisaId,
    @JsonKey(name: 'TARIFA_ID') String? rateId,
    @JsonKey(name: 'TARIFA_DESCRIPCION') String? rateDescription,
    @JsonKey(name: 'DESCUENTO_GENERAL_ID') String? generalDiscount,
    @JsonKey(name: 'DESCUENTO_GENERAL_DESCRIPCION')
        String? generalDiscountDescription,
    @JsonKey(name: 'TIPO_CALCULO_PRECIO') required String priceCalculationType,
    @JsonKey(name: 'PLAZO_COBRO_ID') String? collectionTermId,
    @JsonKey(name: 'METODO_COBRO_ID') String? collectionMethodId,
    @JsonKey(name: 'DESCUENTO_PRONTO_PAGO')
        required double promptPaymentDiscount,
    @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO')
        required double internalGrantedRisk,
    @JsonKey(name: 'RIESGO_CONCEDIDO_INTERNO_FECHA')
        DateTime? internalGrantedRiskDate,
    @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE') required double cofaceGrantedRisk,
    @JsonKey(name: 'RIESGO_CONCEDIDO_COFACE_FECHA')
        DateTime? cofaceGrantedRiskDate,
    @JsonKey(name: 'RIESGO_CONCEDIDO') double? riskGranted,
    @JsonKey(name: 'RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')
        double? riskPendingCollectionDue,
    @JsonKey(name: 'RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')
        double? riskPendingColleectionNotDue,
    @JsonKey(name: 'RIESGO_PDTE_SERVIR_CLIENTE') double? riskPendingToServe,
    @JsonKey(name: 'RIESGO_PDTE_FACTURAR_CLIENTE') double? riskPendingBilling,
    @JsonKey(name: 'OBSERVACIONES_INTERNAS') String? internalRemarks,
    @JsonKey(name: 'LAST_UPDATED') required DateTime lastUpdated,
    @JsonKey(name: 'DELETED') @Default('N') String deleted,
  }) = _CustomerDTO;

  factory CustomerDTO.fromJson(Map<String, dynamic> json) =>
      _$CustomerDTOFromJson(json);

  Customer toDomain({
    required Country fiscalCountry,
    required Divisa divisa,
    required CollectionMethod collectionMethod,
    required CollectionTerm collectionTerm,
  }) {
    return Customer(
      id: id,
      customerName: customerName,
      nif: nif,
      fiscalName: fiscalName,
      fiscalAddress1: fiscalAddress1,
      fiscalAddress2: fiscalAddress2,
      fiscalZipCode: fiscalZipCode,
      fiscalCity: fiscalCity,
      fiscalState: fiscalState,
      fiscalCountry: fiscalCountry,
      fiscalLatitude: fiscalLatitude,
      fiscalLongitude: fiscalLongitude,
      companyId: companyId,
      especialVAT: especialVAT,
      exemptVat: exemptVat,
      currentYearSales: currentYearSales,
      previousYearSales: previousYearSales,
      salesTwoYearsAgo: salesTwoYearsAgo,
      currentYearMargin: currentYearMargin,
      previousYearMargin: previousYearMargin,
      marginTwoYearsAgo: marginTwoYearsAgo,
      paymentPercent: paymentPercent,
      warrantyPercent: warrantyPercent,
      shoppingCenterName: shoppingCenterName,
      urlWebsite: urlWebsite,
      divisa: divisa,
      rateId: rateId,
      rateDescription: rateDescription,
      generalDiscount: generalDiscount,
      generalDiscountDescription: generalDiscountDescription,
      priceCalculationType: priceCalculationType,
      collectionTerm: collectionTerm,
      collectionMethod: collectionMethod,
      promptPaymentDiscount: promptPaymentDiscount,
      internalGrantedRisk: internalGrantedRisk,
      internalGrantedRiskDate: internalGrantedRiskDate,
      cofaceGrantedRisk: cofaceGrantedRisk,
      cofaceGrantedRiskDate: cofaceGrantedRiskDate,
      riskGranted: riskGranted,
      riskPendingCollectionDue: riskPendingCollectionDue,
      riskPendingColleectionNotDue: riskPendingColleectionNotDue,
      riskPendingToServe: riskPendingToServe,
      riskPendingBilling: riskPendingBilling,
      internalRemarks: internalRemarks,
      lastUpdated: lastUpdated,
      deleted: (deleted == 'S') ? true : false,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    return CustomerTableCompanion(
      id: Value(id),
      customerName: Value(customerName),
      nif: Value(nif),
      fiscalName: Value(fiscalName),
      fiscalAddress1: Value(fiscalAddress1),
      fiscalAddress2: Value(fiscalAddress2),
      fiscalZipCode: Value(fiscalZipCode),
      fiscalCity: Value(fiscalCity),
      fiscalState: Value(fiscalState),
      fiscalCountryId: Value(fiscalCountryId),
      fiscalLatitude: Value(fiscalLatitude),
      fiscalLongitude: Value(fiscalLongitude),
      companyId: Value(companyId),
      especialVAT: Value(especialVAT),
      currentYearSales: Value(currentYearSales),
      salesTwoYearsAgo: Value(salesTwoYearsAgo),
      previousYearMargin: Value(salesTwoYearsAgo),
      marginTwoYearsAgo: Value(marginTwoYearsAgo),
      paymentPercent: Value(paymentPercent),
      warrantyPercent: Value(warrantyPercent),
      shoppingCenterName: Value(shoppingCenterName),
      urlWebsite: Value(urlWebsite),
      divisaId: Value(divisaId),
      rateId: Value(rateId),
      rateDescription: Value(rateDescription),
      generalDiscount: Value(generalDiscount),
      generalDiscountDescription: Value(generalDiscountDescription),
      priceCalculationType: Value(priceCalculationType),
      collectionTermId: Value(collectionTermId),
      collectionMethodId: Value(collectionMethodId),
      promptPaymentDiscount: Value(promptPaymentDiscount),
      internalGrantedRisk: Value(internalGrantedRisk),
      internalGrantedRiskDate: Value(internalGrantedRiskDate),
      cofaceGrantedRisk: Value(cofaceGrantedRisk),
      cofaceGrantedRiskDate: Value(cofaceGrantedRiskDate),
      riskGranted: Value(riskGranted),
      riskPendingCollectionDue: Value(riskPendingCollectionDue),
      riskPendingColleectionNotDue: Value(riskPendingColleectionNotDue),
      riskPendingToServe: Value(riskPendingToServe),
      riskPendingBilling: Value(riskPendingBilling),
      internalRemarks: Value(internalRemarks),
      lastUpdated: Value(lastUpdated),
      deleted: Value(deleted),
    ).toColumns(nullToAbsent);
  }
}

@UseRowClass(CustomerDTO)
class CustomerTable extends Table {
  @override
  String get tableName => 'CLIENTES';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('CLIENTE_ID')();
  TextColumn get customerName => text().nullable().named('NOMBRE')();
  TextColumn get nif => text().nullable().named('NIF')();
  TextColumn get fiscalName => text().nullable().named('NOMBRE_FISCAL')();
  TextColumn get fiscalAddress1 =>
      text().nullable().named('DIRECCION_FISCAL1')();
  TextColumn get fiscalAddress2 =>
      text().nullable().named('DIRECCION_FISCAL2')();
  TextColumn get fiscalZipCode =>
      text().nullable().named('CODIGO_POSTAL_FISCAL')();
  TextColumn get fiscalCity => text().nullable().named('POBLACION_FISCAL')();
  TextColumn get fiscalState => text().nullable().named('PROVINCIA_FISCAL')();
  TextColumn get fiscalCountryId =>
      text().references(CountryTable, #id).nullable().named('PAIS_ID_FISCAL')();
  RealColumn get fiscalLatitude => real().nullable().named('LATITUD_FISCAL')();
  RealColumn get fiscalLongitude =>
      real().nullable().named('LONGITUD_FISCAL')();
  TextColumn get companyId => text().named('EMPRESA_ID')();
  RealColumn get especialVAT => real().nullable().named('IVA_ESPECIAL')();
  TextColumn get exemptVat => text().nullable().named('IVA_EXENTO')();
  RealColumn get currentYearSales =>
      real().nullable().named('VENTAS_ANYO_ACTUAL')();
  RealColumn get previousYearSales =>
      real().nullable().named('VENTAS_ANYO_ANTERIOR')();
  RealColumn get salesTwoYearsAgo =>
      real().nullable().named('VENTAS_HACE_DOS_ANYOS')();
  RealColumn get currentYearMargin =>
      real().nullable().named('MARGEN_ANYO_ACTUAL')();
  RealColumn get previousYearMargin =>
      real().nullable().named('MARGEN_ANYO_ANTERIOR')();
  RealColumn get marginTwoYearsAgo =>
      real().nullable().named('MARGEN_HACE_DOS_ANYOS')();
  RealColumn get paymentPercent =>
      real().nullable().named('PORCENTAJE_ABONOS')();
  RealColumn get warrantyPercent =>
      real().nullable().named('PORCENTAJE_GARANTIAS')();
  TextColumn get shoppingCenterName =>
      text().nullable().named('CENTRAL_COMPRAS_NOMBRE')();
  TextColumn get urlWebsite => text().nullable().named('URL_WEB')();
  TextColumn get divisaId =>
      text().references(DivisaTable, #id).nullable().named('DIVISA_ID')();
  TextColumn get rateId => text().nullable().named('TARIFA_ID')();
  TextColumn get rateDescription =>
      text().nullable().named('TARIFA_DESCRIPCION')();
  TextColumn get generalDiscount =>
      text().nullable().named('DESCUENTO_GENERAL_ID')();
  TextColumn get generalDiscountDescription =>
      text().nullable().named('DESCUENTO_GENERAL_DESCRIPCION')();
  TextColumn get priceCalculationType => text().named('TIPO_CALCULO_PRECIO')();
  TextColumn get collectionTermId => text()
      .references(CollectionTermTable, #id)
      .nullable()
      .named('PLAZO_COBRO_ID')();
  TextColumn get collectionMethodId => text()
      .references(CollectionMethodTable, #id)
      .nullable()
      .named('METODO_COBRO_ID')();
  RealColumn get promptPaymentDiscount =>
      real().named('DESCUENTO_PRONTO_PAGO')();
  RealColumn get internalGrantedRisk =>
      real().named('RIESGO_CONCEDIDO_INTERNO')();
  DateTimeColumn get internalGrantedRiskDate =>
      dateTime().nullable().named('RIESGO_CONCEDIDO_INTERNO_FECHA')();
  RealColumn get cofaceGrantedRisk => real().named('RIESGO_CONCEDIDO_COFACE')();
  DateTimeColumn get cofaceGrantedRiskDate =>
      dateTime().nullable().named('RIESGO_CONCEDIDO_COFACE_FECHA')();
  RealColumn get riskGranted => real().nullable().named('RIESGO_CONCEDIDO')();
  RealColumn get riskPendingCollectionDue =>
      real().nullable().named('RIESGO_PDTE_COBRO_VENCIDO_CLIENTE')();
  RealColumn get riskPendingColleectionNotDue =>
      real().nullable().named('RIESGO_PDTE_COBRO_NO_VENCIDO_CLIENTE')();
  RealColumn get riskPendingToServe =>
      real().nullable().named('RIESGO_PDTE_SERVIR_CLIENTE')();
  RealColumn get riskPendingBilling =>
      real().nullable().named('RIESGO_PDTE_FACTURAR_CLIENTE')();
  TextColumn get internalRemarks =>
      text().nullable().named('OBSERVACIONES_INTERNAS')();
  DateTimeColumn get lastUpdated => dateTime().named('LAST_UPDATED')();
  TextColumn get deleted =>
      text().withDefault(const Constant('N')).named('DELETED')();
}
