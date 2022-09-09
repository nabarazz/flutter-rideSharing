import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'login_response.freezed.dart';
part 'login_response.g.dart';

@freezed
@HiveType(typeId: 0)
class LoginResponse with _$LoginResponse {
  const factory LoginResponse({
    @HiveField(0) required String refresh,
    @HiveField(1) required String access,
    @HiveField(2) required String username,
    @HiveField(3) required String email,
    @HiveField(4) required int id,
    @HiveField(5) String? group,
  }) = _LoginResponse;
  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
