part of 'auth_bloc.dart';

@CopyWith()
class AuthState with EquatableMixin {
  final String? email;
  final String? password;
  final TokenModel? tokens;
  bool isLoggedIn = false;

  AuthState({
    this.email,
    this.password,
    this.tokens,
    required this.isLoggedIn,
  });

  @override
  List<Object?> get props => [
        email,
        password,
        tokens,
        isLoggedIn,
      ];
}
