import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';

class ListDua extends StatelessWidget {
  ListDua({super.key});

  final List<Map<String, dynamic>> listData = [
    {'color': Colors.orange, 'ormas': 'Ormas Jeruk'},
    {'color': Colors.blue, 'ormas': 'Ormas Blao'},
    {'color': Colors.red, 'ormas': 'Ormas Pdi'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List view builder',
      body: ListView.builder(
        itemCount: listData.length,
        itemBuilder: (context, i) {
          final data = listData[i];
          return Container(
            color: data['color'],
            width: 200,
            height: 200,
            child: Center(child: Text(data['ormas'])),
          );
        },
      ),
    );
  }
}
