import 'package:flutter/material.dart';
import 'package:flutter_learning_1/widgets/Home.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.light, primaryColor: Colors.grey),
      home:Home(),
    );
  }
}
