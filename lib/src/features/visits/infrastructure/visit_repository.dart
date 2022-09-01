import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../auth/infrastructure/auth_repository.dart';
import '../domain/visit.dart';

final visitRepositoryProvider = Provider.autoDispose<VisitRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final visitListStreamProvider =
    StreamProvider.autoDispose<List<Visit>>((ref) async* {
  final visitRepository = ref.watch(visitRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final user = await authRepository.getSignedInUser();
  yield* visitRepository.watchVisitList(userId: user!.id);
});

final visitProvider =
    FutureProvider.autoDispose.family<Visit, String>((ref, visitId) {
  final visitRepository = ref.watch(visitRepositoryProvider);
  return visitRepository.getVisitById(visitId: visitId);
});

class VisitRepository {
  AppDatabase db;
  Dio dio;

  VisitRepository(this.db, this.dio);

  Stream<List<Visit>> watchVisitList({required String userId}) {
    return db.getVisitList(userId: userId);
  }

  Future<Visit> getVisitById({required String visitId}) async {
    return db.getVisitById(visitId: visitId);
  }
}
