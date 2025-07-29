import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';

class StackThree extends StatelessWidget {
  const StackThree({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Image With Stack',
      body: Stack(
        children: [
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRsB9xWMWcViX00eQHKrVjRb9L0ekxgN8b2PA&s'
          ),
          Positioned(
            bottom: 10,
            left: 10,
            child: Text('ngetes'),
          )
        ],
      )
    );
  }
}
