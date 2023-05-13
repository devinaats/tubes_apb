import 'package:flutter/material.dart';
import 'package:uts2/MyProfile/MyPref.dart';
import 'package:uts2/wisata/bromo.dart';
import 'package:uts2/wisata/wakatobi.dart';
import 'package:uts2/wisata/lembang.dart';


class MyProfile extends StatefulWidget {
  const MyProfile({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyProfile> createState() => _MyProfile();
}

class _MyProfile extends State<MyProfile> {
  final double coverHeight = 200;
  final double profileHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [navigasiSetting()],
        ),
        body: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            toppart(),
            contentprofile(),
            contentabout(),
            navigasiArea3(),
            navigasiArea2(),
            navigasiArea1()
          ],
        ));
  }
  Widget navigasiArea2() => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Bromo(),
        ),
      );
    },
    child: area2(),
  );

  Widget navigasiArea3() => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Wakatobi(),
        ),
      );
    },
    child: area3(),
  );

  Widget navigasiArea1() => InkWell(
    onTap: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Lembang(),
        ),
      );
    },
    child: area1(),
  );

  Widget navigasiSetting() => IconButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const MyPref(),
        ),
      );
    },
    icon: const Icon(
      Icons.settings,
      color: Colors.white,
    ),
  );

  Widget coverImage() => Container(
    color: Colors.grey,
    child: Image.network(
      'https://pbs.twimg.com/media/FBlKb9VWUAU0tBG.jpg',
      width: double.infinity,
      height: coverHeight,
      fit: BoxFit.cover,
    ),
  );

  Widget profileImage() => CircleAvatar(
      radius: profileHeight / 2,
      backgroundColor: Colors.grey,
      backgroundImage: const NetworkImage(
          'https://play-lh.googleusercontent.com/8ddL1kuoNUB5vUvgDVjYY3_6HwQcrg1K2fd_R8soD-e2QYj8fT9cfhfh3G0hnSruLKec'));

  Widget contentprofile() => Container(
    margin: const EdgeInsets.only(left: 130),
    //padding: EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const [
        Text(
          'Athalla'
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.left,
        ),
        Text(
          '3D Artist',
          style: TextStyle(fontSize: 16),
        ),
      ],
    ),
  );

  Widget contentabout() => Container(
    padding: const EdgeInsets.symmetric(horizontal: 30),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        const Text(
          'About Me',
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.left,
        ),
        const SizedBox(height: 10),
        const Text(
          'Perkenalkan nama saya Athalla saya seorang penjelajah yang senang mengunjungi berbagai tempat, saya juga sangat suka bermain game DLL',
          style: TextStyle(
            fontSize: 12,
            //fontFamily: 'pridi',
          ),
        ),
        const SizedBox(height: 40),
        Container(
          alignment: Alignment.center,
          child: const Text(
            'Favorite Place To Visit',
            style: TextStyle(
              fontSize: 20,
              //fontFamily: 'pridi',
            ),
          ),
        ),
      ],
    ),
  );

  Widget toppart() {
    final jartengah = coverHeight - profileHeight / 2;
    final jarkanan = coverHeight;
    final jarbawah = profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 0),
          //margin: EdgeInsets.only(bottom: jarbawah),
          child: coverImage(),
        ),
        Positioned(
          top: jartengah,
          left: 5,
          child: profileImage(),
        ),
      ],
    );
  }

  Widget settingicon() => IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.settings,
        color: Colors.white,
        size: 25,
      ));

  Widget area1() => Stack(
    children: <Widget>[
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          height: 100,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://www.pinhome.id/info-area/wp-content/uploads/2022/03/WIsata-ALam-Lembang.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 36),
          //alignment: Alignment.center,
          child: const Text(
            "Lembang",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      )
    ],
  );

  Widget area2() => Stack(
    children: <Widget>[
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          height: 100,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://storyblok-image.ef.com/unsafe/1500x750/filters:focal(960x375:961x376):quality(70)/f/78828/dd7b752616/ef-id-blog-top-banner-6-tips-wisata-ke-bromo-dari-malang.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 36),
          //alignment: Alignment.center,
          child: const Text(
            "Bromo",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      )
    ],
  );

  Widget area3() => Stack(
    children: <Widget>[
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 15),
          height: 100,
          width: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              'https://img.okezone.com/content/2021/09/16/25/2472201/4-daya-tarik-wakatobi-surga-wisata-di-timur-indonesia-j3JLuQsHI2.jpg',
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Center(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 36),
          //alignment: Alignment.center,
          child: const Text(
            "Wakatobi",
            style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
        ),
      )
    ],
  );
}
