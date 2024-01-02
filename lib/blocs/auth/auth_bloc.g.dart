// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_bloc.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthStateCWProxy {
  AuthState email(String? email);

  AuthState password(String? password);

  AuthState tokens(TokenModel? tokens);

  AuthState currentUser(User? currentUser);

  AuthState isLoggedIn(bool isLoggedIn);

  AuthState errorMessage(String errorMessage);

  AuthState isLoading(bool isLoading);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    String? email,
    String? password,
    TokenModel? tokens,
    User? currentUser,
    bool? isLoggedIn,
    String? errorMessage,
    bool? isLoading,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthState.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthState.copyWith.fieldName(...)`
class _$AuthStateCWProxyImpl implements _$AuthStateCWProxy {
  const _$AuthStateCWProxyImpl(this._value);

  final AuthState _value;

  @override
  AuthState email(String? email) => this(email: email);

  @override
  AuthState password(String? password) => this(password: password);

  @override
  AuthState tokens(TokenModel? tokens) => this(tokens: tokens);

  @override
  AuthState currentUser(User? currentUser) => this(currentUser: currentUser);

  @override
  AuthState isLoggedIn(bool isLoggedIn) => this(isLoggedIn: isLoggedIn);

  @override
  AuthState errorMessage(String errorMessage) =>
      this(errorMessage: errorMessage);

  @override
  AuthState isLoading(bool isLoading) => this(isLoading: isLoading);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthState(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthState(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthState call({
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? tokens = const $CopyWithPlaceholder(),
    Object? currentUser = const $CopyWithPlaceholder(),
    Object? isLoggedIn = const $CopyWithPlaceholder(),
    Object? errorMessage = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
  }) {
    return AuthState(
      email: email == const $CopyWithPlaceholder()
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String?,
      password: password == const $CopyWithPlaceholder()
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String?,
      tokens: tokens == const $CopyWithPlaceholder()
          ? _value.tokens
          // ignore: cast_nullable_to_non_nullable
          : tokens as TokenModel?,
      currentUser: currentUser == const $CopyWithPlaceholder()
          ? _value.currentUser
          // ignore: cast_nullable_to_non_nullable
          : currentUser as User?,
      isLoggedIn:
          isLoggedIn == const $CopyWithPlaceholder() || isLoggedIn == null
              ? _value.isLoggedIn
              // ignore: cast_nullable_to_non_nullable
              : isLoggedIn as bool,
      errorMessage:
          errorMessage == const $CopyWithPlaceholder() || errorMessage == null
              ? _value.errorMessage
              // ignore: cast_nullable_to_non_nullable
              : errorMessage as String,
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
    );
  }
}

extension $AuthStateCopyWith on AuthState {
  /// Returns a callable class that can be used as follows: `instanceOfAuthState.copyWith(...)` or like so:`instanceOfAuthState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthStateCWProxy get copyWith => _$AuthStateCWProxyImpl(this);
}
