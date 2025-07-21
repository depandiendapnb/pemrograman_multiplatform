import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Widget App',
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('RPL 6C Flutter'),
        ),
        body: const Center(
          child: Text(
            'Rekayasa Perangkat Lunak',
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 25.0,
              fontStyle: FontStyle.italic,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
