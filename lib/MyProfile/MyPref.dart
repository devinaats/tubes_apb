import 'package:flutter/material.dart';

class MyPref extends StatelessWidget {
  const MyPref({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Profile Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Profile Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final double coverHeight = 200;
  final double profileHeight = 120;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Pengaturan"),
        ),
        body: ListView(padding: EdgeInsets.all(8), children: <Widget>[
          pengaturan(),
          button1(),
          button2(),
          buttonemail(),
          buttonpass(),
          buttonnama(),
          buttontitle(),
          buttonabout(),
          buttonlogout(),
        ]));
  }

  Widget pengaturan() => Container(
    alignment: Alignment.center,
    padding: const EdgeInsets.symmetric(vertical: 15),
    child: const Text(
      'Pengaturan',
      style: TextStyle(
        fontSize: 20,
        //fontFamily: 'pridi',
      ),
    ),
  );

  Widget button1() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.photo_size_select_actual),
        label: Text('Ubah Foto Profil'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget button2() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.photo_size_select_actual_outlined),
        label: Text('Ubah Foto Background'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttonemail() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.email_outlined),
        label: Text('Ubah Email'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttonnama() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.person),
        label: Text('Ubah Nama'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttonpass() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.password),
        label: Text('Ubah Password'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttontitle() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.work),
        label: Text('Ubah Title'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttonabout() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.contact_page_sharp),
        label: Text('Ubah Perkenalan'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget buttonlogout() => Center(
    child: Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      width: 210,
      child: RaisedButton.icon(
        onPressed: () {},
        icon: Icon(Icons.logout),
        label: Text('Logout'),
        color: Colors.grey[350],
      ),
    ),
  );

  Widget backicon() => IconButton(
      alignment: Alignment.topLeft,
      onPressed: () {},
      icon: Icon(
        Icons.arrow_back,
        color: Colors.grey.shade600,
        size: 25,
      ));
}
