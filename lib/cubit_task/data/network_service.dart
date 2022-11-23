import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkService {
  final String _baseUrl =
      "https://newsapi.org/v2/everything?q=tesla&from=2022-11-19&sortBy=publishedAt&apiKey=ad3148a76a954a9099370e2ba794bb9b";

  Future<dynamic> getData() async {
    final response = await http.get(Uri.parse(_baseUrl));
    // print(response.body);
    Map<String, dynamic> ArticlesMap = jsonDecode(response.body);
    return ArticlesMap;
  }
}
