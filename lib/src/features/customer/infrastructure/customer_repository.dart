import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/customer/infrastructure/customer_attachment_dto.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../auth/infrastructure/auth_repository.dart';
import '../domain/customer.dart';
import '../domain/customer_address.dart';
import '../domain/customer_attachment.dart';
import '../domain/customer_contact.dart';
import '../domain/customer_discount.dart';
import '../domain/customer_net_group.dart';
import '../domain/customer_net_price.dart';
import '../domain/customer_pending_payment.dart';
import '../domain/customer_rappel.dart';

final customerRepositoryProvider = Provider.autoDispose<CustomerRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final customerListStreamProvider =
    StreamProvider.autoDispose<List<Customer>>((ref) async* {
  final customerRepository = ref.watch(customerRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  yield* customerRepository.watchCustomerList(userId: user!.id);
});

final customerProvider =
    FutureProvider.autoDispose.family<Customer, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerById(customerId: customerId);
});

final customerAddressStreamProvider = StreamProvider.autoDispose
    .family<List<CustomerAddress>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerAddressById(customerId: customerId);
});

final customerContactProvider = FutureProvider.autoDispose
    .family<List<CustomerContact>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerContactById(customerId: customerId);
});

final customerDiscountProvider = FutureProvider.autoDispose
    .family<List<CustomerDiscount>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerDiscountById(customerId: customerId);
});

final customerNetGroupProvider = FutureProvider.autoDispose
    .family<List<CustomerNetGroup>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerNetGroupById(customerId: customerId);
});

final customerNetPriceProvider = FutureProvider.autoDispose
    .family<List<CustomerNetPrice>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerNetPriceById(customerId: customerId);
});

final customerPendingPaymentProvider = FutureProvider.autoDispose
    .family<List<CustomerPendingPayment>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerPendingPaymentById(
      customerId: customerId);
});

final customerRappelProvider = FutureProvider.autoDispose
    .family<List<CustomerRappel>, String>((ref, customerId) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getCustomerRappelById(customerId: customerId);
});

final customerAttachmentProvider = FutureProvider.autoDispose
    .family<List<CustomerAttachment>, String>((ref, customerId) async {
  final customerRepository = ref.watch(customerRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  return customerRepository.getCustomerAttachmentById(
      customerId: customerId, provisionalToken: user!.provisionalToken);
});

final customerLastSyncProvider = FutureProvider.autoDispose<DateTime>((ref) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getLastSyncCustomer();
});

final customerPendingPaymentsLastSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getLastSyncCustomerPendingPayments();
});

final customerTopArticleLastSyncProvider =
    FutureProvider.autoDispose<DateTime>((ref) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.getLastSyncTopArticles();
});

class CustomerRepository {
  AppDatabase db;
  Dio dio;

  CustomerRepository(this.db, this.dio);

  Stream<List<Customer>> watchCustomerList({required String userId}) {
    return db.getCustomerList(userId: userId);
  }

  Future<Customer> getCustomerById({required String customerId}) async {
    return db.getCustomerById(customerId: customerId);
  }

  Stream<List<CustomerAddress>> getCustomerAddressById(
      {required String customerId}) {
    return db.getCustomerAddressById(customerId: customerId);
  }

  Future<List<CustomerContact>> getCustomerContactById(
      {required String customerId}) {
    return db.getCustomerContactById(customerId: customerId);
  }

  Future<List<CustomerDiscount>> getCustomerDiscountById(
      {required String customerId}) {
    return db.getCustomerDiscountById(customerId: customerId);
  }

  Future<List<CustomerNetPrice>> getCustomerNetPriceById(
      {required String customerId}) {
    return db.getCustomerNetPriceById(customerId: customerId);
  }

  Future<List<CustomerNetGroup>> getCustomerNetGroupById(
      {required String customerId}) {
    return db.getCustomerNetGroupById(customerId: customerId);
  }

  Future<List<CustomerRappel>> getCustomerRappelById(
      {required String customerId}) {
    return db.getCustomerRappelById(customerId: customerId);
  }

  Future<List<CustomerPendingPayment>> getCustomerPendingPaymentById(
      {required String customerId}) {
    return db.getCustomerPendingPaymentsById(customerId: customerId);
  }

  Future<List<CustomerAttachment>> getCustomerAttachmentById(
      {required String customerId, required String provisionalToken}) async {
    final query = {'CLIENTE_ID': customerId};
    final customerAttahcmentDTOList = await _remoteGetCustomerAttachment(
        requestUri: Uri.http(
          dotenv.get('URL_HOME', fallback: 'localhost:3001'),
          'api/v1/online/cliente/adjuntos',
          query,
        ),
        jsonDataSelector: (json) => json['data'] as List<dynamic>,
        provisionalToken: provisionalToken);

    return customerAttahcmentDTOList.map((e) => e.toDomain()).toList();
  }

  Future<DateTime> getLastSyncCustomer() async {
    final date = await db.getLastSyncCustomerDate();
    return DateTime.parse(date!);
  }

  Future<DateTime> getLastSyncCustomerPendingPayments() async {
    final date = await db.getLastSyncCustomerPendingPaymentDate();
    return DateTime.parse(date!);
  }

  Future<DateTime> getLastSyncTopArticles() async {
    final date = await db.getLastSyncTopArticlesDate();
    return DateTime.parse(date!);
  }

  Future<List<CustomerAttachmentDTO>> _remoteGetCustomerAttachment(
      {required Uri requestUri,
      required dynamic Function(dynamic json) jsonDataSelector,
      required String provisionalToken}) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data) as List<dynamic>;
        return data.map((e) => CustomerAttachmentDTO.fromJson(e)).toList();
      } else {
        throw AppException.restApiFailure(
            response.statusCode ?? 400, response.statusMessage ?? '');
      }
    } on DioError catch (e) {
      String? errorDetail;
      final responseErrorJson =
          e.response?.data['detail'] ?? e.response?.data['message'] as String?;
      if (responseErrorJson != null) {
        errorDetail = responseErrorJson;

        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, errorDetail ?? '');
      } else {
        throw AppException.restApiFailure(
            e.response?.statusCode ?? 400, e.response?.statusMessage ?? '');
      }
    } catch (e) {
      rethrow;
    }
  }
}
