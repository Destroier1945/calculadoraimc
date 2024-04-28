import 'package:calculadoraimc/pages/homepage.dart';
import 'package:calculadoraimc/pages/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomePage(title: Text(''),),
    routes: <String, WidgetBuilder>{
      '/home': (BuildContext context) => const HomePage(title: Text('')),
      '/result': (BuildContext context) => const Result(title: Text(''),)

    },
    );
  }
}
