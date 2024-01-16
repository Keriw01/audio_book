import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

/// User class containing database id and email
@freezed
class User with _$User {
  const factory User({
    required int userId,
    required String email,
    required String sessionId,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
