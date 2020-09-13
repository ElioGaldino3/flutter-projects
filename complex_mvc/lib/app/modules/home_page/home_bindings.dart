import 'package:complex_mvc/app/modules/home_page/repositories/dio_repository.dart';
import 'package:complex_mvc/app/modules/home_page/repositories/repository_interface.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class HomeBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<IRepository>(() => DioRepository());
    Get.lazyPut<HomeController>(() => HomeController(Get.find<IRepository>()));
  }
}
