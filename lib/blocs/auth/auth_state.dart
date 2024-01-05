part of 'auth_bloc.dart';

@CopyWith()
class AuthState with EquatableMixin {
  /// email
  final String? email;

  /// password
  final String? password;

  /// tokens with accesToken and refreshToken
  final TokenModel? tokens;

  /// user with userId and email
  final User? currentUser;

  /// flag when user isLoggedIn
  bool isLoggedIn;

  /// error message
  String errorMessage;

  /// flag isLoading setting to true when user press button Login/Register
  bool isLoading;

  /// flag to remember current user to storage
  bool rememberMe;

  AuthState({
    this.email,
    this.password,
    this.tokens,
    this.currentUser,
    this.isLoggedIn = false,
    this.errorMessage = '',
    this.isLoading = false,
    this.rememberMe = false,
  });

  @override
  List<Object?> get props => [
        email,
        password,
        tokens,
        currentUser,
        isLoggedIn,
        errorMessage,
        isLoading,
        rememberMe,
      ];
}
