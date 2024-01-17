import 'package:flutter/widgets.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:testproject/blocs/base_cubit.dart';
import 'package:testproject/exceptions/exception.dart';
import 'package:testproject/generated/l10n.dart';
import 'package:testproject/models/user.dart';
import 'package:testproject/repositories/auth_repository.dart';
import 'package:testproject/routes/app_router.gr.dart';

import 'package:testproject/models/token_model.dart';
import 'package:testproject/service/secure_storage.dart';

part 'auth_state.dart';
part 'auth_bloc.g.dart';

/// AuthBloc is responsible for managing authorization in the application
class AuthBloc extends BaseCubit<AuthState> {
  // AuthRepository instance for handling authentication-related operations
  late final AuthRepository _authRepository;

  // SecureStorage instance for secure data storage
  final SecureStorage _secureStorage = SecureStorage();

  AuthBloc(AppRouter appRouter, BuildContext context)
      : _authRepository = AuthRepository(),
        super(
          appRouter,
          AuthState(),
        ) {
    isLoggedIn();
  }

  /// Method for handling user login
  Future<void> login(String email, String password) async {
    emit(
      state.copyWith(
        email: email,
        password: password,
        errorMessage: '',
        isLoading: true,
      ),
    );

    try {
      TokenModel tokenResponse = await _authRepository.login(
        email,
        password,
      );
      await _saveTokens(tokenResponse);

      User userRespone =
          await _authRepository.getUserId(tokenResponse.accessToken);

      await _saveCurrentUser(userRespone);

      emit(
        state.copyWith(
          tokens: tokenResponse,
          currentUser: userRespone,
        ),
      );

      _navigateToHomePage();
    } on NoConnectionException {
      emit(
        state.copyWith(
          errorMessage: S.current.networkError,
          isLoading: false,
        ),
      );
    } on InternalServerError {
      emit(
        state.copyWith(
          errorMessage: S.current.internalServerError,
          isLoading: false,
        ),
      );
    } on InternalCredentialsError {
      emit(
        state.copyWith(
          errorMessage: S.current.internalCredentialsError,
          isLoading: false,
        ),
      );
    } on DefaultException {
      emit(
        state.copyWith(
          errorMessage: S.current.defaultError,
          isLoading: false,
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(
        state.copyWith(
          errorMessage: S.current.defaultError,
          isLoading: false,
        ),
      );
    }
  }

  /// Method for refreshing the access token if needed
  Future<void> refreshTokenIfNeeded() async {
    final tokenModel = state.tokens;

    if (tokenModel == null) {
      await logOut();
      return;
    }
    try {
      final refreshToken = tokenModel.refreshToken;
      final userId = state.currentUser?.userId;

      final newTokens = await _authRepository.refreshToken(
        refreshToken,
        userId.toString(),
      );

      _saveTokens(newTokens);

      emit(state.copyWith(tokens: newTokens));
    } on NoConnectionException {
      emit(
        state.copyWith(
          errorMessage: S.current.networkError,
          isLoading: false,
        ),
      );
    } on RefreshTokenExpiredException {
      await logOut();
    } on InternalServerError {
      emit(
        state.copyWith(
          errorMessage: S.current.internalServerError,
          isLoading: false,
        ),
      );
    } on DefaultException {
      emit(
        state.copyWith(
          errorMessage: S.current.defaultError,
          isLoading: false,
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(state.copyWith(tokens: null, currentUser: null));
    }
  }

  /// Method for user registration
  Future<void> register(String email, String password) async {
    emit(
      state.copyWith(
        email: email,
        password: password,
        errorMessage: '',
        isLoading: true,
      ),
    );

    try {
      TokenModel tokenResponse = await _authRepository.register(
        email,
        password,
      );

      await _saveTokens(tokenResponse);

      User userRespone =
          await _authRepository.getUserId(tokenResponse.accessToken);

      await _saveCurrentUser(userRespone);

      emit(
        state.copyWith(
          tokens: tokenResponse,
          currentUser: userRespone,
        ),
      );

      _navigateToHomePage();
    } on NoConnectionException {
      emit(
        state.copyWith(
          errorMessage: S.current.networkError,
          isLoading: false,
        ),
      );
    } on InternalCredentialsError {
      emit(
        state.copyWith(
          errorMessage: S.current.internalCredentialsError,
          isLoading: false,
        ),
      );
    } on UserAlreadyExistsError {
      emit(
        state.copyWith(
          errorMessage: S.current.userAlreadyExistsError,
          isLoading: false,
        ),
      );
    } on InternalServerError {
      emit(
        state.copyWith(
          errorMessage: S.current.internalServerError,
          isLoading: false,
        ),
      );
    } on DefaultException {
      emit(
        state.copyWith(
          errorMessage: S.current.defaultError,
          isLoading: false,
        ),
      );
    } catch (e) {
      print(e.toString());
      emit(
        state.copyWith(
          errorMessage: S.current.defaultError,
          isLoading: false,
        ),
      );
    }
  }

  /// Method for logging out the user
  Future<void> logOut() async {
    await _deleteTokens();
    await _deleteCurrentUser();
    await _deleteRememberMe();
    _clearState();
    appRouter.replaceAll([LoginRoute()]);
  }

  /// Method for saving tokens securely
  Future<void> _saveTokens(TokenModel tokens) async {
    emit(state.copyWith(tokens: tokens));
    await _secureStorage.saveTokens(tokens);
  }

  /// Method for deleting tokens
  Future<void> _deleteTokens() async {
    emit(state.copyWith(tokens: null));
    await _secureStorage.deleteTokens();
  }

  /// Method for saving the current user securely
  Future<void> _saveCurrentUser(User user) async {
    emit(state.copyWith(currentUser: user));
    await _secureStorage.saveUser(user);
  }

  /// Method for deleting the current user
  Future<void> _deleteCurrentUser() async {
    emit(state.copyWith(currentUser: null));
    await _secureStorage.deleteUser();
  }

  /// Method for deleting the "Remember Me" flag in checkbox used in LoginPage
  Future<void> _deleteRememberMe() async {
    emit(state.copyWith(rememberMe: false));
    await _secureStorage.deleteRememberFlag();
  }

  /// Method for changing the "Remember Me" flag in checkbox used in LoginPage
  Future<void> changeRememberMe(bool? checkboxValue) async {
    await _secureStorage.saveRememberFlag(checkboxValue);
    emit(state.copyWith(rememberMe: checkboxValue));
  }

  /// Method for checking if the user is already logged in
  Future<void> isLoggedIn() async {
    bool? rememberMe = await _secureStorage.readRememberFlag();
    if (rememberMe == true) {
      TokenModel? tokenModel = await _secureStorage.readTokens();
      User? currentUser = await _secureStorage.readUser();
      emit(state.copyWith(tokens: tokenModel, currentUser: currentUser));
      _navigateToHomePage();
    }
  }

  /// Method for clearing the error message in the auth state
  void clearErrorMessage() {
    emit(state.copyWith(errorMessage: ''));
  }

  /// Method for clearing the entire auth state
  void _clearState() {
    emit(
      state.copyWith(
        email: null,
        password: null,
        tokens: null,
        currentUser: null,
        isLoggedIn: false,
        errorMessage: '',
        isLoading: false,
        rememberMe: false,
      ),
    );
  }

  /// Method for navigating to the home page
  void _navigateToHomePage() {
    appRouter.replaceNamed(const HomeRouteView().path);
    emit(state.copyWith(isLoading: false, isLoggedIn: true, errorMessage: ''));
  }

  /// Method for navigating to the login page
  void navigateToLoginPage() {
    appRouter.replaceNamed(LoginRoute().path);
    _clearState();
  }

  /// Method for navigating to the registration page
  void navigateToRegisterPage() {
    appRouter.replaceNamed(RegistrationRoute().path);
    _clearState();
  }
}
