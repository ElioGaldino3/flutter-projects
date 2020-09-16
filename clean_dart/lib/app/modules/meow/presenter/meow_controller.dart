import 'package:clean_dart/app/modules/meow/domain/usecases/get_meow.dart';
import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

class MeowController extends GetxController {
  final GetMeow _getMeowUsecase;
  MeowController(this._getMeowUsecase);

  final _meow = none().obs;
  get meow => _meow.value;

  final _loading = false.obs;
  get loading => _loading.value;

  final _error = none().obs;
  Option get error => _error.value;

  void getMeow() async {
    _loading.value = true;
    _meow.value = none();
    _error.value = none();

    (await _getMeowUsecase()).fold(
      (l) => _error.value = some(l),
      (r) => _meow.value = some(r),
    );

    _loading.value = false;
  }
}
