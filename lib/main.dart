import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';
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

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext  context) {
    return MaterialApp(
     
      debugShowCheckedModeBanner: false,
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
         useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: TasksScreen(),
    );
  }
}
