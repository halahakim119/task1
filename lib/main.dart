import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:task1/screens/my_home_page_screen.dart';
import 'package:task1/screens/shapes_screen.dart';
import './screens/tasks_screen.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
        supportedLocales: const [
          Locale('en'),
          Locale('ar'),
        ],
        path: 'assets/translation',
        fallbackLocale: Locale('en'),
        child: MyApp()),
  );
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TasksScreen(),
      // routes: {
      //     Myhomepagescreen.routename: (ctx) => Myhomepagescreen(),
      //     ShapesScreen.routename: (ctx) => ShapesScreen(),
      //   },
    );
  }
}
//test

