import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/country_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/divisa_dto.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/subfamily_dto.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_component.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_net_group_price.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_rate_price.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_spare.dart';
import 'package:jbm_nikel_mobile/src/features/articles/domain/article_substitute.dart';
import 'package:jbm_nikel_mobile/src/features/customer/domain/customer_pending_payment.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_net_group_dto.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/domain/sales_order_line.dart';
import 'package:jbm_nikel_mobile/src/features/stats/domain/stats_customer_user_sales.dart';
import 'package:jbm_nikel_mobile/src/features/stats/domain/stats_last_price.dart';
import 'package:jbm_nikel_mobile/src/features/stats/infrastructure/stats_customer_user_sales_dto.dart';
import 'package:jbm_nikel_mobile/src/features/visits/domain/visit.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart';

import '../../features/articles/domain/article.dart';
import '../../features/articles/infrastructure/article_company_vat_dto.dart';
import '../../features/articles/infrastructure/article_component_dto.dart';
import '../../features/articles/infrastructure/article_dto.dart';
import '../../features/articles/infrastructure/article_net_group_price_dto.dart';
import '../../features/articles/infrastructure/article_rate_price_dto.dart';
import '../../features/articles/infrastructure/article_spare_dto.dart';
import '../../features/articles/infrastructure/article_substitute_dto.dart';
import '../../features/customer/domain/customer.dart';
import '../../features/customer/domain/customer_address.dart';
import '../../features/customer/domain/customer_contact.dart';
import '../../features/customer/domain/customer_discount.dart';
import '../../features/customer/domain/customer_net_group.dart';
import '../../features/customer/domain/customer_net_price.dart';
import '../../features/customer/domain/customer_rappel.dart';
import '../../features/customer/domain/customer_sales_month.dart';
import '../../features/customer/domain/top_article.dart';
import '../../features/customer/infrastructure/collection_method_dto.dart';
import '../../features/customer/infrastructure/collection_term_dto.dart';
import '../../features/customer/infrastructure/customer_address_dto.dart';
import '../../features/customer/infrastructure/customer_contact_dto.dart';
import '../../features/customer/infrastructure/customer_discount_dto.dart';
import '../../features/customer/infrastructure/customer_dto.dart';
import '../../features/customer/infrastructure/customer_net_price_dto.dart';
import '../../features/customer/infrastructure/customer_pending_payment_dto.dart';
import '../../features/customer/infrastructure/customer_rappel_dto.dart';
import '../../features/customer/infrastructure/top_article_dto.dart';
import '../../features/sales_order/domain/sales_order.dart';
import '../../features/sales_order/infrastructure/sales_order_dto.dart';
import '../../features/customer/infrastructure/customer_user_dto.dart';
import '../../features/sales_order/infrastructure/sales_order_line_dto.dart';
import '../../features/sales_order/infrastructure/sales_order_status_dto.dart';
import '../../features/stats/infrastructure/stats_last_price_dto.dart';
import '../../features/visits/infrastructure/visit_dto.dart';
import '../exceptions/app_exception.dart';
import 'family_dto.dart';

// part 'database.drift.dart';
part 'database.g.dart';

class LastSyncDateTable extends Table {
  @override
  String get tableName => 'LAST_SYNC_DATE';

  @override
  Set<Column> get primaryKey => {id};

