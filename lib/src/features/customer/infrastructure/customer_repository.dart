import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/customer.dart';

final customerRepositoryProvider = Provider.autoDispose<CustomerRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final customerListStreamProvider =
    StreamProvider.autoDispose<List<Customer>>((ref) {
  final customerRepository = ref.watch(customerRepositoryProvider);
  return customerRepository.watchCustomerList();
});

class CustomerRepository {
  AppDatabase db;
  Dio dio;

  CustomerRepository(this.db, this.dio);

  Stream<List<Customer>> watchCustomerList() {
    return db.getCustomerList();
  }
}
