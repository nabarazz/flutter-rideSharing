// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'request_list_response.freezed.dart';
part 'request_list_response.g.dart';

@freezed
class ResuestlistResponse with _$ResuestlistResponse {
  const factory ResuestlistResponse({
    required String id,
    required String created,
    required String updated,
    required String pick_up_address,
    required String drop_off_address,
    required String price,
    required String status,
  }) = _ResuestlistResponse;
  factory ResuestlistResponse.fromJson(Map<String, dynamic> json) =>
      _$ResuestlistResponseFromJson(json);
}
