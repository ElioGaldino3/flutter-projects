import 'package:clean_dart/app/modules/meow/domain/repositories/meow_repository_interface.dart';
import 'package:clean_dart/app/modules/meow/domain/usecases/get_meow.dart';
import 'package:clean_dart/app/modules/meow/external/dio/dio_meow_datasource.dart';
import 'package:clean_dart/app/modules/meow/infra/datasources/meow_datasource_interface.dart';
import 'package:clean_dart/app/modules/meow/infra/repositories/meow_repository.dart';
import 'package:clean_dart/app/modules/meow/presenter/meow_controller.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

class MeowBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Dio>(() => Dio());
    Get.lazyPut<GetMeow>(() => GetMeowImpl(Get.find<IMeowRepository>()));
    Get.lazyPut<IMeowRepository>(
        () => MeowRepository(Get.find<IMeowDataSource>()));
    Get.lazyPut<IMeowDataSource>(() => DioMeowDataSource(Get.find<Dio>()));
    Get.lazyPut<MeowController>(() => MeowController(Get.find<GetMeow>()));
  }
}
