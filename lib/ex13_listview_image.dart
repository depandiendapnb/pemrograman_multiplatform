import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Listview Image App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo Listview Image'),
      ),
      body: ListView(
        children: <Widget>[
          Image.asset(
            'images/logo_kemdikbud.jpg',
            height: 250.0,
            fit: BoxFit.fitHeight,
          ),
          /*Container(
            color: Colors.grey,
            margin: const EdgeInsets.only(top: 10.0,bottom: 10.0),
            height: 0.5,
          ),*/
          const Divider(),
          Image.asset(
            'images/logo_polbeng.png',
            height: 250.0,
            fit: BoxFit.fitHeight,
          ),
        ],
      ),
    );
  }
}
