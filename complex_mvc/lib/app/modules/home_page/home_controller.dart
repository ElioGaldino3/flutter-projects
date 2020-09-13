import 'package:complex_mvc/app/modules/home_page/repositories/repository_interface.dart';
import 'package:complex_mvc/app/shared/models/cat_model.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  IRepository repository;

  HomeController(this.repository);

  @override
  void onInit() {
    getCat();
    super.onInit();
  }

  final Rx<CatModel> _cat = CatModel(
      file: 'https://purr.objects-us-east-1.dream.io/i/101_-_dYnWm47.gif').obs;
  get cat => _cat.value;

  void getCat() async {
    try {
      _cat.value = await repository.getCat();
    } on Exception {
      Get.rawSnackbar(message: 'Erro ao procurar Gatinho :(');
    }
  }
}
