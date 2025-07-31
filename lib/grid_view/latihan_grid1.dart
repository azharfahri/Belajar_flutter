// gridview_example.dart
import 'package:flutter/material.dart';
import 'package:flutter_fahri/grid_view/list_latihan.dart';
import 'package:flutter_fahri/main_layout.dart';

class LatihanGrid extends StatelessWidget {
  const LatihanGrid({super.key});

  final List<Map<String, String>>lists = const [
    {'name': 'Makanan', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJqcIxwbaPXKdsb38qdh1iPDTaxr3rvd60FA&s'},
    {'name': 'Minuman', 'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSl_y7ImqssAHD22SVtNoOB0BtuO7hPw6dhTA&s'},
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Resep',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
            itemCount:lists.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, // 2 kolom
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.8,
            ),
            itemBuilder: (context, index) {
              final list =lists[index];
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => ListLatihan(kategori: list['name']!),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.grey[100],
                    boxShadow: const [
                      BoxShadow(color: Colors.black12, blurRadius: 6)
                    ],
                  ),
                  child: Stack(
                    children: [
                      // Background image
                      Positioned.fill(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Image.network(
                            list['image']!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),

                      // Overlay
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.black.withOpacity(0.2),
                        ),
                      ),

                      // Price & Name
                      Positioned(
                        bottom: 10,
                        left: 10,
                        right: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list['name']!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
