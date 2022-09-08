import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_res.freezed.dart';
part 'login_res.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    required String refresh,
    required String access,
    required String username,
    required String email,
    String? group,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
