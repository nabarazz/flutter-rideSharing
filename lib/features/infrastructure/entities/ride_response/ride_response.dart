// ignore_for_file: non_constant_identifier_names

import 'package:freezed_annotation/freezed_annotation.dart';

part 'ride_response.freezed.dart';
part 'ride_response.g.dart';

@freezed
class RideResponse with _$RideResponse {
  const factory RideResponse({
    required String id,
    required String driver,
    required String created,
    required String updated,
    required String pickUpAddress,
    required String dropOffAddress,
    required String price,
    required String status,
    required String passenger,
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
    required String firstName,
    required String lastName,
    required String group,
  }) = _Driver;
  factory Driver.fromJson(Map<String, dynamic> json) => _$DriverFromJson(json);
}

@freezed
class Passenger with _$Passenger {
  const factory Passenger({
    required int id,
    required String password,
    required bool isSuperuser,
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required bool isStaff,
    required bool isActive,
    required String dateJoined,
    List<int>? groups,
  }) = _Passenger;
  factory Passenger.fromJson(Map<String, dynamic> json) =>
      _$PassengerFromJson(json);
}
