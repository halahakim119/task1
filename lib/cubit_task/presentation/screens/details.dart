import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  var data;

  Details({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('artile detail')),
      body: Center(child: Text(data.author.toString())),
    );
  }
}
