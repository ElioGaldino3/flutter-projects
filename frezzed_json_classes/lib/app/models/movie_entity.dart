// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:frezzed_json_classes/app/models/director_entity.dart';

part 'movie_entity.freezed.dart';
part 'movie_entity.g.dart';

@freezed
abstract class MovieEntity with _$MovieEntity {
  factory MovieEntity({
    required String name,
    required DirectorEntity director,
    @JsonKey(name: 'release_date') required DateTime releaseDate,
  }) = _MovieEntity;

  factory MovieEntity.fromJson(Map<String, dynamic> json) =>
      _$MovieEntityFromJson(json);
}
