import 'package:flutter/material.dart';
import './my_home_page_screen.dart';
import './shapes_screen.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                child: const Text("task 1"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Myhomepagescreen()));
                },
              ),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                child: const Text("task 2"),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ShapesScreen()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
