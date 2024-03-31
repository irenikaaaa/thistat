import 'package:flutter/material.dart';
import 'package:tthat/home_page4.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: HomePage4(),
      ),
    );
  }
}
