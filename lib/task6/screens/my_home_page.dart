import 'package:flutter/material.dart';
import 'package:task1/task6/model/task6.dart';

import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:task1/task6/list_of_data.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const appTitle = 'Isolate Demo';

    return MaterialApp(
      title: appTitle,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  Future<List<Task6>> fetchDatas() async {

    final response = await http.get(Uri.parse(
        'https://random-data-api.com/api/v2/users?size=40&is_xml=true'));
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Task6>((json) => Task6.fromJson(json)).toList();
//list of maps list<dynamic>
// final List<dynamic> jsonResponse=jsonDecode(response.body);
// print(jsonResponse);
// List<Task6> values = jsonResponse.map((e) => Task6.fromJson(e)).toList();
//     return values;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text('demo'),
      ),
      body: FutureBuilder<List<Task6>>(
        future: fetchDatas(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return ListOfData(data: snapshot.data!);
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
