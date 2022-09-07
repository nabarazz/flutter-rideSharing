import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

class LocationService {
  // LocationService();
  final String _apiKey = 'AIzaSyChoCNXiNNpq6LMqcFQKy1_D4SjSBWuyYU';

  Future<String> getPlaceId(String input) async {
    final String url =
        'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputted=textquery&fields=place_id&key=$_apiKey';
    var response = await http.get(Uri.parse(url));
    // if (response.statusCode == 200) {
    var json = convert.jsonDecode(response.body);

    var placeId = json['candidates'][0]['place_id'] as String;
    print(placeId);
    return placeId;
    // } else {
    //   throw Exception('Failed to load place id');
    // }
  }

  // Future<Map<String, dynamic>> getPlace(String input) async {
  //   final placeId = await getPlace(input);
  //   final String url =
  //       'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&fields=name,formatted_address,geometry&key=$_apiKey';
  //   var response = await http.get(Uri.parse(url));
  //
  //   // if (response.statusCode == 200) {
  //   final json = convert.jsonDecode(response.body);
  //
  //   var result = json['result'] as Map<String, dynamic>;
  //   print(result);
  //   return result;
  //   // } else {
  //   //   throw Exception('Failed to load place');
  //   // }
  // }
}
