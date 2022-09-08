import 'dart:convert';
import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;
import 'package:ridesharingv1/app/failure.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_res.dart';

final authRepository = Provider((ref) {
  return AuthRepository(ref.read);
});

abstract class IAuthRepository {
  Future<Either<LoginResponse, Failure>> userLogin({
    required String username,
    required String password,
  });
}

class AuthRepository implements IAuthRepository {
  AuthRepository(Reader read) : _read = read;

  // ignore: unused_field
  final Reader _read;

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
      return Left(result);
    } catch (e) {
      log(e.toString());
      return const Right(
        Failure(
          errorMessage: 'Failed !!!',
          errorCode: '',
        ),
      );
    }
  }
}