  TextColumn get id => text().named('ID')();
  TextColumn get lastSyncDivisa =>
      text().nullable().named('LAST_SYNC_DIVISA')();
  TextColumn get lastSyncCountry =>
      text().nullable().named('LAST_SYNC_COUNTRY')();
  TextColumn get lastSyncCollectionMethod =>
      text().nullable().named('LAST_SYNC_COLLECTION_METHOD')();
  TextColumn get lastSyncCollectionTerm =>
      text().nullable().named('LAST_SYNC_COLLECTION_TERM')();
  TextColumn get lastSyncCustomer =>
      text().nullable().named('LAST_SYNC_CUSTOMER')();
  TextColumn get lastSyncCustomerUser =>
      text().nullable().named('LAST_SYNC_CUSTOMER_USER')();
  TextColumn get lastSyncCustomerContact =>
      text().nullable().named('LAST_SYNC_CUSTOMER_CONTACT')();
  TextColumn get lastSyncCustomerDiscount =>
      text().nullable().named('LAST_SYNC_CUSTOMER_DISCOUNT')();
  TextColumn get lastSyncCustomerAddress =>
      text().nullable().named('LAST_SYNC_CUSTOMER_ADDRESS')();
  TextColumn get lastSyncCustomerNetPrice =>
      text().nullable().named('LAST_SYNC_CUSTOMER_NET_PRICE')();
  TextColumn get lastSyncCustomerNetGroup =>
      text().nullable().named('LAST_SYNC_CUSTOMER_NET_GROUP')();
  TextColumn get lastSyncCustomerPendingPayment =>
      text().nullable().named('LAST_SYNC_CUSTOMER_PENDING_PAYMENT')();
  TextColumn get lastSyncCustomerRappels =>
      text().nullable().named('LAST_SYNC_CUSTOMER_RAPPELS')();
  TextColumn get lastSyncTopArticles =>
      text().nullable().named('LAST_SYNC_TOP_ARTICLES')();
  TextColumn get lastSyncSalesOrder =>
      text().nullable().named('LAST_SYNC_SALES_ORDER')();
  TextColumn get lastSyncVisit => text().nullable().named('LAST_SYNC_VISIT')();
  TextColumn get lastSyncSalesOrderLine =>
      text().nullable().named('LAST_SYNC_SALES_ORDER_LINE')();
  TextColumn get lastSyncSalesOrderStatus =>
      text().nullable().named('LAST_SYNC_SALES_ORDER_STATUS')();
  TextColumn get lastSyncArticle =>
      text().nullable().named('LAST_SYNC_ARTICLE')();
  TextColumn get lastSyncFamily =>
      text().nullable().named('LAST_SYNC_FAMILY')();
  TextColumn get lastSyncSubfamily =>
      text().nullable().named('LAST_SYNC_SUBFAMILY')();
  TextColumn get lastSyncArticleNetGroup =>
      text().nullable().named('LAST_SYNC_ARTICLE_NET_GROUP')();
  TextColumn get lastSyncArticleRatePrice =>
      text().nullable().named('LAST_SYNC_ARTICLE_RATE_PRICE')();
  TextColumn get lastSyncArticleComponent =>
      text().nullable().named('LAST_SYNC_ARTICLE_COMPONENT')();
  TextColumn get lastSyncArticleSubstitute =>
      text().nullable().named('LAST_SYNC_ARTICLE_SUBSTITUTE')();
  TextColumn get lastSyncArticleSpare =>
      text().nullable().named('LAST_SYNC_ARTICLE_SPARE')();
  TextColumn get lastSyncArticleCompanyVat =>
      text().nullable().named('LAST_SYNC_ARTICLE_COMPANY_VAT')();
  TextColumn get lastSyncStatsCustomerUserSales =>
      text().nullable().named('LAST_SYNC_STATS_CUSTOMER_USER_SALES')();
  TextColumn get lastSyncStatsLastPrices =>
      text().nullable().named('LAST_SYNC_STATS_LAST_PRICES')();
}

