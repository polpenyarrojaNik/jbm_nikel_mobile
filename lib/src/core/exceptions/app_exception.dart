import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  // Global
  const factory AppException.restApiFailure(
      int errorCode, String errorMessage) = RestApiFailure;

  const factory AppException.authLocalFailure(String errorMessage) =
      AuthLocalFailure;
  const factory AppException.fetchLocalDataFailure(String errorMessage) =
      FetchLocalDataFailure;

  const factory AppException.createFileInCacheFailure(String errorMessage) =
      CreateFileInCahceFailure;

  //Sync
  const factory AppException.syncFailure(
      String tableToSync, String errorMessage) = SyncFailure;

  // Cliente
  const factory AppException.clienteNotFound() = ClienteNotFoundFailure;

  //Articulo
  const factory AppException.articuloNotFound() = ArticuloNotFoundFailure;

  //PedidoVenta
  const factory AppException.pedidoVentaNotFound() = PedidoVentaNotFoundFailure;

  const factory AppException.pedidoVentaDeleteFailure(String errorMessage) =
      PedidoVentaDeleteFailure;

  const factory AppException.insertDataFailure(String errorMessage) =
      InsertDataFailure;

  const factory AppException.notConnection() = NotConnectionFailure;

  const factory AppException.noSuchFileOrDirectory() = ArchivoNoEncontrado;

  const factory AppException.unexpectedResponseFormat() =
      UnexpectedResponseFormat;
}

class AppExceptionData {
  final String code;
  final String message;
  final int? statusCode;

  AppExceptionData(this.code, this.message, {this.statusCode});

  @override
  String toString() => 'AppExceptionData(code: $code, message: $message';
}

extension AppExceptionDetalles on AppException {
  AppExceptionData get details {
    return when(
      authLocalFailure: (errorMessage) => AppExceptionData(
        'auth-failure',
        'Error authenticating $errorMessage',
      ),
      restApiFailure: (errorCode, errorMessage) => AppExceptionData(
        statusCode: errorCode,
        'rest-api-failure',
        'API ERROR: $errorCode: $errorMessage',
      ),
      fetchLocalDataFailure: (errorMessage) => AppExceptionData(
        'fetch-local-data-failure',
        'Error accessing local data $errorMessage',
      ),
      createFileInCacheFailure: (errorMessage) => AppExceptionData(
        'create-file-in-cachefailure',
        'Error creating file in cahce $errorMessage',
      ),
      syncFailure: (tableToSync, errorMessage) => AppExceptionData(
        'sync-failure',
        'Error to sync data in $tableToSync: $errorMessage',
      ),
      clienteNotFound: () => AppExceptionData(
        'cliente-not-found',
        'Customer not found',
      ),
      articuloNotFound: () => AppExceptionData(
        'articulo-not-found',
        'Article not found',
      ),
      pedidoVentaNotFound: () => AppExceptionData(
        'sales-order-not-found',
        'Sales order not found',
      ),
      pedidoVentaDeleteFailure: (errorMessage) => AppExceptionData(
        'sales-order-delete-failure',
        'Error deleting sales order $errorMessage',
      ),
      insertDataFailure: (errorMessage) => AppExceptionData(
        'insert-data--failure',
        'Error inserting data in db:  $errorMessage',
      ),
      notConnection: () => AppExceptionData(
        'connection--failure',
        'No connection to cloud.',
      ),
      noSuchFileOrDirectory: () => AppExceptionData(
        'open-file--failure',
        'File not found.',
      ),
      unexpectedResponseFormat: () => AppExceptionData(
        'unexpected-response-format',
        'Unexpected response format.',
      ),
    );
  }
}
