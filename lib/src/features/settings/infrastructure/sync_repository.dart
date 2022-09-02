import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/exceptions/app_exception.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/dio_extension.dart';
import 'package:jbm_nikel_mobile/src/features/sales_order/infrastructure/sales_order_dto.dart';

import '../../../core/infrastructure/country_dto.dart';
import '../../../core/infrastructure/divisa_dto.dart';
import '../../../core/infrastructure/family_dto.dart';
import '../../../core/infrastructure/log.dart';
import '../../../core/infrastructure/remote_response.dart';
import '../../../core/infrastructure/subfamily_dto.dart';
import '../../articles/infrastructure/article_company_vat_dto.dart';
import '../../articles/infrastructure/article_component_dto.dart';
import '../../articles/infrastructure/article_dto.dart';
import '../../articles/infrastructure/article_net_group_price_dto.dart';
import '../../articles/infrastructure/article_rate_price_dto.dart';
import '../../articles/infrastructure/article_spare_dto.dart';
import '../../articles/infrastructure/article_substitute_dto.dart';
import '../../auth/infrastructure/auth_repository.dart';
import '../../customer/infrastructure/collection_method_dto.dart';
import '../../customer/infrastructure/collection_term_dto.dart';
import '../../customer/infrastructure/customer_address_dto.dart';
import '../../customer/infrastructure/customer_contact_dto.dart';
import '../../customer/infrastructure/customer_discount_dto.dart';
import '../../customer/infrastructure/customer_dto.dart';
import '../../customer/infrastructure/customer_net_group_dto.dart';
import '../../customer/infrastructure/customer_net_price_dto.dart';
import '../../customer/infrastructure/customer_pending_payment_dto.dart';
import '../../customer/infrastructure/customer_rappel_dto.dart';
import '../../customer/infrastructure/customer_user_dto.dart';
import '../../customer/infrastructure/top_article_dto.dart';
import '../../sales_order/infrastructure/sales_order_headers.dart';
import '../../sales_order/infrastructure/sales_order_line_dto.dart';
import '../../sales_order/infrastructure/sales_order_status_dto.dart';
import '../../stats/infrastructure/stats_customer_user_sales_dto.dart';
import '../../stats/infrastructure/stats_last_price_dto.dart';
import '../../visits/infrastructure/visit_dto.dart';

final syncRepositoryProvider = Provider.autoDispose<SyncRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

class SyncRepository {
  AppDatabase db;
  Dio dio;
  AuthRepository authRepository;

  SyncRepository(this.db, this.dio, this.authRepository);

