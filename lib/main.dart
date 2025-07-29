import 'package:flutter/material.dart';
import 'package:flutter_fahri/container_widget/container_dua.dart';
import 'package:flutter_fahri/container_widget/container_satu.dart';
import 'package:flutter_fahri/main_layout.dart';
import 'package:flutter_fahri/row_column_widget/column_satu.dart';
import 'package:flutter_fahri/row_column_widget/latihan_course_card.dart';
import 'package:flutter_fahri/row_column_widget/latihan_row_column.dart';
import 'package:flutter_fahri/row_column_widget/latihan_satu.dart';
import 'package:flutter_fahri/row_column_widget/row_satu.dart';
import 'package:flutter_fahri/stack_widget/stack_dua.dart';
import 'package:flutter_fahri/stack_widget/stack_satu.dart';
import 'package:flutter_fahri/stack_widget/stack_tiga.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LatihanCourse()
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
