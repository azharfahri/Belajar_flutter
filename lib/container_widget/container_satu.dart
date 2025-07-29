import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';

class ContainerSatu extends StatelessWidget {
  const ContainerSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Container satu',
        body: Container(
          margin: const EdgeInsets.all(10),
          color: Colors.blue,
          width: 200,
          height: 200,
          child: Container(
            margin: const EdgeInsets.all(8),
            color: Colors.red,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('text'),
              ),
            ),
          ),
        ));
  }
}
