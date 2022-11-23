import 'package:flutter/material.dart';
import 'package:task1/cubit_task/presentation/router.dart';

void main() {
  runApp(BlocTask(
    router: AppRouter(),
  ));
}

class BlocTask extends StatelessWidget {
  final AppRouter router;

  const BlocTask({super.key, required this.router});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: router.generateRoute,
    );
  }
}
