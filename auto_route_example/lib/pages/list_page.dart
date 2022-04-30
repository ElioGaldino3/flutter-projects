import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  final List<String> users = ['Elio', 'Eliana', 'Elika', 'Ana Luiza', 'Belão'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Usuários'),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(users[index]),
            onTap: () {
              context.router.pushNamed('/item-detail/${users[index]}');
            },
          );
        },
        itemCount: users.length,
      ),
    );
  }
}