@DriftDatabase(tables: [
  LastSyncDateTable,
  SalesOrderTable,
  SalesOrderStatusTable,
  SalesOrderLineTable,
  CustomerTable,
  CustomerUserTable,
  CustomerNetGroupTable,
  CustomerDiscountTable,
  CustomerContactTable,
  CustomerAddressTable,
  CustomerPendingPaymentTable,
  CustomerNetPriceTable,
  CustomerRappelTable,
  TopArticleTable,
  ArticleTable,
  ArticleComponentTable,
  ArticleCompanyVatTable,
  ArticleSpareTable,
  ArticleSubstituteTable,
  ArticleRatePriceTable,
  ArticleNetGroupPriceTable,
  StatsCustomerUserSalesTable,
  StatsLastPriceTable,
  FamilyTable,
  SubfamilyTable,
  VisitTable,
  CollectionMethodTable,
  CollectionTermTable,
  CountryTable,
  DivisaTable,
])
class AppDatabase extends _$AppDatabase {
  AppDatabase() : super(_openConnection());

  @override
  int get schemaVersion => 1;

  @override
  Future<void> close() async {
    await _openConnection().close();
    return await super.close();
  }

  Stream<List<SalesOrder>> getSalesOrderList({String? searchText}) {
    try {
      final query = (select(salesOrderTable));

      if (searchText != null) {
        query.where(
          (t) =>
              t.deleted.equals('N') &
              (t.salesOrderId.like(searchText) |
                  t.customerName.like(searchText) |
                  t.customerId.like(searchText) |
                  t.city.like(searchText) |
                  t.zipCode.like(searchText) |
                  t.state.like(searchText)),
        );
      } else {
        query.where((t) => t.deleted.equals('N'));
      }

      query.orderBy([
        (t) =>
            OrderingTerm(expression: t.salesOrderDate, mode: OrderingMode.desc)
      ]);

      return query.asyncMap((row) async {
        final countryDTO = await (select(countryTable)
              ..where((t) => t.id.equals(row.countryId ?? '')))
            .getSingleOrNull();
        final divisaDTO = await (select(divisaTable)
              ..where((t) => t.id.equals(row.divisaId)))
            .getSingle();
        final salesOrderStatusDTO = await (select(salesOrderStatusTable)
              ..where((t) => t.id.equals(row.salesOrderStatusId)))
            .getSingle();
        return row.toDomain(
            country: countryDTO?.toDomain(),
            divisa: divisaDTO.toDomain(),
            salesOrderStatus: salesOrderStatusDTO.toDomain());
      }).watch();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<SalesOrder> getSalesOrderById({required String salesOrderId}) {
    try {
      final query = (select(salesOrderTable)
        ..where((t) => t.salesOrderId.equals(salesOrderId)));

      return query.asyncMap((row) async {
        final countryDTO = await (select(countryTable)
              ..where((t) => t.id.equals(row.countryId ?? '')))
            .getSingleOrNull();
        final divisaDTO = await (select(divisaTable)
              ..where((t) => t.id.equals(row.divisaId)))
            .getSingle();
        final salesOrderStatusDTO = await (select(salesOrderStatusTable)
              ..where((t) => t.id.equals(row.salesOrderStatusId)))
            .getSingle();
        return row.toDomain(
            country: countryDTO?.toDomain(),
            divisa: divisaDTO.toDomain(),
            salesOrderStatus: salesOrderStatusDTO.toDomain());
      }).getSingle();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////

  Stream<List<Customer>> getCustomerList() {
    try {
      final query = (select(customerTable)
        ..where((t) => t.deleted.equals('N'))
        ..orderBy([
          (t) => OrderingTerm(expression: t.customerName),
          (t) => OrderingTerm(expression: t.id)
        ]));

      return query.asyncMap((row) async {
        final countryDTO = await (select(countryTable)
              ..where((t) => t.id.equals(row.fiscalCountryId ?? '')))
            .getSingleOrNull();
        final divisaDTO = await (select(divisaTable)
              ..where((t) => t.id.equals(row.divisaId ?? '')))
            .getSingleOrNull();
        final collectionMethodDTO = await (select(collectionMethodTable)
              ..where((t) => t.id.equals(row.collectionMethodId ?? '')))
            .getSingleOrNull();
        final collectionTermDTO = await (select(collectionTermTable)
              ..where((t) => t.id.equals(row.collectionTermId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          fiscalCountry: countryDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          collectionMethod: collectionMethodDTO?.toDomain(),
          collectionTerm: collectionTermDTO?.toDomain(),
        );
      }).watch();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Customer> getCustomerById({required String customerId}) {
    try {
      final query =
          (select(customerTable)..where((t) => t.id.equals(customerId)));

      return query.asyncMap((row) async {
        final countryDTO = await (select(countryTable)
              ..where((t) => t.id.equals(row.fiscalCountryId ?? '')))
            .getSingleOrNull();
        final divisaDTO = await (select(divisaTable)
              ..where((t) => t.id.equals(row.divisaId ?? '')))
            .getSingleOrNull();
        final collectionMethodDTO = await (select(collectionMethodTable)
              ..where((t) => t.id.equals(row.collectionMethodId ?? '')))
            .getSingleOrNull();
        final collectionTermDTO = await (select(collectionTermTable)
              ..where((t) => t.id.equals(row.collectionTermId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          fiscalCountry: countryDTO?.toDomain(),
          divisa: divisaDTO?.toDomain(),
          collectionMethod: collectionMethodDTO?.toDomain(),
          collectionTerm: collectionTermDTO?.toDomain(),
        );
      }).getSingle();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Stream<List<CustomerAddress>> getCustomerAddressById(
      {required String customerId}) {
    try {
      final query = (select(customerAddressTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.asyncMap((row) async {
        final countryDTO = await (select(countryTable)
              ..where((t) => t.id.equals(row.countryId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          country: countryDTO?.toDomain(),
        );
      }).watch();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerContact>> getCustomerContactById(
      {required String customerId}) async {
    try {
      final query = (select(customerContactTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerDiscount>> getCustomerDiscountById(
      {required String customerId}) async {
    try {
      final query = (select(customerDiscountTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.asyncMap((row) async {
        final familyDTO = await (select(familyTable)
              ..where((t) => t.id.equals(row.familyId)))
            .getSingle();
        final subfamilyDTO = await (select(subfamilyTable)
              ..where((t) => t.id.equals(row.subfamilyId)))
            .getSingle();
        return row.toDomain(
            family: familyDTO.toDomain(), subfamily: subfamilyDTO.toDomain());
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerNetPrice>> getCustomerNetPriceById(
      {required String customerId}) async {
    try {
      final query = (select(customerNetPriceTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerNetGroup>> getCustomerNetGroupById(
      {required String customerId}) async {
    try {
      final query = (select(customerNetGroupTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerRappel>> getCustomerRappelById(
      {required String customerId}) async {
    try {
      final query = (select(customerRappelTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<CustomerPendingPayment>> getCustomerPendingPaymentsById(
      {required String customerId}) async {
    try {
      final query = (select(customerPendingPaymentTable)
        ..where((t) => t.customerId.equals(customerId)));

      return query.asyncMap((row) async {
        final collectionMethodDTO = await (select(collectionMethodTable)
              ..where((t) => t.id.equals(row.collectionMethodId ?? '')))
            .getSingleOrNull();

        return row.toDomain(collectionMethod: collectionMethodDTO?.toDomain());
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  // Future<List<StatsCustomerUserSales>> getArticleSalesList(
  //     {required String customerId}) {
  //   try {
  //     final query = (select(topArticleTable));

  //     return query.asyncMap((row) async {
  //       final article = await getArticleById(articleId: row.articleId);
  //       return row.toDomain(article: article);
  //     }).get();
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }

  // Future<List<CustomerSalesMonth>> getSalesMonthList(
  //     {required String customerId}) {
  //   try {
  //     final query = (select(statsCustomerUserSalesTable));

  //     return query.asyncMap((row) async {
  //       final article = await getArticleById(articleId: row.articleId);
  //       return row.toDomain(article: article);
  //     }).get();
  //   } catch (e) {
  //     print(e);
  //     rethrow;
  //   }
  // }

  Future<List<TopArticle>> getTopArticleList() {
    try {
      final query = (select(topArticleTable));

      return query.asyncMap((row) async {
        final article = await getArticleById(articleId: row.articleId);
        return row.toDomain(article: article);
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  //////////////////////////////////////////////////////////////////////////////////////////////

  Stream<List<Article>> getArticleList() {
    try {
      final query = (select(articleTable)
        ..where(
          (t) => t.deleted.equals('N'),
        )
        ..orderBy([(t) => OrderingTerm(expression: t.id)]));

      return query.asyncMap((row) async {
        final familyDTO = await (select(familyTable)
              ..where((t) => t.id.equals(row.familyId ?? '')))
            .getSingleOrNull();
        final subfamilyDTO = await (select(subfamilyTable)
              ..where((t) => t.id.equals(row.subfamilyId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          family: familyDTO?.toDomain(),
          subfamily: subfamilyDTO?.toDomain(),
        );
      }).watch();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Article> getArticleById({required String articleId}) {
    try {
      final query =
          (select(articleTable)..where((t) => t.id.equals(articleId)));

      return query.asyncMap((row) async {
        final familyDTO = await (select(familyTable)
              ..where((t) => t.id.equals(row.familyId ?? '')))
            .getSingleOrNull();
        final subfamilyDTO = await (select(subfamilyTable)
              ..where((t) => t.id.equals(row.subfamilyId ?? '')))
            .getSingleOrNull();
        return row.toDomain(
          family: familyDTO?.toDomain(),
          subfamily: subfamilyDTO?.toDomain(),
        );
      }).getSingle();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleComponent>> getArticleComponentById(
      {required String articleId}) async {
    try {
      final query = (select(articleComponentTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.asyncMap((row) async {
        final article = await getArticleById(articleId: row.articleId);
        final articleComponent =
            await getArticleById(articleId: row.articleComponentId);
        return row.toDomain(
            article: article, articleComponent: articleComponent);
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleRatePrice>> getArticleRatePriceById(
      {required String articleId}) async {
    try {
      final query = (select(articleRatePriceTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleNetGroupPrice>> getArticleNetGroupPriceById(
      {required String articleId}) async {
    try {
      final query = (select(articleNetGroupPriceTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleSpare>> getArticleSpareById(
      {required String articleId}) async {
    try {
      final query = (select(articleSpareTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleSubstitute>> getArticleSubstituteById(
      {required String articleId}) async {
    try {
      final query = (select(articleSubstituteTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.asyncMap((row) async {
        final articleSubstitute =
            await getArticleById(articleId: row.articleSubstituteId);
        return row.toDomain(articleSubstitute: articleSubstitute);
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<ArticleComponent>> getArticleComponentIncludedById(
      {required String articleId}) async {
    try {
      final query = (select(articleComponentTable)
        ..where((t) => t.articleComponentId.equals(articleId)));

      return query.asyncMap((row) async {
        final article = await getArticleById(articleId: row.articleId);
        final articleComponent =
            await getArticleById(articleId: row.articleComponentId);
        return row.toDomain(
            article: article, articleComponent: articleComponent);
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<SalesOrderLine>> getArticleSalesOrderById(
      {required String articleId}) async {
    try {
      final query = (select(salesOrderLineTable)
        ..where((t) => t.articleId.equals(articleId)));

      return query.map((row) {
        return row.toDomain();
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<List<StatsLastPrice>> getArticleLastPriceById(
      {required String articleId}) async {
    try {
      final query = (select(statsLastPriceTable)
        ..where((t) => t.articleId.equals(articleId))
        ..orderBy(
          [(t) => OrderingTerm(expression: t.date)],
        ));

      return query.asyncMap((row) async {
        final article = await getArticleById(articleId: row.articleId);
        return row.toDomain(article: article);
      }).get();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  /////////////////////////////////////////////////////////////////////////////////////

  Stream<List<Visit>> getVisitList() {
    try {
      final query = (select(visitTable)
        ..where((t) => t.deleted.equals('N'))
        ..orderBy([
          (t) => OrderingTerm(expression: t.date),
        ]));

      return query.map((row) => row.toDomain()).watch();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<Visit> getVisitById({required String visitId}) {
    try {
      final query = (select(visitTable)..where((t) => t.id.equals(visitId)));

      return query.asyncMap((row) async {
        return row.toDomain();
      }).getSingle();
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  ////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

  Future<int> upsertSalesOrder({required SalesOrderDTO salesOrderDto}) async {
    try {
      return await into(salesOrderTable).insertOnConflictUpdate(salesOrderDto);
    } catch (e) {
      throw AppException.syncFailure(
          salesOrderTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertSalesOrderLine(
      {required SalesOrderLineDTO salesOrderLineDto}) async {
    try {
      return await into(salesOrderLineTable)
          .insertOnConflictUpdate(salesOrderLineDto);
    } catch (e) {
      throw AppException.syncFailure(
          salesOrderLineTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertSalesOrderStatus(
      {required SalesOrderStatusDTO salesOrderStatusDto}) async {
    try {
      return await into(salesOrderStatusTable)
          .insertOnConflictUpdate(salesOrderStatusDto);
    } catch (e) {
      throw AppException.syncFailure(
          salesOrderStatusTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomer({required CustomerDTO customerDto}) async {
    try {
      return await into(customerTable).insertOnConflictUpdate(customerDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerUser(
      {required CustomerUserDTO customerUserDto}) async {
    try {
      return await into(customerUserTable)
          .insertOnConflictUpdate(customerUserDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerUserTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerAddress(
      {required CustomerAddressDTO customerAddressDto}) async {
    try {
      return await into(customerAddressTable)
          .insertOnConflictUpdate(customerAddressDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerAddressTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerContact(
      {required CustomerContactDTO customerContactDto}) async {
    try {
      return await into(customerContactTable)
          .insertOnConflictUpdate(customerContactDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerContactTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerDiscount(
      {required CustomerDiscountDTO customerDiscountDto}) async {
    try {
      return await into(customerDiscountTable)
          .insertOnConflictUpdate(customerDiscountDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerDiscountTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerNetGroup(
      {required CustomerNetGroupDTO customerNetGroupDto}) async {
    try {
      return await into(customerNetGroupTable)
          .insertOnConflictUpdate(customerNetGroupDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerNetGroupTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerNetPrice(
      {required CustomerNetPriceDTO customerNetPriceDto}) async {
    try {
      return await into(customerNetPriceTable)
          .insertOnConflictUpdate(customerNetPriceDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerNetPriceTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerPendingPayment(
      {required CustomerPendingPaymentDTO customerPendingPaymentDto}) async {
    try {
      return await into(customerPendingPaymentTable)
          .insertOnConflictUpdate(customerPendingPaymentDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerPendingPaymentTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCustomerRappel(
      {required CustomerRappelDTO customerRappelDto}) async {
    try {
      return await into(customerRappelTable)
          .insertOnConflictUpdate(customerRappelDto);
    } catch (e) {
      throw AppException.syncFailure(
          customerRappelTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertTopArticle({required TopArticleDTO topArticleDto}) async {
    try {
      return await into(topArticleTable).insertOnConflictUpdate(topArticleDto);
    } catch (e) {
      throw AppException.syncFailure(
          topArticleTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticle({required ArticleDTO articleDto}) async {
    try {
      return await into(articleTable).insertOnConflictUpdate(articleDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleCompanyVAT(
      {required ArticleCompanyVATDTO articleCompanyVatDto}) async {
    try {
      return await into(articleCompanyVatTable)
          .insertOnConflictUpdate(articleCompanyVatDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleCompanyVatTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleComponent(
      {required ArticleComponentDTO articleComponentDto}) async {
    try {
      return await into(articleComponentTable)
          .insertOnConflictUpdate(articleComponentDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleComponentTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleNetGroupPrice(
      {required ArticleNetGroupPriceDTO articleNetGroupPriceDto}) async {
    try {
      return await into(articleNetGroupPriceTable)
          .insertOnConflictUpdate(articleNetGroupPriceDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleNetGroupPriceTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleRatePrice(
      {required ArticleRatePriceDTO articleRatePriceDto}) async {
    try {
      return await into(articleRatePriceTable)
          .insertOnConflictUpdate(articleRatePriceDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleRatePriceTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleSpare(
      {required ArticleSpareDTO articleSpareDto}) async {
    try {
      return await into(articleSpareTable)
          .insertOnConflictUpdate(articleSpareDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleSpareTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertArticleSubstitute(
      {required ArticleSubstituteDTO articleSubstituteDto}) async {
    try {
      return await into(articleSubstituteTable)
          .insertOnConflictUpdate(articleSubstituteDto);
    } catch (e) {
      throw AppException.syncFailure(
          articleSubstituteTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertStatsCustomerUserSales(
      {required StatsCustomerUserSalesDTO statsCustomerUserSalesDto}) async {
    try {
      return await into(statsCustomerUserSalesTable)
          .insertOnConflictUpdate(statsCustomerUserSalesDto);
    } catch (e) {
      throw AppException.syncFailure(
          statsCustomerUserSalesTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertStatsLastPrice(
      {required StatsLastPriceDTO statsLastPriceDto}) async {
    try {
      return await into(statsLastPriceTable)
          .insertOnConflictUpdate(statsLastPriceDto);
    } catch (e) {
      throw AppException.syncFailure(
          statsLastPriceTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertVisit({required VisitDTO visitDto}) async {
    try {
      return await into(visitTable).insertOnConflictUpdate(visitDto);
    } catch (e) {
      throw AppException.syncFailure(visitTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCountry({required CountryDTO countryDto}) async {
    try {
      return await into(countryTable).insertOnConflictUpdate(countryDto);
    } catch (e) {
      throw AppException.syncFailure(
          countryTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertDivisa({required DivisaDTO divisaDto}) async {
    try {
      return await into(divisaTable).insertOnConflictUpdate(divisaDto);
    } catch (e) {
      throw AppException.syncFailure(divisaTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCollectionTerm(
      {required CollectionTermDTO collectionTermDto}) async {
    try {
      return await into(collectionTermTable)
          .insertOnConflictUpdate(collectionTermDto);
    } catch (e) {
      throw AppException.syncFailure(
          collectionTermTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertCollectionMethod(
      {required CollectionMethodDTO collectionMethodDto}) async {
    try {
      return await into(collectionMethodTable)
          .insertOnConflictUpdate(collectionMethodDto);
    } catch (e) {
      throw AppException.syncFailure(
          collectionMethodTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertFamily({required FamilyDTO familyDto}) async {
    try {
      return await into(familyTable).insertOnConflictUpdate(familyDto);
    } catch (e) {
      throw AppException.syncFailure(familyTable.actualTableName, e.toString());
    }
  }

  Future<int> upsertSubfamily({required SubfamilyDTO subfamilyDto}) async {
    try {
      return await into(subfamilyTable).insertOnConflictUpdate(subfamilyDto);
    } catch (e) {
      throw AppException.syncFailure(
          subfamilyTable.actualTableName, e.toString());
    }
  }

  //---------------------------------------------------------------------------------------------------------------------------

  Future<String?> getLastSyncSalesOrderDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncSalesOrder;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncSalesOrderLineDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncSalesOrderLine;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncSalesOrderStatusDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncSalesOrderStatus;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomer;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerUserDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerUser;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerContactDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerContact;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerAddressDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerAddress;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerDiscountDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerDiscount;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerNetGroupDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerNetGroup;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerNetPriceDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerNetPrice;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerPendingPaymentDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerPendingPayment;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCustomerRappelsDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCustomerRappels;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncTopArticlesDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncTopArticles;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticle;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleCompanyVatDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleCompanyVat;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleComponentDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleComponent;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleNetGroupPriceDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleNetGroup;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleRatePriceDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleRatePrice;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleSpareDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleSpare;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncArticleSubstituteDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncArticleSubstitute;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncStatsCustomerUserSalesDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncStatsCustomerUserSales;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncStatsLastPriceDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncStatsLastPrices;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncVisitDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncVisit;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCountryDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCountry;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncDivisaDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncDivisa;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCollectionTermDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCollectionTerm;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncCollectionMethodDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncCollectionMethod;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncFamilyDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncFamily;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<String?> getLastSyncSubfamilyDate() async {
    try {
      return (await (select(lastSyncDateTable)..limit(1)).getSingleOrNull())
          ?.lastSyncSubfamily;
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

//---------------------------------------------------------------------------------------------------------------------------

  Future<int> addInitialSyncDate(
      {required String initialSyncDateString}) async {
    try {
      final result = await into(lastSyncDateTable).insert(
        LastSyncDateTableCompanion(
          id: const Value('1'),
          lastSyncCustomer: Value(initialSyncDateString),
          lastSyncCustomerAddress: Value(initialSyncDateString),
          lastSyncCustomerDiscount: Value(initialSyncDateString),
          lastSyncCustomerContact: Value(initialSyncDateString),
          lastSyncCustomerNetPrice: Value(initialSyncDateString),
          lastSyncCustomerNetGroup: Value(initialSyncDateString),
          lastSyncCustomerPendingPayment: Value(initialSyncDateString),
          lastSyncCustomerRappels: Value(initialSyncDateString),
          lastSyncCustomerUser: Value(initialSyncDateString),
          lastSyncSalesOrder: Value(initialSyncDateString),
          lastSyncSalesOrderLine: Value(initialSyncDateString),
          lastSyncSalesOrderStatus: Value(initialSyncDateString),
          lastSyncCollectionMethod: Value(initialSyncDateString),
          lastSyncCollectionTerm: Value(initialSyncDateString),
          lastSyncCountry: Value(initialSyncDateString),
          lastSyncDivisa: Value(initialSyncDateString),
          lastSyncFamily: Value(initialSyncDateString),
          lastSyncSubfamily: Value(initialSyncDateString),
          lastSyncVisit: Value(initialSyncDateString),
          lastSyncArticle: Value(initialSyncDateString),
          lastSyncArticleNetGroup: Value(initialSyncDateString),
          lastSyncArticleRatePrice: Value(initialSyncDateString),
          lastSyncArticleComponent: Value(initialSyncDateString),
          lastSyncArticleSubstitute: Value(initialSyncDateString),
          lastSyncArticleSpare: Value(initialSyncDateString),
          lastSyncArticleCompanyVat: Value(initialSyncDateString),
          lastSyncStatsCustomerUserSales: Value(initialSyncDateString),
          lastSyncStatsLastPrices: Value(initialSyncDateString),
          lastSyncTopArticles: Value(initialSyncDateString),
        ),
      );
      return result;
    } catch (e) {
      throw AppException.syncFailure('LAST_SYNC_DATE', e.toString());
    }
  }

  Future<int> updateLastSyncTable(
      {required LastSyncDateTableCompanion lastSyncDateValue}) async {
    try {
      return await (update(lastSyncDateTable)..where((t) => t.id.equals('1')))
          .write(lastSyncDateValue);
    } catch (e) {
      throw AppException.syncFailure('LAST_SYNC_DATE', e.toString());
    }
  }
}

LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();

    final file = File(join(dbFolder.path, 'jbm.db'));
    return NativeDatabase(file);
  });
}
