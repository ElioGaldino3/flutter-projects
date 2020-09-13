import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_mvc/app/app_controller.dart';
import 'package:text_extension/text_extension.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var c = Get.put(Controller());

    return Scaffold(
      appBar: AppBar(title: Text('Simple MVC')),
      body: Center(
          child: Obx(() => Text(c.count.toString()).bold().setFontSize(36))),
      floatingActionButton: FloatingActionButton(
        onPressed: c.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
