import 'package:flutter/material.dart';

import 'pages/movies_page.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MoviesPage(),
    );
  }
}
