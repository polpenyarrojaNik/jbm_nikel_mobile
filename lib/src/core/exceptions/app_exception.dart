import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_exception.freezed.dart';

@freezed
class AppException with _$AppException {
  // Global
  const factory AppException.restApiFailure(
      int errorCode, String errorMessage) = RestApiFailure;
  const factory AppException.fetchLocalDataFailure(String errorMessage) =
      FetchLocalDataFailure;

  //Sync
  const factory AppException.syncFailure(
      String tableToSync, String errorMessage) = SyncFailure;

  // Customer
  const factory AppException.customerNotFound() = CustomerNotFoundFailure;

  //Article
  const factory AppException.articleNotFound() = ArticleNotFoundFailure;

  //SalesOrder
  const factory AppException.salesOrderNotFound() = SalesOrderNotFoundFailure;

  const factory AppException.salesOrderDeleteFailure(String errorMessage) =
      SalesOrderDeleteFailure;
}

class AppExceptionData {
  final String code;
  final String message;

  AppExceptionData(this.code, this.message);

  @override
  String toString() => 'AppExceptionData(code: $code, message: $message';
}

extension AppExceptionDetails on AppException {
  AppExceptionData get details {
    return when(
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
      customerNotFound: () => AppExceptionData(
        'customer-not-found',
        'Customer not found',
      ),
      articleNotFound: () => AppExceptionData(
        'article-not-found',
        'Article not found',
      ),
      salesOrderNotFound: () => AppExceptionData(
        'sales-order-not-found',
        'Sales order not found',
      ),
      salesOrderDeleteFailure: (errorMessage) => AppExceptionData(
        'sales-order-delete-failure',
        'Error deleting Sales order $errorMessage',
      ),
    );
  }
}