  Future<void> syncAllSalesOrder() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncSalesOrderDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/pedidos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final salesOrderDTOList =
                data.map((e) => SalesOrderDTO.fromJson(e)).toList();
            for (var i = 0; i < salesOrderDTOList.length; i++) {
              await db.upsertSalesOrder(salesOrderDto: salesOrderDTOList[i]);
            }
            print('Pedidos Page: $page/$maxPage');
            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncSalesOrder: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllSalesOrderLines() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncSalesOrderLineDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/pedidos/detalle',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final salesOrderLineDTOList =
                data.map((e) => SalesOrderLineDTO.fromJson(e)).toList();
            for (var i = 0; i < salesOrderLineDTOList.length; i++) {
              await db.upsertSalesOrderLine(
                  salesOrderLineDto: salesOrderLineDTOList[i]);
            }
            print('Lineas Page: $page/$maxPage');
            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncSalesOrderLine: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllSalesOrderStatus() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncSalesOrderStatusDate();
      final query = createSyncQuery(
        dbSysdateStr: dbSysdateStr,
        lastSyncDate: lastSyncDate,
      );

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/pedidos/estados',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final salesOrderStatusDTOList =
              data.map((e) => SalesOrderStatusDTO.fromJson(e)).toList();
          for (var i = 0; i < salesOrderStatusDTOList.length; i++) {
            await db.upsertSalesOrderStatus(
                salesOrderStatusDto: salesOrderStatusDTOList[i]);
          }
          print('Sales order staus Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncSalesOrderStatus: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomer() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerDate();

      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerDTOList =
                data.map((e) => CustomerDTO.fromJson(e)).toList();
            for (var i = 0; i < customerDTOList.length; i++) {
              await db.upsertCustomer(customerDto: customerDTOList[i]);
            }
            print('Customers Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCustomer: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerUser() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerUserDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes-usuario',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerUserDTOList =
                data.map((e) => CustomerUserDTO.fromJson(e)).toList();
            for (var i = 0; i < customerUserDTOList.length; i++) {
              await db.upsertCustomerUser(
                  customerUserDto: customerUserDTOList[i]);
            }
            print('Customer User Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCustomerUser: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerAddress() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerAddressDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/direcciones',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerAddressDTOList =
                data.map((e) => CustomerAddressDTO.fromJson(e)).toList();
            for (var i = 0; i < customerAddressDTOList.length; i++) {
              await db.upsertCustomerAddress(
                  customerAddressDto: customerAddressDTOList[i]);
            }
            print('Addresses Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCustomerAddress: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerContact() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerContactDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/contactos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerContactDTOList =
                data.map((e) => CustomerContactDTO.fromJson(e)).toList();
            for (var i = 0; i < customerContactDTOList.length; i++) {
              await db.upsertCustomerContact(
                  customerContactDto: customerContactDTOList[i]);
            }
            print('Contacts Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCustomerContact: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerDiscount() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerDiscountDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/descuentos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerDiscountDTOList =
                data.map((e) => CustomerDiscountDTO.fromJson(e)).toList();
            for (var i = 0; i < customerDiscountDTOList.length; i++) {
              await db.upsertCustomerDiscount(
                  customerDiscountDto: customerDiscountDTOList[i]);
            }
            print('Discout Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncCustomerDiscount: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerNetGroup() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerNetGroupDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/grupos-netos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerNetGroupDTOList =
                data.map((e) => CustomerNetGroupDTO.fromJson(e)).toList();
            for (var i = 0; i < customerNetGroupDTOList.length; i++) {
              await db.upsertCustomerNetGroup(
                  customerNetGroupDto: customerNetGroupDTOList[i]);
            }
            print('Net Groups Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncCustomerNetGroup: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerNetPrice() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerNetPriceDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/precios-netos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerNetPriceDTOList =
                data.map((e) => CustomerNetPriceDTO.fromJson(e)).toList();
            for (var i = 0; i < customerNetPriceDTOList.length; i++) {
              await db.upsertCustomerNetPrice(
                  customerNetPriceDto: customerNetPriceDTOList[i]);
            }
            print('Net Prices Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncCustomerNetPrice: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerPendingPayment() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerPendingPaymentDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/pagos-pendientes',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerPendingPaymentDTOList =
                data.map((e) => CustomerPendingPaymentDTO.fromJson(e)).toList();
            for (var i = 0; i < customerPendingPaymentDTOList.length; i++) {
              await db.upsertCustomerPendingPayment(
                  customerPendingPaymentDto: customerPendingPaymentDTOList[i]);
            }
            print('Pendint Patyemnts Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncCustomerPendingPayment: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCustomerRappels() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCustomerRappelsDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/clientes/rappels',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final customerRappelsDTOList =
                data.map((e) => CustomerRappelDTO.fromJson(e)).toList();
            for (var i = 0; i < customerRappelsDTOList.length; i++) {
              await db.upsertCustomerRappel(
                  customerRappelDto: customerRappelsDTOList[i]);
            }
            print('Rappels Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCustomerRappels: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllTopArticles() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncTopArticlesDate();
      final query = createSyncQuery(
        dbSysdateStr: dbSysdateStr,
        lastSyncDate: lastSyncDate,
      );

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/clientes/articulos-top',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final topArticlesDTOList =
              data.map((e) => TopArticleDTO.fromJson(e)).toList();
          for (var i = 0; i < topArticlesDTOList.length; i++) {
            await db.upsertTopArticle(topArticleDto: topArticlesDTOList[i]);
          }
          print('Top Articles Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncTopArticles: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticle() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleDTOList =
                data.map((e) => ArticleDTO.fromJson(e)).toList();
            for (var i = 0; i < articleDTOList.length; i++) {
              await db.upsertArticle(articleDto: articleDTOList[i]);
            }
            print('Articles Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncArticle: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleCompanyVat() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleCompanyVatDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/empresa-iva',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleCompanyVatDTOList =
                data.map((e) => ArticleCompanyVATDTO.fromJson(e)).toList();
            for (var i = 0; i < articleCompanyVatDTOList.length; i++) {
              await db.upsertArticleCompanyVAT(
                  articleCompanyVatDto: articleCompanyVatDTOList[i]);
            }
            print('Article Company VAT Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncArticleCompanyVat: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleComponents() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleComponentDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/componentes',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleComponentDTOList =
                data.map((e) => ArticleComponentDTO.fromJson(e)).toList();
            for (var i = 0; i < articleComponentDTOList.length; i++) {
              await db.upsertArticleComponent(
                  articleComponentDto: articleComponentDTOList[i]);
            }
            print('Article Component Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncArticleCompanyVat: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleNetGroup() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleNetGroupPriceDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/grupos-netos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleNetGroupPriceDTOList =
                data.map((e) => ArticleNetGroupPriceDTO.fromJson(e)).toList();
            for (var i = 0; i < articleNetGroupPriceDTOList.length; i++) {
              await db.upsertArticleNetGroupPrice(
                  articleNetGroupPriceDto: articleNetGroupPriceDTOList[i]);
            }
            print('Articles Net Group Price Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncArticleNetGroup: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleRatePrice() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleRatePriceDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/precios-tarifa',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleRatePriceDTOList =
                data.map((e) => ArticleRatePriceDTO.fromJson(e)).toList();
            for (var i = 0; i < articleRatePriceDTOList.length; i++) {
              await db.upsertArticleRatePrice(
                  articleRatePriceDto: articleRatePriceDTOList[i]);
            }
            print('Articles Rate prices Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncArticleRatePrice: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleSpare() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleSpareDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/recambios',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleSpareDTOList =
                data.map((e) => ArticleSpareDTO.fromJson(e)).toList();
            for (var i = 0; i < articleSpareDTOList.length; i++) {
              await db.upsertArticleSpare(
                  articleSpareDto: articleSpareDTOList[i]);
            }
            print('Articles Spare Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncArticleSpare: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllArticleSubstitute() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncArticleSubstituteDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/articulos/sustitutivos',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final articleSubstituteDTOList =
                data.map((e) => ArticleSubstituteDTO.fromJson(e)).toList();
            for (var i = 0; i < articleSubstituteDTOList.length; i++) {
              await db.upsertArticleSubstitute(
                  articleSubstituteDto: articleSubstituteDTOList[i]);
            }
            print('Articles Substitute Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncArticleSubstitute: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllStatsCustomerUserSales() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncStatsCustomerUserSalesDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/estadisticas/ventas-cliente-usuario',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final statsCustomerUserSalesDTOList =
                data.map((e) => StatsCustomerUserSalesDTO.fromJson(e)).toList();
            for (var i = 0; i < statsCustomerUserSalesDTOList.length; i++) {
              await db.upsertStatsCustomerUserSales(
                  statsCustomerUserSalesDto: statsCustomerUserSalesDTOList[i]);
            }
            print('Stats Customer User Sales Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncStatsCustomerUserSales: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllStatsLastPrice() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncStatsLastPriceDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/estadisticas/ultimos-precios-cliente-articulo',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final statsLastPriceDTOList =
                data.map((e) => StatsLastPriceDTO.fromJson(e)).toList();
            for (var i = 0; i < statsLastPriceDTOList.length; i++) {
              await db.upsertStatsLastPrice(
                  statsLastPriceDto: statsLastPriceDTOList[i]);
            }
            print('Stats Last Prices Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncStatsLastPrices: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllVisit() async {
    int page = 1;
    bool isNextPageAvailable = true;
    int? totalRows;

    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncVisitDate();
      while (isNextPageAvailable) {
        final query = createSyncQueryPagination(
            page: page,
            dbSysdateStr: dbSysdateStr,
            lastSyncDate: lastSyncDate,
            totalRows: totalRows);

        final remotePageItems = await _remoteSyncData(
            path: '/api/v1/sync/visitas',
            query: query,
            provisionalToken: user.provisionalToken,
            jsonDataSelector: (json) => json['data'] as List<dynamic>);

        await remotePageItems.maybeWhen(
          orElse: () {},
          withNewData: (data, maxPage, totalRows) async {
            final visitDTOList = data.map((e) => VisitDTO.fromJson(e)).toList();
            for (var i = 0; i < visitDTOList.length; i++) {
              await db.upsertVisit(visitDto: visitDTOList[i]);
            }
            print('Visits Page: $page/$maxPage');

            isNextPageAvailable = page < maxPage;
            totalRows = totalRows;
            page += 1;
          },
        );
      }
      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncVisit: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCountry() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCountryDate();
      final query = createSyncQuery(
        dbSysdateStr: dbSysdateStr,
        lastSyncDate: lastSyncDate,
      );

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/paises',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final countryDTOList =
              data.map((e) => CountryDTO.fromJson(e)).toList();
          for (var i = 0; i < countryDTOList.length; i++) {
            await db.upsertCountry(countryDto: countryDTOList[i]);
          }

          print('Countries Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCountry: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllDivisa() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncDivisaDate();

      final query = createSyncQuery(
          dbSysdateStr: dbSysdateStr, lastSyncDate: lastSyncDate);

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/divisa',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final divisaDTOList = data.map((e) => DivisaDTO.fromJson(e)).toList();
          for (var i = 0; i < divisaDTOList.length; i++) {
            await db.upsertDivisa(divisaDto: divisaDTOList[i]);
          }

          print('Divisa Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncDivisa: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCollectionTerm() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCollectionTermDate();
      final query = createSyncQuery(
          dbSysdateStr: dbSysdateStr, lastSyncDate: lastSyncDate);

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/plazos-cobro',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final collectionTermDTOList =
              data.map((e) => CollectionTermDTO.fromJson(e)).toList();
          for (var i = 0; i < collectionTermDTOList.length; i++) {
            await db.upsertCollectionTerm(
                collectionTermDto: collectionTermDTOList[i]);
          }

          print('CollectionTerms Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncCollectionTerm: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllCollectionMethods() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncCollectionMethodDate();
      final query = createSyncQuery(
          dbSysdateStr: dbSysdateStr, lastSyncDate: lastSyncDate);

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/metodos-cobro',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final collectionMethodDTOList =
              data.map((e) => CollectionMethodDTO.fromJson(e)).toList();
          for (var i = 0; i < collectionMethodDTOList.length; i++) {
            await db.upsertCollectionMethod(
                collectionMethodDto: collectionMethodDTOList[i]);
          }

          print('Collection Methods Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'),
            lastSyncCollectionMethod: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllFamily() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncFamilyDate();

      final query = createSyncQuery(
          dbSysdateStr: dbSysdateStr, lastSyncDate: lastSyncDate);

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/articulos/familia',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final familyDTOList = data.map((e) => FamilyDTO.fromJson(e)).toList();
          for (var i = 0; i < familyDTOList.length; i++) {
            await db.upsertFamily(familyDto: familyDTOList[i]);
          }

          print('Families Page: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncFamily: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<void> syncAllSubfamily() async {
    try {
      final user = await authRepository.getSignedInUser();

      final dbSysdateStr = await _getRemoteDbSysDate(
          provisionalToken: user!.provisionalToken,
          jsonDataSelector: (json) => json['data'] as String);

      final lastSyncDate = await db.getLastSyncSubfamilyDate();

      final query = createSyncQuery(
          dbSysdateStr: dbSysdateStr, lastSyncDate: lastSyncDate);

      final remotePageItems = await _remoteSyncData(
          path: '/api/v1/sync/articulos/subfamilia',
          query: query,
          provisionalToken: user.provisionalToken,
          jsonDataSelector: (json) => json['data'] as List<dynamic>);

      await remotePageItems.maybeWhen(
        orElse: () {},
        withNewData: (data, maxPage, totalRows) async {
          final subfamilyDTOList =
              data.map((e) => SubfamilyDTO.fromJson(e)).toList();
          for (var i = 0; i < subfamilyDTOList.length; i++) {
            await db.upsertSubfamily(subfamilyDto: subfamilyDTOList[i]);
          }
          print('SubfamliesPage: 1/$maxPage');
        },
      );

      await db.updateLastSyncTable(
        lastSyncDateValue: LastSyncDateTableCompanion(
            id: const Value('1'), lastSyncSubfamily: Value(dbSysdateStr)),
      );
    } on AppException catch (e) {
      log.severe(e.details);
      rethrow;
    } catch (e) {
      rethrow;
    }
  }

  Future<RemoteResponse<List<Map<String, dynamic>>>> _remoteSyncData({
    required String path,
    Map<String, String>? query,
    required String provisionalToken,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await dio.getUri(
        Uri.http(
          dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
          path,
          query,
        ),
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data)
            .map((salesOrderMap) => salesOrderMap as Map<String, dynamic>)
            .toList();
        final headers = SalesOrderHeaders.parse(response);

        return RemoteResponse.withNewData(
          convertedDate,
          maxPage: headers.maxPage ?? 1,
          totalRows: headers.totalRows ?? 0,
        );
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.isNoConnectionError) {
        return const RemoteResponse.noConnection();
      } else if (e.response != null) {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400,
            (e.response?.data is Map)
                ? e.response?.data['error']['detail'] ??
                    e.response?.data['message']
                : e.response?.statusMessage);
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Future<String> _getRemoteDbSysDate({
    required String provisionalToken,
    required dynamic Function(dynamic json) jsonDataSelector,
  }) async {
    try {
      final response = await dio.getUri(
          Uri.http(
            dotenv.get('URL_NIKEL', fallback: 'localhost:3001'),
            '/api/v1/sync/db-datetime',
          ),
          options: Options(
            headers: {'authorization': 'Bearer $provisionalToken'},
          ));
      log.info(
          '${(this).runtimeType}.getDbSysdate - Received response: ${response.statusCode}');

      if (response.statusCode == 200) {
        final convertedDate = jsonDataSelector(response.data);

        return convertedDate;
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.toString());
      }
    } on DioError catch (e) {
      if (e.response != null) {
        throw AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          e.response?.statusMessage ?? '',
        );
      } else {
        rethrow;
      }
    } catch (e) {
      rethrow;
    }
  }

  Map<String, String> createSyncQueryPagination(
      {required int page,
      required String dbSysdateStr,
      required String? lastSyncDate,
      required int? totalRows}) {
    final query = {
      'page': '$page',
      'pageSize': '7000',
      'sysdate': dbSysdateStr
    };

    if (lastSyncDate != null) {
      query.addAll({'lastSyncDate': lastSyncDate});
    }

    if (totalRows != null) {
      query.addAll({'totalRows': '$totalRows'});
    }
    return query;
  }
}

Map<String, String> createSyncQuery({
  required String dbSysdateStr,
  required String? lastSyncDate,
}) {
  final query = {'sysdate': dbSysdateStr};

  if (lastSyncDate != null) {
    query.addAll({'lastSyncDate': lastSyncDate});
  }

  return query;
}
