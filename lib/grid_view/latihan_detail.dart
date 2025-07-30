import 'package:flutter/material.dart';
import 'package:flutter_fahri/main_layout.dart';

class DetailResep extends StatelessWidget {
  final Map<String, dynamic> data;
  const DetailResep({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final List<String> alatList = List<String>.from(data['alat']);
    final List<String> bahanList = List<String>.from(data['bahan']);

    return MainLayout(
      title: data['name'],
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // Gambar
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage(data['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: 16),

          // Deskripsi
          Text(
            data['deskripsi'] ?? '',
            style: const TextStyle(fontSize: 16),
          ),
          const SizedBox(height: 16),

          // Alat dan Bahan
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Alat
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Alat',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    for (var item in alatList) Text('• $item'),
                  ],
                ),
              ),
              const SizedBox(width: 20),

              // Bahan
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('Bahan',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    for (var item in bahanList) Text('• $item'),
                  ],
                ),
              ),
            ],
          ),

          const SizedBox(height: 20),

          // Cara membuat
          const Text('Cara Membuat',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          Text(
            data['carabuat'] ?? '',
            textAlign: TextAlign.justify,
            style: const TextStyle(fontSize: 14),
          ),
        ],
      ),
    );
  }
}
