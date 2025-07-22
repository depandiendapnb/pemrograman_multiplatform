import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'post.dart';
import 'user.dart';

class PostListView extends StatelessWidget {
  const PostListView({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Post>>(
      future: _fetchPosts(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Post>? data = snapshot.data;
          return _postListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return const CircularProgressIndicator();
      },
    );
  }

  Future<List<Post>> _fetchPosts() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      print(jsonResponse.toString());
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts from API');
    }
  }

  ListView _postListView(data) {
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return _tile(
            context,
            data[index].userId,
            data[index].id,
            data[index].title,
            data[index].body,
            Icons.work
        );
      },
    );
  }

  ListTile _tile(
      BuildContext context,
      int userId,
      int id,
      String title,
      String body,
      IconData icon
      ) =>
      ListTile(
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        subtitle: Text(body),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
        onTap: () {
          final snackBar = SnackBar(
            duration: const Duration(seconds: 1),
            content: Text("Anda memilih postingan user_id: $userId!"),
          );
          ScaffoldMessenger.of(context).showSnackBar(snackBar);
        },
      );
}
