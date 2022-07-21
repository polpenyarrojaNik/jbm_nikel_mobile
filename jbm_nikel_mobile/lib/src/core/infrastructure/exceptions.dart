class RestApiException implements Exception {
  final int? errorCode;
  final String? message;
  final StackTrace? stackTrace;

  RestApiException(this.errorCode, this.message, this.stackTrace);
}

class DBException implements Exception {
  final String? message;
  final StackTrace? stackTrace;

  DBException(this.message, this.stackTrace);
}
