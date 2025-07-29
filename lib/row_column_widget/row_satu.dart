import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';
class RowOne extends StatelessWidget{
  const RowOne({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainLayout(
      title: 'Row Satu',
      body: Row(
        // mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          Text('Text Widget 1'),
          Text('Text Widget 2'),
          Text('Text Widget 3'),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
            Text('Text Wc 1'),
            Text('Text Wc 2'),
          ],)
        ],
      ),
    ) ;
  }
}