import 'package:flutter/material.dart';

class Lembang extends StatefulWidget {
  const Lembang({Key? key}) : super(key: key);

  @override
  State<Lembang> createState() => _LembangState();
}

class _LembangState extends State<Lembang> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Lembang"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [ImageQuoteCard(), Komentar(), QuoteCard(), QuoteCard1()],
      ),
    );
  }
}

Widget Komentar() => Container(
  alignment: Alignment.center,
  padding: const EdgeInsets.symmetric(vertical: 15),
  child: const Text(
    'Komentar',
    style: TextStyle(
      fontSize: 16,
    ),
  ),
);
Widget ImageQuoteCard() => Card(
  clipBehavior: Clip.antiAlias,
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(24),
  ),
  child: Column(
    children: [
      Stack(
        children: [
          Ink.image(
            image: NetworkImage(
              'https://www.pinhome.id/info-area/wp-content/uploads/2022/03/WIsata-ALam-Lembang.jpg',
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              'Lembang',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
        ],
      ),
      Padding(
        padding: EdgeInsets.all(16).copyWith(bottom: 0),
        child: Text(
          'Lembang adalah sebuah kecamatan di Kabupaten Bandung Barat, Jawa Barat, Indonesia. Kecamatan ini berjarak sekitar 22 Kilometer dari ibu kota kabupaten Bandung Barat ke arah timur laut melalui Cisarua. Pusat pemerintahannya berada di Desa Lembang. Kecamatan Lembang merupakan kecamatan paling timur dan terkenal sebagai tujuan wisata di Jawa Barat.',
          style: TextStyle(fontSize: 16),
        ),
      ),
      ButtonBar(
        alignment: MainAxisAlignment.start,
        children: [
          TextButton(
            child: Text('Tambah ke Favorite'),
            onPressed: () {},
          ),
          TextButton(
            child: Text('Lihat di Map'),
            onPressed: () {},
          )
        ],
      )
    ],
  ),
);
Widget QuoteCard() => Card(
  child: Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Athalla',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Akhirnya liburan juga, temen ada yang nitip beli bolu lembang nih ',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
);
Widget QuoteCard1() => Card(
  child: Padding(
    padding: EdgeInsets.all(12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Devina',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Lepaskan semua penat hidup ini di Lembang, rekomendasi buat tempat cari inspirasi.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
);

