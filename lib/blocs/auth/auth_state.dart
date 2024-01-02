part of 'auth_bloc.dart';

@CopyWith()
class AuthState with EquatableMixin {
  final String? email;
  final String? password;
  final TokenModel? tokens;
  final User? currentUser;
  bool isLoggedIn;
  String errorMessage;
  bool isLoading;

  AuthState({
    this.email,
    this.password,
    this.tokens,
    this.currentUser,
    this.isLoggedIn = false,
    this.errorMessage = '',
    this.isLoading = false,
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
      ];
}
