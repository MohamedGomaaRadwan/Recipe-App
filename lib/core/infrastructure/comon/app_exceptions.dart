class ApiException implements Exception {
  ApiException(this.message);
  String message;
}

class LocalDatabaseException implements Exception {
  LocalDatabaseException(this.message);
  String message;
}
