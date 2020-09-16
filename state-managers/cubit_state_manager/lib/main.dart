import 'package:cubit/cubit.dart';
import 'package:cubit_state_manager/movies_cubit.dart';
import 'package:cubit_state_manager/movies_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cubit/flutter_cubit.dart';

import 'movie_repository.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Cubit State Manager',),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _moviesCubit = MoviesCubit(repository: MovieRepository());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CubitBuilder(
        cubit: _moviesCubit,
        builder: (context, state) {
          if (state is LoadingState) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ErrorState) {
            return Center(
              child: Icon(Icons.close),
            );
          } else if (state is LoadedState) {
            final movies = state.movies;

            return ListView.builder(
              itemCount: movies.length,
              itemBuilder: (context, index) => Card(
                child: ListTile(
                  title: Text(movies[index].name ?? ''),
                  subtitle: Text('$movies[index].year'),
                ),
              ),
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
