import 'package:flutter/material.dart';
import 'package:flutter_fahri/container_widget/container_dua.dart';
import 'package:flutter_fahri/container_widget/container_satu.dart';
import 'package:flutter_fahri/main_layout.dart';
import 'package:flutter_fahri/stack_widget/stack_dua.dart';
import 'package:flutter_fahri/stack_widget/stack_satu.dart';
import 'package:flutter_fahri/stack_widget/stack_tiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StackThree()
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
