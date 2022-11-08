import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:task1/screens/task4/task4_screen.dart';

// void main() => runApp(Task4_Buttons());

class Task4_Buttons extends StatefulWidget {
  @override
  State<Task4_Buttons> createState() => _MyAppState();
}

class _MyAppState extends State<Task4_Buttons> {
  AlbumDataSource albumDataSource = AlbumDataSource();
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('albums')),
        body:FutureBuilder<dynamic>(
          future:albumDataSource.fetchData() ,
                builder: (context, snapshot) {
                   if (snapshot.hasData) {
                return Text(snapshot.data!['title'] ?? "");
              } else if (snapshot.hasError) {
                return Text('${snapshot.error}');
              }

              // By default, show a loading spinner.
              return Center(child: const CircularProgressIndicator());
                  // return ListTile(
                  //       onTap: (() {
                  //         Navigator.of(context).push(
                  //           MaterialPageRoute(
                  //             builder: (context) => Task4Screen(
                  //                 snapshot.data?.title.toString() ?? ""),
                  //           ),
                  //         );
                  //       }),
                  //       title: Text(snapshot.data?.id.toString() ?? ""),
                  //     );
                },
              ),
      ),
    );
  }
}

class AlbumDataSource {
  Future<dynamic> fetchData() async {
    try {
      Response response = await http
          .get(Uri.parse(('https://jsonplaceholder.typicode.com/albums')));
      return Album.fromJson(jsonDecode(response.body));
    } catch (error) {
      throw Exception(error);
    }
  }
}

class Album {
  final int? userId;
  final int? id;
  final String? title;

  const Album({
    required this.userId,
    required this.id,
    required this.title,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}
