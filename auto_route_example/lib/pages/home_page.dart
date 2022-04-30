import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/app_route.gr.dart';
import 'package:flutter/material.dart';

import '../app_route.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Ir para listagem'),
              onPressed: () {
                context.pushRoute(const ListRoute());
              },
            ),
            ElevatedButton(
              child: const Text('Indo para rota que não existe'),
              onPressed: () {
                context.router.pushNamed('/testando');
              },
            ),
            ElevatedButton(
              child: const Text('Dashboard'),
              onPressed: () {
                context.pushRoute(const DashboardRoute());
              },
            )
          ],
        ),
      ),
    );
  }
}
