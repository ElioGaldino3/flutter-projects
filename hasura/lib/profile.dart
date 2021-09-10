import 'dart:convert';

Profile profileFromMap(String str) => Profile.fromMap(json.decode(str));

String profileToMap(Profile data) => json.encode(data.toMap());

class Profile {
  Profile({
    required this.id,
    required this.name,
  });

  int id;
  String name;

  factory Profile.fromMap(Map<String, dynamic> json) => Profile(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
      };

  static List<Profile> fromMapList(List list) {
    return list.map((e) => Profile.fromMap(e)).toList();
  }
}
