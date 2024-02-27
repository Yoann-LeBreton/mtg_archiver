sealed class AppException implements Exception {}

class ServerException extends AppException {}

class TimeoutException extends AppException {}

class NotFoundException extends AppException {}

class UnauthorizedException extends AppException {}

class BadRequestException extends AppException {}
