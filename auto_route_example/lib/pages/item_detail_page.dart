import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

class ItemDetailPage extends StatefulWidget {
  final String user;
  const ItemDetailPage({
    Key? key,
    @PathParam('userName') required this.user,
  }) : super(key: key);

  @override
  _ItemDetailPageState createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página do ${widget.user}'),
      ),
      body: Container(),
    );
  }
}
