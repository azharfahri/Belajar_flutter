import 'package:flutter/material.dart';
import 'package:flutter_fahri/container_widget/container_dua.dart';
import 'package:flutter_fahri/container_widget/container_satu.dart';
import 'package:flutter_fahri/grid_view/grid_contoh.dart';
import 'package:flutter_fahri/grid_view/grid_satu.dart';
import 'package:flutter_fahri/grid_view/latihan_grid1.dart';
import 'package:flutter_fahri/grid_view/list_latihan.dart';
import 'package:flutter_fahri/list_widget/list_dua.dart';
import 'package:flutter_fahri/list_widget/list_satu.dart';
import 'package:flutter_fahri/list_widget/list_screen.dart';
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LatihanGrid()
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
