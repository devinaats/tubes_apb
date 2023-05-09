import 'package:flutter/material.dart';

class Wakatobi extends StatefulWidget {
  const Wakatobi({Key? key}) : super(key: key);

  @override
  State<Wakatobi> createState() => _WakatobiState();
}

class _WakatobiState extends State<Wakatobi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Taman Nasional Wakatobi"),
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
              'https://img.okezone.com/content/2021/09/16/25/2472201/4-daya-tarik-wakatobi-surga-wisata-di-timur-indonesia-j3JLuQsHI2.jpg',
            ),
            height: 240,
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 16,
            right: 16,
            left: 16,
            child: Text(
              'Taman Nasional Wakatobi',
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
          'Taman Nasional Wakatobi adalah salah satu taman nasional di Indonesia. Letaknya di Kabupaten Wakatobi, Sulawesi Tenggara. Taman nasional ini ditetapkan pada tanggal 19 Agustus tahun 2002 berdasarkan Surat Keputusan Menteri kehutanan Nomor 7661/Kpts-II/2002. Lahan yang dipakai seluas 1,39 juta hektare. Sebelumnya, taman nasional ini juga telah ditetapkan oleh Surat Keputusan Menteri Kehutanan Nomor 393/Kpts-V/1996.',
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
          'Rassya Muhammad',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Gass berenang',
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
          'Rahmat Hidayat',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(
          'Banyak hidden gems spot nih disini.',
          style: TextStyle(
            fontSize: 16,
          ),
        ),
      ],
    ),
  ),
);
