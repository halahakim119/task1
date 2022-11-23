import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'data/repositories/user_repository.dart';
import 'presentation/widgets/home_screen.dart';


void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
const MyApp({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
  return MaterialApp(
   
    home: RepositoryProvider(
      create: (context) => UserRepository(),
      child: const Home(),
    ),
  );
}
}

