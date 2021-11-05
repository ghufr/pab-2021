import 'dart:convert';

import 'package:test1/tugas6/models/post.dart';

class PostDataSource {
  getPosts() {
    String rawJson = '''[
    {
      "title": "Title one",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor.",
      "image": "https://picsum.photos/seed/111/300/180?grayscale"
    },
    {
      "title": "Title two",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor.",
      "image": "https://picsum.photos/seed/222/300/180?grayscale"
    },
    {
      "title": "Title three",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor.",
      "image": "https://picsum.photos/seed/333/300/180?grayscale"
    },
    {
      "title": "Title four",
      "description": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla auctor.",
      "image": "https://picsum.photos/seed/444/300/180?grayscale"
    }
  ]''';

    return List<Post>.from(json.decode(rawJson).map((x) => Post.fromJson(x)));
  }
}
