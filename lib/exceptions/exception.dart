/// Exception class indicating a generic/default exception
class DefaultException implements Exception {}

/// Exception class indicating that the refresh token has expired
class RefreshTokenExpiredException implements Exception {}

/// Exception class indicating an internal server error
class InternalServerError implements Exception {}

/// Exception class indicating an internal credentials error
class InternalCredentialsError implements Exception {}

/// Exception class indicating an internal refresh token error
class InternalRefreshTokenError implements Exception {}

/// Exception class indicating that the user already exists
class UserAlreadyExistsError implements Exception {}

/// Exception class indicating a lack of network connection
class NoConnectionException implements Exception {}
