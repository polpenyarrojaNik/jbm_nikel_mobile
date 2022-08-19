import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jbm_nikel_mobile/src/core/domain/country.dart';
import 'package:jbm_nikel_mobile/src/core/domain/divisa.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/collection_term.dart';

import 'collection_method.dart';

part 'customer.freezed.dart';

@freezed
class Customer with _$Customer {
  const Customer._();
  const factory Customer(
      {required String id,
      String? customerName,
      String? nif,
      String? fiscalName,
      String? fiscalAddress1,
      String? fiscalAddress2,
      String? fiscalZipCode,
      String? fiscalCity,
      String? fiscalState,
      Country? fiscalCountry,
      double? fiscalLatitude,
      double? fiscalLongitude,
      required String companyId,
      double? especialVAT,
      String? exemptVat,
      double? currentYearSales,
      double? previousYearSales,
      double? salesTwoYearsAgo,
      double? currentYearMargin,
      double? previousYearMargin,
      double? marginTwoYearsAgo,
      double? paymentPercent,
      double? warrantyPercent,
      String? shoppingCenterName,
      String? urlWebsite,
      Divisa? divisa,
      String? rateId,
      String? rateDescription,
      String? generalDiscount,
      String? generalDiscountDescription,
      required String priceCalculationType,
      CollectionTerm? collectionTerm,
      CollectionMethod? collectionMethod,
      required double promptPaymentDiscount,
      required double internalGrantedRisk,
      DateTime? internalGrantedRiskDate,
      required double cofaceGrantedRisk,
      DateTime? cofaceGrantedRiskDate,
      double? riskGranted,
      double? riskPendingCollectionDue,
      double? riskPendingColleectionNotDue,
      double? riskPendingToServe,
      double? riskPendingBilling,
      String? internalRemarks,
      required DateTime lastUpdated,
      required bool deleted}) = _Customer;
}
