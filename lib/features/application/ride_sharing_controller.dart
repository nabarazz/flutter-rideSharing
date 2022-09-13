import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ridesharingv1/core/base_state/base_state.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/request_list_response/request_list_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/ride_request/ride_request.dart';
import 'package:ridesharingv1/features/infrastructure/entities/ride_response/ride_response.dart';
import 'package:ridesharingv1/features/infrastructure/entities/signup_request/signup_request.dart';
import 'package:ridesharingv1/features/infrastructure/entities/signup_response/signup_response.dart';
import 'package:ridesharingv1/features/infrastructure/repository/auth_repository.dart';

AuthController<T> authController<T>(Ref ref) {
  return AuthController(
    ref.read,
  );
}

class AuthController<T> extends StateNotifier<BaseState> {
  AuthController(this._read) : super(const BaseState<void>.initial());
  final Reader _read;

  IAuthRepository get _authRepository => _read(authRepository);

  Future<void> userLogin({
    required String username,
    required String password,
  }) async {
    state = const BaseState.loading();

    final response = await _authRepository.userLogin(
      username: username,
      password: password,
    );
    state = response.fold(
      (data) => BaseState<LoginResponse>.success(data: data),
      (error) => BaseState.error(
        error,
      ),
    );
  }

  Future<void> newUserSignUp({
    required SignUpRequest signUpRequest,
  }) async {
    state = const BaseState.loading();

    final response = await _authRepository.userSignup(
      signUpRequest: signUpRequest,
    );
    state = response.fold(
      (data) => BaseState<SignUpResponse>.success(data: data),
      (error) => BaseState.error(
        error,
      ),
    );
  }

  Future<void> requestRide({
    required RideRequest rideRequest,
  }) async {
    state = const BaseState.loading();

    final response = await _authRepository.rideRequest(
      rideRequest: rideRequest,
    );
    state = response.fold(
      (data) => BaseState<RideResponse>.success(data: data),
      (error) => BaseState.error(
        error,
      ),
    );
  }

  Future<void> getRequestList() async {
    state = const BaseState.loading();

    final response = await _authRepository.requestList();
    state = response.fold(
      (data) => BaseState<ResuestlistResponse>.success(data: data),
      (error) => BaseState.error(
        error,
      ),
    );
  }
}
