import 'package:flutter/material.dart';

class Task4Screen extends StatelessWidget {
  String? title;
  Task4Screen(this.title);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: const Text('title')),
        body: Center(
          child: Text(title??'no title available'),
        ),
      ),
    );
  }
}
