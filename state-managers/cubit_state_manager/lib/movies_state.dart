import 'package:equatable/equatable.dart';
import 'movie_model.dart';

abstract class MoviesState extends Equatable {}

class InitialState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadingState extends MoviesState {
  @override
  List<Object> get props => [];
}

class LoadedState extends MoviesState {
  final List<MovieModel> movies;

  LoadedState(this.movies);

  @override
  List<Object> get props => [movies];
}
class ErrorState extends MoviesState {
  @override
  List<Object> get props => [];
}
