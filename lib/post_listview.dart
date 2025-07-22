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
    return FutureBuilder<List<dynamic>>(
      future: Future.wait([_fetchPosts(), _fetchUserById(1)]),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        } else if (snapshot.hasData) {
          List<Post>? data = snapshot.data![0];
          return _postListView(data);
        } else {
          return const Text("No data available!");
        }
      },
    );
  }

  Future<List<Post>> _fetchPosts() async {
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/posts');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      //print(jsonResponse.toString());
      return jsonResponse.map((post) => Post.fromJson(post)).toList();
    } else {
      throw Exception('Failed to load posts from API');
    }
  }

  Future<User> _fetchUserById(int id) async{
    var uri = Uri.parse('https://jsonplaceholder.typicode.com/users/$id');
    final response = await http.get(uri);
    if (response.statusCode == 200) {
      return User.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load user from API');
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
          'Post ID: $id',
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        subtitle: Text(title),
        leading: Icon(
          icon,
          color: Colors.blue[500],
        ),
        onTap: () async {
          final user = await _fetchUserById(userId);
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: Text('Post Details By : ${user.name}'),
              content: Text(body),
              actions: [
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: Text('Close'),
                ),
              ],
            ),
          );
        },
      );
}
