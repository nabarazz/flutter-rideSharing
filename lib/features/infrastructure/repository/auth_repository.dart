import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:ridesharingv1/app/failure.dart';
import 'package:ridesharingv1/app/local_db/local_db_notifier.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/request_list_response/request_list_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/ride_request/ride_request.dart';
import 'package:ridesharingv1/features/infrastructure/entities/ride_response/ride_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/signup_request/signup_request.dart';
import 'package:ridesharingv1/features/infrastructure/entities/signup_response/signup_response.dart';

final authRepository = Provider((ref) {
  return AuthRepository(ref.read);
});

abstract class IAuthRepository {
  Future<Either<LoginResponse, Failure>> userLogin({
    required String username,
    required String password,
  });
  Future<Either<SignUpResponse, Failure>> userSignup({
    required SignUpRequest signUpRequest,
  });

  Future<Either<RideResponse, Failure>> rideRequest({
    required RideRequest rideRequest,
  });

  Future<Either<ResuestlistResponse, Failure>> requestList();
}

class AuthRepository implements IAuthRepository {
  AuthRepository(Reader read) : _read = read;

  final Reader _read;
  HiveDataSource get _localDb => _read(localDataSourceNotifier);

  /// userlogin business logic
  @override
  Future<Either<LoginResponse, Failure>> userLogin({
    required String username,
    required String password,
  }) async {
    try {
      final url = Uri.parse(
        'http://20.24.200.114:8003/api/log_in/',
      );
      var requestBody = {
        'username': username,
        'password': password,
      };
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
        },
        body: requestBody,
      );
      final parsed = json.decode(response.body);
      final result = LoginResponse.fromJson(parsed as Map<String, dynamic>);
      _localDb.cacheAuthResponse(result);
      log(parsed.toString());
      return Left(result);
    } catch (e) {
      log(e.toString());
      return const Right(
        Failure(
          errorMessage: 'Something wen wrong !',
          errorCode: '',
        ),
      );
    }
  }

  /// new user sign up business logic
  @override
  Future<Either<SignUpResponse, Failure>> userSignup({
    required SignUpRequest signUpRequest,
  }) async {
    try {
      final url = Uri.parse(
        'http://20.24.200.114:8003/api/sign_up/',
      );
      var requestBody = {
        "username": signUpRequest.username,
        "password1": signUpRequest.password1,
        "password2": signUpRequest.password2,
        "email": signUpRequest.email,
        "first_name": signUpRequest.first_name,
        "last_name": signUpRequest.last_name,
        "group": signUpRequest.group,
      };
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
        },
        body: requestBody,
      );
      final parsed = json.decode(response.body);
      log(parsed.toString());
      final result = SignUpResponse.fromJson(parsed as Map<String, dynamic>);
      return Left(result);
    } catch (e) {
      return const Right(
        Failure(
          errorMessage: 'Something wen wrong !',
          errorCode: '',
        ),
      );
    }
  }

  /// ride requesting by passenger business logic
  @override
  Future<Either<RideResponse, Failure>> rideRequest({
    required RideRequest rideRequest,
  }) async {
    try {
      final url = Uri.parse(
        'http://20.24.200.114:8003/api/trip/create/',
      );
      var requestBody = {
        "pick_up_address": rideRequest.pick_up_address,
        "drop_off_address": rideRequest.drop_off_address,
        "price": rideRequest.price,
        "status": rideRequest.status,
      };
      final userResponse = await _localDb.getAuthResponse();
      final accessToken = userResponse?.access;
      final response = await http.post(
        url,
        headers: {
          'Accept': 'application/json',
          'Authorization': 'Bearer $accessToken ',
        },
        body: requestBody,
      );
      final parsed = json.decode(response.body);
      log(parsed.toString());
      final result = RideResponse.fromJson(parsed as Map<String, dynamic>);
      return Left(result);
    } catch (e) {
      return const Right(
        Failure(
          errorMessage: 'Something went wrong !',
          errorCode: '',
        ),
      );
    }
  }

  /// geeting all passenger request list business logic
  @override
  Future<Either<ResuestlistResponse, Failure>> requestList() async {
    try {
      final url = Uri.parse(
        'http://20.24.200.114:8003/api/trip/',
      );

      final userResponse = await _localDb.getAuthResponse();
      final accessToken = userResponse?.access;
      final response = await http.get(
        url,
        headers: {
          'Authorization': 'Bearer $accessToken ',
        },
      );
      final parsed = json.decode(response.body);
      log(parsed.toString());
      final result =
          ResuestlistResponse.fromJson(parsed as Map<String, dynamic>);
      return Left(result);
    } catch (e) {
      return const Right(
        Failure(
          errorMessage: 'Something went wrong !',
          errorCode: '',
        ),
      );
    }
  }
}
