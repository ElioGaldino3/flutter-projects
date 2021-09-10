import 'package:flutter/material.dart';

class ProfileHomePage extends StatefulWidget {
  const ProfileHomePage({Key? key}) : super(key: key);

  @override
  _ProfileHomePageState createState() => _ProfileHomePageState();
}

class _ProfileHomePageState extends State<ProfileHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: Container(),
    );
  }
}
