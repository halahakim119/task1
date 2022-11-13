import 'dart:async';
import 'dart:convert';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:task1/models/task5/photo.dart';

class PhotoDataSource {
  Future<List<Photo>> fetchData() async {
    try {
      final response = await http
          .get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
      final parsed = jsonDecode(response.body).cast<Map<String, dynamic>>();

      return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
    } catch (error) {
      throw Exception(error);
    }
  }
}

class Task5 extends StatelessWidget {
  PhotoDataSource photosDataSource = PhotoDataSource();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task5'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: photosDataSource.fetchData(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return const Center(
              child: Text('An error has occurred!'),
            );
          } else if (snapshot.hasData) {
            return PhotosList(photos: snapshot.data!);
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

class PhotosList extends StatelessWidget {
  List<Photo>? photos;
  PhotosList({super.key, this.photos});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: photos!.length,
      itemBuilder: (context, index) {
        print(photos![index].thumbnailUrl);
        return CachedNetworkImage(
          imageUrl: photos![index].thumbnailUrl ??
              'http://www.sanjeev.net/colors/color-midnight.jpg',
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
          imageBuilder: (context, imageProvider) => Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
            ),
          ),
        );
      },
    );
  }
}
