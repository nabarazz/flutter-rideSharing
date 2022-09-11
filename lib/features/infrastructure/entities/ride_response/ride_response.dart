// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_response.freezed.dart';
part 'ride_response.g.dart';

@freezed
class RideResponse with _$RideResponse {
  const factory RideResponse({
    required String id,
    required Driver driver,
    required String created,
    required String updated,
    required String pick_up_address,
    required String drop_off_address,
    required String price,
    required String status,
    required Passenger passenger,
  }) = _RideResponse;
  factory RideResponse.fromJson(Map<String, dynamic> json) =>
      _$RideResponseFromJson(json);
}

@freezed
class Driver with _$Driver {
  const factory Driver({
    required int id,
    required String username,
    required String email,
    required String first_name,
    required String last_name,
    required String group,
  }) = _Driver;
  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
class Passenger with _$Passenger {
  const factory Passenger({
    required int id,
    required String password,
    required bool is_superuser,
    required String username,
    required String first_name,
    required String last_name,
    required String email,
    required bool is_staff,
    required bool is_active,
    required String date_joined,
    required List<int> groups,
  }) = _Passenger;
  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);
}
