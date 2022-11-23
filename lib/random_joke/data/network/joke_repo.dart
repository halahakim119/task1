import 'package:task1/random_joke/data/models/random_joke.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;

class JokeRepo {
  final String _baseUrl = "https://official-joke-api.appspot.com/random_joke";

  Future<RandomJoke> getJoke() async {
    final response = await http.get(Uri.parse(_baseUrl));

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      var result = RandomJoke.fromJson(data);
      print(result);
      return result;
    } else {
      throw Exception('Failed to load Joke');
    }
  }
}
