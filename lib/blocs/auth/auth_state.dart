part of 'auth_bloc.dart';

@CopyWith()
class AuthState with EquatableMixin {
  final String? email;
  final String? password;
  final TokenModel? tokens;
  final User? currentUser;
  bool isLoggedIn = false;

  AuthState({
    this.email,
    this.password,
    this.tokens,
    this.currentUser,
    required this.isLoggedIn,
  });

  @override
  List<Object?> get props => [
        email,
        password,
        tokens,
        currentUser,
        isLoggedIn,
      ];
}
