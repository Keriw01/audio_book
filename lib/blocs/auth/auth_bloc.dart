import 'package:flutter/widgets.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:testproject/blocs/base_cubit.dart';
import 'package:testproject/exceptions/exception.dart';
import 'package:testproject/repositories/auth_repository.dart';
import 'package:testproject/routes/app_router.gr.dart';

import 'package:testproject/models/token_model.dart';
import 'package:testproject/service/secure_storage.dart';

part 'auth_state.dart';
part 'auth_bloc.g.dart';

class AuthBloc extends BaseCubit<AuthState> {
  late final AuthRepository _authRepository;
  final SecureStorage _secureStorage = SecureStorage();

  AuthBloc(AppRouter appRouter, BuildContext context)
      : _authRepository = AuthRepository(),
        super(
          appRouter,
          AuthState(),
        );

  Future<void> login(String email, String password) async {
    emit(
      state.copyWith(
        email: email,
        password: password,
      ),
    );

    try {
      TokenModel response = await _authRepository.login(
        email,
        password,
      );

      await _saveTokens(response);

      emit(
        state.copyWith(
          tokens: response,
        ),
      );

      appRouter.replaceNamed(const HomeRouteView().path);
    } catch (e) {
      print(e);
    }
  }

  Future<void> refreshTokenIfNeeded() async {
    final tokenModel = state.tokens;

    if (tokenModel == null) {
      await logOut();
      return;
    }
    try {
      final refreshToken = tokenModel.refreshToken;

      final newTokens = await _authRepository.refreshToken(refreshToken);

      _saveTokens(newTokens);

      emit(state.copyWith(tokens: newTokens));
    } on RefreshTokenExpiredException {
      await logOut();
    } catch (e) {
      print(e);
      emit(state.copyWith(tokens: null));
      return;
    }
  }

  Future<void> logOut() async {
    await _deleteTokens();
    emit(state.copyWith(email: null, password: null, tokens: null));
    appRouter.replaceNamed(LoginRoute().path);
  }

  Future<void> _saveTokens(TokenModel tokens) async {
    emit(state.copyWith(tokens: tokens));
    await _secureStorage.saveTokens(tokens);
  }

  Future<void> _deleteTokens() async {
    emit(state.copyWith(tokens: null));
    await _secureStorage.deleteTokens();
  }

  // void clear() {
  //   emit(
  //     state.copyWith(
  //       email: const IsEmailText.pure(),
  //       password: const IsPasswordValidate.pure(),
  //       passwordConfirmation: const EqualText.pure(''),
  //       responseMessage: null,
  //     ),
  //   );
  // }
}
