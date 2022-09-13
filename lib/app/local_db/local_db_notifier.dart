import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';

/// hive db (local db) class notifier
final localDataSourceNotifier = Provider((ref) => HiveDataSource());

class HiveDataSource extends ChangeNotifier {
  /// user login response data cache
  cacheAuthResponse(LoginResponse item) async {
    var cacheBox = await Hive.openBox<LoginResponse>('AUTH_RESPONSE_BOX');
    cacheBox.put('authResponse', item);
    cacheBox.close();
    notifyListeners();
  }

  /// user login response data from cache
  Future<LoginResponse?> getAuthResponse() async {
    final getBox = await Hive.openBox<LoginResponse>('AUTH_RESPONSE_BOX');
    final authRes = getBox.get('authResponse');
    getBox.close();
    return authRes;
  }

  ///clearing the user login response data
  Future<void> clearCacheData() async {
    final getBox = await Hive.openBox<LoginResponse>('AUTH_RESPONSE_BOX');
    const data =
        LoginResponse(refresh: '', access: '', username: '', email: '', id: 0);
    getBox.put('authResponse', data);
    cacheAuthResponse(data);
  }
}
