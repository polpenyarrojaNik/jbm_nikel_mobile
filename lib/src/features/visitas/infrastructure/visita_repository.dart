import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';

import '../../auth/infrastructure/auth_repository.dart';
import '../domain/visita.dart';

final visitaRepositoryProvider = Provider.autoDispose<VisitaRepository>(
  // * Override this in the main method
  (ref) => throw UnimplementedError(),
);

final visitaListaStreamProvider =
    StreamProvider.autoDispose<List<Visita>>((ref) async* {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  final authRepository = ref.watch(authRepositoryProvider);
  final usuario = await authRepository.getSignedInUsuario();
  yield* visitaRepository.watchVisitaList(usuarioId: usuario!.id);
});

final visitaProvider =
    FutureProvider.autoDispose.family<Visita, String>((ref, visitaId) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaById(visitaId: visitaId);
});

class VisitaRepository {
  AppDatabase db;
  Dio dio;

  VisitaRepository(this.db, this.dio);

  Stream<List<Visita>> watchVisitaList({required String usuarioId}) {
    final query = db.select(db.visitaTable).join([
      innerJoin(db.clienteUsuarioTable,
          db.clienteUsuarioTable.clienteId.equalsExp(db.clienteTable.id))
    ]);

    query.where(db.visitaTable.deleted.equals('N') &
        db.clienteUsuarioTable.clienteId.equals(usuarioId));
    query.orderBy([
      OrderingTerm.desc(db.visitaTable.fecha),
    ]);

    return query.map((row) {
      final visitaDTO = row.readTable(db.visitaTable);
      return visitaDTO.toDomain();
    }).watch();
  }

  Future<Visita> getVisitaById({required String visitaId}) async {
    final query =
        (db.select(db.visitaTable)..where((t) => t.id.equals(visitaId)));

    return query.asyncMap((row) async {
      return row.toDomain();
    }).getSingle();
  }
}
