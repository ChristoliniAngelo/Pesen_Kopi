import 'package:flutter/material.dart';
import 'package:pesen_kopi/pages/masuk.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: Masuk(),
      theme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.orange),
    );
  }
}
