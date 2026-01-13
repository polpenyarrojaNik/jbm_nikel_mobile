import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../domain/suggestion_address.dart';
import '../presentation/app.dart';
import 'provincia_dto.dart';
import 'remote_database.dart';
import 'suggestion_address_dto.dart';

part 'suggestion_address_repository.g.dart';

@riverpod
SuggestionAddressRepository suggestionAddressRepository(Ref ref) =>
    SuggestionAddressRepository(
      ref.watch(appRemoteDatabaseProvider),
      ref.watch(dioProvider),
      ref.watch(usuarioNotifierProvider)!,
    );

class SuggestionAddressRepository {
  final RemoteAppDatabase _remoteDb;
  final Dio _dio;
  final Usuario usuario;

  const SuggestionAddressRepository(this._remoteDb, this._dio, this.usuario);

  Future<SuggestionAddress?> getSuggestionAddressFromAddress({
    required String address,
    required String? languageId,
  }) async {
    final suggestionLocationDto = await _remoteSuggesttionAddress(
      address: address,
      languageId: languageId,
      test: usuario.test,
    );

    if (suggestionLocationDto != null &&
        suggestionLocationDto.direccion != null &&
        suggestionLocationDto.paisId != null) {
      final country =
          await (_remoteDb.select(_remoteDb.paisTable)
                ..where((tbl) => tbl.id.equals(suggestionLocationDto.paisId!)))
              .getSingle();

      final province = await getProvinceDtoBySuggestion(
        suggestionLocationDto.paisId,
        suggestionLocationDto.provinciaId,
        suggestionLocationDto.provinciaNombre,
      );

      return suggestionLocationDto.toDomain(
        province?.toDomain(),
        country.toDomain(),
      );
    }
    return null;
  }

  Future<SuggestionAddressDTO?> _remoteSuggesttionAddress({
    required String address,
    required String? languageId,

    required bool test,
  }) async {
    final queryParameters = {
      'addressString': address,
      'languageId': languageId,
    };

    try {
      final requestUri = (test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v7/online/geo/validate-address',
              queryParameters,
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v7/online/geo/validate-address',
              queryParameters,
            );

      final response = await _dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
      );

      if (response.statusCode == 200) {
        final data = response.data['data'] as Map<String, dynamic>;

        return SuggestionAddressDTO.fromJson(data);
      }
      return null;
    } catch (e) {
      return null;
    }
  }

  Future<ProvinciaDTO?> getProvinceDtoBySuggestion(
    String? paisId,
    String? provinciaId,
    String? provinciaNombre,
  ) async {
    if (provinciaId == null && provinciaNombre == null) {
      return null;
    }

    final query = _remoteDb.select(_remoteDb.provinciaTable);

    query.where((tbl) {
      Expression<bool> exp;

      if (provinciaId != null) {
        exp = tbl.provinciaId.equals(provinciaId);
      } else {
        exp = tbl.provincia.equals(provinciaNombre!);
      }

      if (paisId != null) {
        exp = exp & tbl.paisId.equals(paisId);
      }

      return exp;
    });

    return query.getSingleOrNull();
  }
}
