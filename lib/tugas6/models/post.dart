class Post {
  String title, description, image;

  Post({required this.title, this.description = '', required this.image});

  factory Post.fromJson(Map<String, dynamic> json) => Post(
      title: json["title"],
      description: json["description"],
      image: json["image"]);
}
