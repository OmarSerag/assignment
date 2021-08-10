import 'dart:convert';

import 'package:http/http.dart' as http;

import 'model.dart';

Future<Weather> fetchData(String City) async {
  final response = await http
      .get(Uri.parse('http://api.openweathermap.org/data/2.5/weather?q=$City&appid=9c15af06166e304ab03ac7075db2b74a'));

  if (response.statusCode == 200) {

    return Weather.fromJson(jsonDecode(response.body));
  } else {

    throw Exception('Failed to load Weather');
  }
}