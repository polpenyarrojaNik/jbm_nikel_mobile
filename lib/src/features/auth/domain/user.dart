import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String id,
    required String user,
    required String password,
    String? username,
    required String refreshToken,
    required String provisionalToken,
  }) = _User;
}
