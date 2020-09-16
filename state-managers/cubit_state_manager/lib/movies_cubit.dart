import 'package:cubit/cubit.dart';
import 'package:cubit_state_manager/movie_repository.dart';
import 'package:cubit_state_manager/movies_state.dart';

class MoviesCubit extends Cubit<MoviesState> {
  MoviesCubit({this.repository}) : super(InitialState()) {
    _getMovies();
  }

  final MovieRepository repository;

  void _getMovies() async {
    try {
      emit(LoadingState());
      final movies = await repository.getMovies();
      emit(LoadedState(movies));
    } catch (e) {
      emit(ErrorState());
    }
  }
}
