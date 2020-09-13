import 'package:complex_mvc/app/modules/home_page/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Get.find<HomeController>();
    ever(controller.failure, (failure) {
      failure.map((_) {
        Get.rawSnackbar(message: 'Erro ao carregar gatinho');
      });
    });
    return Scaffold(
      appBar: AppBar(title: Text("Complex MVC")),
      body: Center(
        child: Obx(() {
          var result;

          controller.cat.fold(
              () => result = Center(child: Text('Clique para carregar um gatinho')),
              (cat) {
            result =  Container(
              width: Get.mediaQuery.size.width * .8,
              child: Image.network(cat.file),
            );
          });

          return result ?? Container();
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.getCat,
        child: Icon(Icons.image),
      ),
    );
  }
}
