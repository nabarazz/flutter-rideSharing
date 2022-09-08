// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';
//
// enum Flavor { DEV, PROD }
//
// class ConfigValues {
//   final String? urlsApiKey;
//   final String? googleMapsApiKey;
//   final String? realtimeDatabaseURL;
//
//   ConfigValues({
//     this.urlsApiKey,
//     this.googleMapsApiKey,
//     this.realtimeDatabaseURL,
//   });
// }
//
// class AppConfig {
//   final Flavor flavor;
//   final ConfigValues values;
//
//   static late AppConfig _instance;
//
//   static AppConfig get env => _instance;
//
//   AppConfig._internal({
//     required this.flavor,
//     required this.values,
//   });
//
//   factory AppConfig({required Flavor flavor}) {
//     ConfigValues values = ConfigValues(
//       urlsApiKey: AppConfig._buildUrlsApiKey(flavor),
//       googleMapsApiKey: AppConfig._buildGoogleMapsApiKey(flavor),
//       realtimeDatabaseURL: _buildRealtimeDatabaseURL(flavor),
//     );
//     _instance;
//     return _instance;
//   }
//
//   static String? _buildUrlsApiKey(Flavor flavor) {
//     if (flavor == Flavor.DEV) {
//       return dotenv.env["DEV_URLS_API_KEY"];
//     }
//     if (flavor == Flavor.PROD) {
//       return dotenv.env["URLS_API_KEY"];
//     }
//     return "";
//   }
//
//   static String? _buildRealtimeDatabaseURL(Flavor flavor) {
//     if (flavor == Flavor.DEV) {
//       return dotenv.env["DEV_REALTIME_DATABASE_BASE_URL"];
//     }
//     if (flavor == Flavor.PROD) {
//       return dotenv.env["REALTIME_DATABASE_BASE_URL"];
//     }
//     return "";
//   }
//
//   static String? _buildGoogleMapsApiKey(Flavor flavor) {
//     if (flavor == Flavor.DEV) {
//       if (Platform.isAndroid) {
//         return dotenv.env["DEV_ANDROID_GOOGLE_MAPS_API_KEY"];
//       } else if (Platform.isIOS) {
//         return dotenv.env["DEV_IOS_GOOGLE_MAPS_API_KEY"];
//       }
//     }
//     if (flavor == Flavor.PROD) {
//       if (Platform.isAndroid) {
//         return dotenv.env["ANDROID_GOOGLE_MAPS_API_KEY"];
//       } else if (Platform.isIOS) {
//         return dotenv.env["IOS_GOOGLE_MAPS_API_KEY"];
//       }
//     }
//     return "";
//   }
// }

String MAPBOX_ACCESS_TOKEN =
    "pk.eyJ1IjoibmFicmF6Ymg5OTUiLCJhIjoiY2w2eWprZXZ4MHc5dDNjcGR3NHhsYnliaCJ9.YrC-YFkMAP6mTf3dABhHxA";
