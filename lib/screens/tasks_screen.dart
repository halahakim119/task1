import 'package:flutter/material.dart';
import 'package:task1/widgets/task5/api_widget.dart';
import 'package:task1/widgets/task4/task4_buttons.dart';
import '../core/common/widget/instagram_layout.dart';
import 'task1/my_home_page_screen.dart';
import 'task2_shapes/shapes_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                child: const Text("task 1"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Myhomepagescreen()));
                },
              ),
              ElevatedButton(
                child: const Text("task 2"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ShapesScreen()));
                },
              ),
              ElevatedButton(
                child: const Text("task 3"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => InstagramLayout()));
                },
              ),
              ElevatedButton(
                child: const Text("task 4"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Task4_Buttons()));
                },
              ),
              ElevatedButton(
                child: const Text("task 5"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) =>  Task5()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

