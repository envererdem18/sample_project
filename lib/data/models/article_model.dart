import 'dart:convert';

import 'author_model.dart';

class Article {
  int id;
  String title;
  String desc;
  Author author;
  String type;
  Article({
    required this.title,
    required this.desc,
    required this.author,
    required this.type,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'desc': desc,
      'author': author.toMap(),
      'type': type,
    };
  }

  factory Article.fromMap(Map<String, dynamic> map) {
    return Article(
      id: map['id']?.toInt() ?? 0,
      title: map['title'] ?? '',
      desc: map['desc'] ?? '',
      author: Author.fromMap(map['author']),
      type: map['type'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Article.fromJson(String source) =>
      Article.fromMap(json.decode(source));
}
