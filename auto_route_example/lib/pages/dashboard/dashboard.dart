import 'package:auto_route/auto_route.dart';
import 'package:auto_route_example/app_route.dart';
import 'package:flutter/material.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Route1());
                },
                child: const Text('Página 1'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Route2());
                },
                child: const Text('Página 2'),
              ),
              ElevatedButton(
                onPressed: () {
                  context.pushRoute(const Route3());
                },
                child: const Text('Página 3'),
              ),
            ],
          ),
          Expanded(
            // nested routes will be rendered here
            child: Container(
              padding: const EdgeInsets.all(16),
              child: const AutoRouter(),
              color: Colors.grey,
            ),
          )
        ],
      ),
    );
  }
}
