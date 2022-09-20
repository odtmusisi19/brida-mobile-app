import 'package:brida/homepage.dart';
import 'package:flutter/material.dart';

void main() async {
  runApp(const MyApp());
  // print("object" is String);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Brida APP',
      home: HomePage(),
    );
  }
}
