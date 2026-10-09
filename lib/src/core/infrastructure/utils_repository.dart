import 'dart:io';

import 'package:dio/dio.dart';
import 'package:drift/drift.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:path/path.dart' as p;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/usuario/application/usuario_notifier.dart';
import '../../features/usuario/domain/usuario.dart';
import '../domain/business_card_data.dart';
import '../exceptions/app_exception.dart';
import '../presentation/app.dart';
import 'business_card_data_dto.dart';
import 'dio_extension.dart';
import 'remote_database.dart';

part 'utils_repository.g.dart';

@riverpod
UtilsRepository utilsRepository(Ref ref) => UtilsRepository(
  ref.watch(appRemoteDatabaseProvider),
  ref.watch(dioProvider),
  ref.watch(usuarioNotifierProvider)!,
);

class UtilsRepository {
  final RemoteAppDatabase _remoteDb;
  final Dio _dio;
  final Usuario usuario;

  const UtilsRepository(this._remoteDb, this._dio, this.usuario);

  Future<BusinessCardData> extractBusinessCardDataFromImage({
    required List<File> imageFileList,
  }) async {
    final businessCardDataDto = await _remoteExtractBusinessCard(imageFileList);

    final country =
        await (_remoteDb.select(_remoteDb.paisTable)..where(
              (tbl) => tbl.id.equalsNullable(businessCardDataDto.countryId),
            ))
            .getSingleOrNull();

    final province =
        await (_remoteDb.select(_remoteDb.provinciaTable)..where(
              (tbl) =>
                  tbl.paisId.equalsNullable(businessCardDataDto.countryId) &
                  (tbl.provinciaId.equalsNullable(
                        businessCardDataDto.province,
                      ) |
                      tbl.provincia.equalsNullable(
                        businessCardDataDto.province,
                      )),
            ))
            .getSingleOrNull();

    return businessCardDataDto.toDomain(
      pais: country?.toDomain(),
      provincia: province?.toDomain(),
    );
  }

  Future<BusinessCardDataDTO> _remoteExtractBusinessCard(
    List<File> imageFileList,
  ) async {
    try {
      final requestUri = (usuario.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v1/utils/business_card',
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v1/utils/business_card',
            );

      final formData = FormData();
      for (var i = 0; i < imageFileList.length; i++) {
        final imageFile = imageFileList[i];
        formData.files.add(
          MapEntry(
            'file_${i + 1}',
            await MultipartFile.fromFile(
              imageFile.path,
              filename: p.basename(imageFile.path),
            ),
          ),
        );
      }

      final response = await _dio.postUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer ${usuario.provisionalToken}'},
        ),
        data: formData,
      );

      if (response.statusCode == 200) {
        final data = response.data['data'] as Map<String, dynamic>;

        return BusinessCardDataDTO.fromJson(data);
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } on DioException catch (e, stackTrace) {
      if (e.isNoConnectionError) {
        Error.throwWithStackTrace(
          const AppException.notConnection(),
          stackTrace,
        );
      }
      final responseData = e.response?.data;
      final responseError = (responseData is Map)
          ? (responseData['detalle'] ?? responseData['message'])
          : e.response?.statusMessage;
      Error.throwWithStackTrace(
        AppException.restApiFailure(
          e.response?.statusCode ?? 400,
          (responseError as String?) ?? e.response?.statusMessage ?? '',
        ),
        stackTrace,
      );
    }
  }
}
