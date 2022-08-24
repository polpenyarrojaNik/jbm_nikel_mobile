import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:jbm_nikel_mobile/src/core/domain/family.dart';

import '../../../core/domain/subfamily.dart';

part 'article.freezed.dart';

@freezed
class Article with _$Article {
  const Article._();
  const factory Article(
      {required String id,
      required String description,
      Family? family,
      Subfamily? subfamily,
      required double minimumSales,
      required double multipleSales,
      required double subboxUnits,
      required double boxUnits,
      required double paletUnits,
      required String isActiveWeb,
      required String isActiveApp,
      required String inCatalogue,
      required String discontinued,
      String? cataloguePage,
      String? cataloguePage2,
      required double weightKg,
      required double largeCm,
      required double widthCm,
      required double tallCm,
      String? summary,
      double? availableStock,
      double? currentSales,
      double? previousSales,
      double? purchasesDeliveryQuantity1,
      double? purchasesDeliveryQuantity2,
      double? purchasesDeliveryQuantity3,
      double? purchasesDeliveryQuantityMore3,
      DateTime? purchasesDeliveryDate1,
      DateTime? purchasesDeliveryDate2,
      DateTime? purchasesDeliveryDate3,
      String? purchasesDeliveryStatus1,
      String? purchasesDeliveryStatus2,
      String? purchasesDeliveryStatus3,
      String? principalImage,
      required DateTime lastUpdated,
      required bool deleted}) = _Article;
}
