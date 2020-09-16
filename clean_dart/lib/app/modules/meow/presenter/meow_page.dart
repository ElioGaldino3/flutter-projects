import 'package:clean_dart/app/modules/meow/presenter/meow_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MeowPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<MeowController>();

    return Scaffold(
      appBar: AppBar(title: Text('Meow Generator')),
      body: Center(
        child: Obx(() {
          var result;

          if (controller.loading) {
            result = CircularProgressIndicator();
          }

          controller.error.map((_) {
            result = Text("Ocorreu um erro ao capturar um Meow");
          });

          controller.meow.map((meow) {
            result = Image.network(meow.file);
          });

          return result ?? Text('Clique para carregar um Meow');
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getMeow,
        child: Icon(Icons.file_download),
      ),
    );
  }
}
