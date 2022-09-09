import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:ridesharingv1/features/infrastructure/entities/login_response/login_response.dart';

final localDataSourceNotifier = Provider((ref) => HiveDataSource());

class HiveDataSource extends ChangeNotifier {
  cacheAuthResponse(LoginResponse item) async {
    var cacheBox = await Hive.openBox<LoginResponse>('AUTH_RESPONSE_BOX');
    cacheBox.put('authResponse', item);
    cacheBox.close();
    notifyListeners();
  }

  Future<LoginResponse?> getAuthResponse() async {
    final getBox = await Hive.openBox<LoginResponse>('AUTH_RESPONSE_BOX');
    final authRes = getBox.get('authResponse');
    getBox.close();
    return authRes;
  }
}
