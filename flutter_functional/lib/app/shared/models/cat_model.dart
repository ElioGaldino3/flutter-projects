import 'dart:convert';

class CatModel {
  String file;
  CatModel({
    this.file,
  });

  Map<String, dynamic> toMap() {
    return {
      'file': file,
    };
  }

  factory CatModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return CatModel(
      file: map['file'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CatModel.fromJson(String source) =>
      CatModel.fromMap(json.decode(source));
}
