// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_response.freezed.dart';
part 'ride_response.g.dart';

@freezed
class RideResponse with _$RideResponse {
  const factory RideResponse({
    required String id,
    required String created,
    required String updated,
    required String pick_up_address,
    required String drop_off_address,
    required String price,
    required String status,
    required String email,
    required String username,
  }) = _RideResponse;
  factory RideResponse.fromJson(Map<String, dynamic> json) =>
      _$RideResponseFromJson(json);
}
