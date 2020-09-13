import 'package:complex_mvc/app/modules/home_page/repositories/repository_interface.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  IRepository repository;

  HomeController(this.repository);

  @override
  void onInit() {
    getCat();
    super.onInit();
  }

  final failure = none().obs;

  final _cat = none().obs;
  get cat => _cat.value;

  void getCat() async {
    var response = await repository.getCat();
    response.fold(
      (_) {
        failure.value = some(Exception());
      },
      (catResult) {
        _cat.value = some(catResult);
      },
    );
  }
}
