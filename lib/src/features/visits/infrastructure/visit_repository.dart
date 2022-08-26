import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../domain/visit.dart';

final visitRepositoryProvider = Provider.autoDispose<VisitRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final visitListStreamProvider = StreamProvider.autoDispose<List<Visit>>((ref) {
  final visitRepository = ref.watch(visitRepositoryProvider);
  return visitRepository.watchVisitList();
});

class VisitRepository {
  AppDatabase db;
  Dio dio;

  VisitRepository(this.db, this.dio);

  Stream<List<Visit>> watchVisitList() {
    return db.getVisitList();
  }
}
