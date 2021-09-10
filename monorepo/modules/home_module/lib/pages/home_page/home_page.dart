import 'package:dependency_module/dependency_module.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('Home'),),
           body: Center(child: ElevatedButton(child: Text('Profile'), onPressed: () => Modular.to.pushNamed('/profile'),),),
       );
  }
}