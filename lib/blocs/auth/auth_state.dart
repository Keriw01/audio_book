part of 'auth_bloc.dart';

@CopyWith()
class AuthState with EquatableMixin {
  final String? email;
  final String? password;
  final TokenModel? tokens;

  AuthState({
    this.email,
    this.password,
    this.tokens,
  });

  @override
  List<Object?> get props => [
        email,
        password,
        tokens,
      ];
}
