import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:jbm_nikel_mobile/src/core/infrastructure/database.dart';
import 'package:jbm_nikel_mobile/src/features/usuario/infrastructure/usuario_service.dart';

import '../../../core/domain/default_list_params.dart';
import '../../../core/exceptions/app_exception.dart';
import '../../../core/presentation/app.dart';
import '../domain/visita.dart';

final visitaRepositoryProvider = Provider.autoDispose<VisitaRepository>(
  (ref) {
    final db = ref.watch(appDatabaseProvider);
    final dio = ref.watch(dioProvider);
    return VisitaRepository(db, dio);
  },
);

final visitasSearchProvider =
    FutureProvider.autoDispose.family<List<Visita>, DefaultListParams>(
  (ref, defaultListParams) async {
    print('Searching: ${defaultListParams.searchText}');
    final usuario =
        await ref.watch(usuarioServiceProvider).getSignedInUsuario();

    final visitaRepository = ref.watch(visitaRepositoryProvider);
    return visitaRepository.getVisitaList(
        usuarioId: usuario!.id,
        page: defaultListParams.page,
        searchText: defaultListParams.searchText);
  },
);

final visitaProvider =
    FutureProvider.autoDispose.family<Visita, String>((ref, visitaId) {
  final visitaRepository = ref.watch(visitaRepositoryProvider);
  return visitaRepository.getVisitaById(visitaId: visitaId);
});

class VisitaRepository {
  final AppDatabase _db;
  final Dio _dio;

  VisitaRepository(this._db, this._dio);

  Future<List<Visita>> getVisitaList(
      {required String usuarioId,
      required int page,
      required String searchText}) {
    try {
      final query = _db.select(_db.visitaTable).join([
        innerJoin(
          _db.clienteUsuarioTable,
          _db.clienteUsuarioTable.clienteId
              .equalsExp(_db.visitaTable.clienteId),
        )
      ]);

      if (searchText != '') {
        query.where(
          _db.clienteUsuarioTable.clienteId.equals(usuarioId) &
              (_db.visitaTable.resumen.like('%$searchText%') |
                  _db.visitaTable.clienteId.like('%$searchText%') |
                  _db.visitaTable.contacto.like('%$searchText%')),
        );
      } else {
        query.where(_db.clienteUsuarioTable.clienteId.equals(usuarioId));
      }

      query.orderBy([
        OrderingTerm.desc(_db.visitaTable.fecha),
      ]);

      return query.map((row) {
        final visitaDTO = row.readTable(_db.visitaTable);
        return visitaDTO.toDomain();
      }).get();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }

  Future<Visita> getVisitaById({required String visitaId}) async {
    try {
      final query =
          (_db.select(_db.visitaTable)..where((t) => t.id.equals(visitaId)));

      return query.asyncMap((row) async {
        return row.toDomain();
      }).getSingle();
    } catch (e) {
      throw AppException.fetchLocalDataFailure(e.toString());
    }
  }
}
