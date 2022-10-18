import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'package:gloify_new_porject/data/post.dart' as global;
import 'package:gloify_new_porject/model/post.dart';

class AllPost with ChangeNotifier {
  Future<void> loadAllData() async {
    final client = http.Client();
    Uri apiLink =
        Uri.parse('https://my-json-server.typicode.com/typicode/demo/posts');
    final response = await client.get(apiLink);
    if (response.statusCode == 200) {
      global.myPost = postFromJson(response.body);
    }
  }
}
