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
}

class AppExceptionData {
  final String code;
  final String message;

  AppExceptionData(this.code, this.message);

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
        'rest-api-failure',
        'API ERROR: $errorCode: $errorMessage',
      ),
      fetchLocalDataFailure: (errorMessage) => AppExceptionData(
        'fetch-local-data-failure',
        'Error accessing local data $errorMessage',
      ),
      syncFailure: (tableToSync, errorMessage) => AppExceptionData(
        'sync-failure',
        'Error to sync data in $tableToSync: $errorMessage',
      ),
      clienteNotFound: () => AppExceptionData(
        'cliente-not-found',
        'Cliente not found',
      ),
      articuloNotFound: () => AppExceptionData(
        'articulo-not-found',
        'Articulo not found',
      ),
      pedidoVentaNotFound: () => AppExceptionData(
        'sales-order-not-found',
        'Ventas order not found',
      ),
      pedidoVentaDeleteFailure: (errorMessage) => AppExceptionData(
        'sales-order-delete-failure',
        'Error deleting Ventas order $errorMessage',
      ),
    );
  }
}
