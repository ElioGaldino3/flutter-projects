import 'package:cubit_state_manager/movie_model.dart';

class MovieRepository {
  final List<MovieModel> _movieList = <MovieModel>[
    MovieModel('Estrelar', 2010),
    MovieModel('Guerra nas Estrelas', 2008),
    MovieModel('Aquamen', 2018),
    MovieModel('Fúria', 2009),
    MovieModel('Oh my god', 2020),
    MovieModel('GoT', 2030),
  ];

  Future<List<MovieModel>> getMovies() async {
    await Future.delayed(Duration(seconds: 3));

    return _movieList;
  }
}
