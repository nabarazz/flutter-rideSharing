// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_request.freezed.dart';
part 'ride_request.g.dart';

@freezed
class RideRequest with _$RideRequest {
  const factory RideRequest({
    required String pick_up_address,
    required String drop_off_address,
    required String price,
    required String status,
  }) = _RideRequest;
  factory RideRequest.fromJson(Map<String, dynamic> json) =>
      _$RideRequestFromJson(json);
}
