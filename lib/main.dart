import 'package:flutter/material.dart';
import 'post_listview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Post List',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Post List'),
        ),
        body: const Center(child: PostListView()),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}