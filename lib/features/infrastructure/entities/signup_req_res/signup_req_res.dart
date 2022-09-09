// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_req_res.freezed.dart';
part 'signup_req_res.g.dart';

@freezed
class SignUpReqRes with _$SignUpReqRes {
  const factory SignUpReqRes({
    @Default(0) int id,
    required String username,
    @Default('') String password1,
    @Default('') String password2,
    required String email,
    required String first_name,
    required String last_name,
    @Default('') String group,
    String? photo,
  }) = _SignUpReqRes;
  factory SignUpReqRes.fromJson(Map<String, dynamic> json) =>
      _$SignUpReqResFromJson(json);
}
