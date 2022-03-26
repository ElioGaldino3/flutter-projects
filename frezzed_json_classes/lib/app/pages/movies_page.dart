import 'dart:convert';

import 'package:flutter/material.dart';

import '../models/movie_entity.dart';

class MoviesPage extends StatelessWidget {
  const MoviesPage({Key? key}) : super(key: key);

  final json =
      '{"name": "Homem Aranha", "director": {"name": "Jon Watts", "age":40 }, "release_date": "2021-12-16"}';

  @override
  Widget build(BuildContext context) {
    final movie = MovieEntity.fromJson(jsonDecode(json));
    return Scaffold(
      appBar: AppBar(
        title: const Text('Movies'),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(movie.name),
            Text(movie.director.name),
            Text(movie.director.age.toString()),
            Text(movie.releaseDate.toString()),
          ],
        ),
      ),
    );
  }
}
