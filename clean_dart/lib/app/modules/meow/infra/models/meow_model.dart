import 'dart:convert';

import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';

class MeowModel extends Meow {
  final String file;

  MeowModel({this.file = 'https://purr.objects-us-east-1.dream.io/i/MQjGr.jpg'});

  Map<String, dynamic> toMap() {
    return {
      'file': file,
    };
  }

  factory MeowModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return MeowModel(
      file: map['file'],
    );
  }

  String toJson() => json.encode(toMap());

  factory MeowModel.fromJson(String source) => MeowModel.fromMap(json.decode(source));
}
