import 'package:complex_mvc/app/modules/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    return Scaffold(
      appBar: AppBar(title: Text("Complex MVC")),
      body: Center(
        child: Obx(() {
          if (controller.cat == null) {
            return Text(controller.cat ?? "Nenhum Gato Encontrado");
          }

          return Container(
            width: Get.mediaQuery.size.width * .8,
            child: Image.network(
              controller.cat.file
            ),
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getCat,
        child: Icon(Icons.image),
      ),
    );
  }
}
