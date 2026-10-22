import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../core/exceptions/app_exception.dart';
import '../../../core/exceptions/get_api_error.dart';
import '../../../core/helpers/error_logger.dart';
import '../../../core/infrastructure/jbm_headers.dart' hide Json;
import '../../../core/presentation/app.dart';
import '../../usuario/application/usuario_notifier.dart';
import '../../usuario/domain/usuario.dart';
import '../domain/informe.dart';
import 'informe_dto.dart';

part 'informe_repository.g.dart';

typedef Json = Map<String, dynamic>;

@riverpod
InformeRepository informeRepository(Ref ref) => InformeRepository(
  ref.watch(dioProvider),
  ref.watch(usuarioNotifierProvider)!,
  ref.watch(errorLoggerProvider),
);

class InformeRepository {
  static const pageSize = 100;
  final Dio dio;
  final Usuario usuario;
  final ErrorLogger logger;

  InformeRepository(this.dio, this.usuario, this.logger);

  Future<({List<Informe> informeList, int totalRows})> getInformeLista({
    required int page,
    required String searchText,
  }) async {
    final query = {
      'page': '${page + 1}',
      'pageSize': '$pageSize',
      if (searchText.isNotEmpty) 'busqueda': searchText,
    };

    final remoteResponse = await _remoteInformeDTOList(
      requestUri: (usuario.test)
          ? Uri.http(
              dotenv.get('URL_TEST', fallback: 'localhost:3001'),
              'api/v7/online/informes',
              query,
            )
          : Uri.https(
              dotenv.get('URL', fallback: 'localhost:3001'),
              'api/v7/online/informes',
              query,
            ),
      jsonDataSelector: (json) => json['data'] as List<dynamic>,
      provisionalToken: usuario.provisionalToken,
    );

    return (
      informeList: remoteResponse.informeDTOList
          .map((dto) => dto.toDomain())
          .toList(),
      totalRows: remoteResponse.totalRows,
    );
  }

  Future<({List<InformeDTO> informeDTOList, int totalRows})>
  _remoteInformeDTOList({
    required Uri requestUri,
    required List<dynamic> Function(dynamic json) jsonDataSelector,
    required String provisionalToken,
  }) async {
    try {
      final response = await dio.getUri(
        requestUri,
        options: Options(
          headers: {'authorization': 'Bearer $provisionalToken'},
        ),
      );
      if (response.statusCode == 200) {
        final data = jsonDataSelector(response.data);
        final informeDTOList = data
            .map((e) => InformeDTO.fromJson(e as Json))
            .toList();
        final headers = JBMHeaders.parse(response);
        return (
          informeDTOList: informeDTOList,
          totalRows: headers.totalRows ?? informeDTOList.length,
        );
      }
      throw AppException.restApiFailure(
        response.statusCode ?? 400,
        response.statusMessage ?? '',
      );
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(getApiError(e, stackTrace, logger), stackTrace);
    }
  }
}
