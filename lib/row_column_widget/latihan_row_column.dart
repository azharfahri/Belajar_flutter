

import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';
class LatihanColRow extends StatelessWidget{
  const LatihanColRow({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(title: 'Latihan', 
    body: Center(
      child: Container(
        height: 50,
        width: double.infinity,
        color: Colors.grey,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [
                Icon(Icons.call),
                Text('Call')
              ],
            ),
            Column(
              children: [
                Icon(Icons.navigation),
                Text('Route')
              ],
            ),
            Column(
              children: [
                Icon(Icons.share),
                Text('Share')
              ],
            )
        ]),
      )
      )
    ) ;
  }
}