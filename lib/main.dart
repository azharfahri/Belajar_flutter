import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HelloFlutter()
    );
  }
}

class HelloFlutter extends StatelessWidget {
  const HelloFlutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Belajar Flutter',
      body: Center(
        child: Text(
          'hello flutter',
          style: TextStyle(
            fontSize: 24,
            color: Colors.white,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.blue,
          ),
          ),
      ),
    );
  }
}
