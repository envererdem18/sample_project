import 'dart:convert';

class Author {
  int id;
  String name;
  String surname;
  Author({
    required this.name,
    required this.surname,
    required this.id,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'surname': surname,
    };
  }

  factory Author.fromMap(Map<String, dynamic> map) {
    return Author(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      surname: map['surname'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Author.fromJson(String source) => Author.fromMap(json.decode(source));
}
