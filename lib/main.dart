import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'perbedaan amalan puasa wajib dan puasa sunnah',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        canvasColor: Colors.blue.shade100,
      ),
    );
  }
}