// gridview_example.dart
import 'package:flutter/material.dart';
import 'package:flutter_fahri/grid_view/latihan_detail.dart';
import 'package:flutter_fahri/main_layout.dart';

class GridLatihan extends StatelessWidget {
  const GridLatihan({super.key});

  final List<Map<String, dynamic>> reseps = const [
    {
      'name': 'Cumi asam manis',
      'deskripsi': 'Cumi yang dimasak dengan bumbu asam manis',
      'alat': ['katel', 'piring'],
      'bahan': ['300 gr cumi-cumi', '1 buah jeruk nipis'],
      'carabuat': 'Potong-potong cumi dan lumuri dengan air jeruk nipis. Diamkan selama 15 menit, bilas bersih. Tumis bawang bombay hingga agak layu, masukkan bawang putih dan bawang merah. Tumis hingga matang. Masukkan cabai rawit dan tomat, masak hingga matang. Masukkan cumi dan aduk rata dengan bumbu. Tuang bahan bumbu, aduk rata hingga mendidih. Tuang air secukupnya dan masak hingga saus mengental. Tes rasa, jika sudah pas, angkat.',
      'image': 'https://picsum.photos/200?1'
    },
    {
      'name': 'Bakwan jagung',
      'deskripsi': 'Cemilan untuk ngopi',
      'alat': ['Wajan, piring'],
      'bahan': ['Terigu, garam, jagung, minyak'],
      'carabuat': 'Campurkan terigu, garam dan jagung, lalu masukan minya ke wajan tunggu hingga panas, masukan adonan, tunggu hingga golden brown, angkat dan tiriskan jika sudah matang.',
      'image': 'https://picsum.photos/200?2'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Resep Makanan',
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: reseps.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // 2 kolom
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: 0.8,
          ),
          itemBuilder: (context, index) {
            final resep = reseps[index];
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => DetailResep(data: resep),
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
                          resep['image']!,
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
                            resep['name']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            resep['deskripsi']!,
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
