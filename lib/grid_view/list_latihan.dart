import 'package:flutter/material.dart';
import 'package:flutter_fahri/grid_view/latihan_detail.dart';

import 'package:flutter_fahri/main_layout.dart';

class ListLatihan extends StatelessWidget {
  final String kategori;

  ListLatihan({super.key, required this.kategori});

  final List<Map<String, dynamic>> reseps = [
    {
      'kategori':'makanan',
      'name': 'Cumi asam manis',
      'deskripsi': 'Cumi yang dimasak dengan bumbu asam manis',
      'alat': ['katel', 'piring'],
      'bahan': ['300 gr cumi-cumi', '1 buah jeruk nipis'],
      'carabuat':
          'Potong-potong cumi dan lumuri dengan air jeruk nipis. Diamkan selama 15 menit, bilas bersih. Tumis bawang bombay hingga agak layu, masukkan bawang putih dan bawang merah. Tumis hingga matang. Masukkan cabai rawit dan tomat, masak hingga matang. Masukkan cumi dan aduk rata dengan bumbu. Tuang bahan bumbu, aduk rata hingga mendidih. Tuang air secukupnya dan masak hingga saus mengental. Tes rasa, jika sudah pas, angkat.',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSY1jQhHnexocbDH-bYAKmOhvzdIOrv8iNNNA&s'
    },
    {
      'kategori': 'makanan',
      'name': 'Bakwan jagung',
      'deskripsi': 'Cemilan untuk ngopi',
      'alat': ['Wajan, piring'],
      'bahan': ['Terigu, garam, jagung, minyak'],
      'carabuat':
          'Campurkan terigu, garam dan jagung, lalu masukan minya ke wajan tunggu hingga panas, masukan adonan, tunggu hingga golden brown, angkat dan tiriskan jika sudah matang.',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTF-VYlmWzJ5sEPffOtb6gSc6J6VPClEKm7PA&s'
    },
    {
      'kategori': 'minuman',
      'name': 'Nurdin',
      'deskripsi': 'Nustrisari Dingin',
      'alat': ['Gelas'],
      'bahan': ['nutrisari, air, es batu'],
      'carabuat':
          'Masukan nutrisari kedalam gelas, lalu tambahkan air, aduk hingga merata, tambahkan es batu, Nurdin siap diminum.',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwNNsUbOdEp9HANgMWF5Mt01t35QAOxkwmRw&s'
    },
    {
      'kategori': 'minuman',
      'name': 'Nescafe Americano',
      'deskripsi': 'Opieun',
      'alat': ['Gelas, Sendok'],
      'bahan': ['Nescafe classic, Air panas'],
      'carabuat':
          'Masukan nescafe kedalam gelas, masukan air panas, aduk, Siap ngopi.',
      'image': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlvXERQzOgFxbpu5PF8j5k22BerwAaCNmWHw&s'
    },
  ];
  @override
Widget build(BuildContext context) {
  final filteredReseps = reseps.where((resep) => resep['kategori'] == kategori.toLowerCase()).toList();

  return MainLayout(
    title: 'Resep $kategori',
    body: ListView.builder(
      itemCount: filteredReseps.length,
      itemBuilder: (context, index) {
        final resep = filteredReseps[index];
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
            margin: const EdgeInsets.all(10),
            height: 120,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(color: Colors.black12, blurRadius: 6)
              ]
            ),
            child: Row(
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(resep['image']!),
                      fit: BoxFit.cover,
                    )
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(resep['name']!,
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold
                          ),
                        ),
                        const SizedBox(height: 5),
                        Text(resep['deskripsi']!,
                          style: const TextStyle(
                            fontSize: 16, fontWeight: FontWeight.normal
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    ),
  );
}

}
