// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MovieEntity _$$_MovieEntityFromJson(Map<String, dynamic> json) =>
    _$_MovieEntity(
      name: json['name'] as String,
      director:
          DirectorEntity.fromJson(json['director'] as Map<String, dynamic>),
      releaseDate: DateTime.parse(json['release_date'] as String),
    );

Map<String, dynamic> _$$_MovieEntityToJson(_$_MovieEntity instance) =>
    <String, dynamic>{
      'name': instance.name,
      'director': instance.director,
      'release_date': instance.releaseDate.toIso8601String(),
    };
