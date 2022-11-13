import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/task4/task4_model.dart';
import 'package:task1/screens/task4/task4_screen.dart';

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
        body: FutureBuilder<List<Album>>(
          future: albumDataSource.fetchData(),
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Center(
                child: Text('An error has occurred!'),
              );
            } else if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) =>
                                Task4Screen(snapshot.data?[index].title)));
                      },
                      child: Text('${snapshot.data?[index].id}'));
                },
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
class AlbumDataSource {
  Future<List<Album>> fetchData() async {
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/albums'));
    final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

    return parsed.map<Album>((json) => Album.fromJson(json)).toList();
  }
}
