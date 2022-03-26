// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'director_entity.freezed.dart';
part 'director_entity.g.dart';

@freezed
abstract class DirectorEntity with _$DirectorEntity {
  factory DirectorEntity({
    required String name,
    required int age,
  }) = _DirectorEntity;

  factory DirectorEntity.fromJson(Map<String, dynamic> json) =>
      _$DirectorEntityFromJson(json);
}
