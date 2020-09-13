import 'package:complex_mvc/app/modules/home_page/repositories/repository_interface.dart';
import 'package:complex_mvc/app/shared/models/cat_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DioRepository implements IRepository {
  Dio dio;

  DioRepository() {
    dio = Dio();
  }

  @override
  Future<Either<Exception, CatModel>> getCat() async {
    try {
      var response = await dio.get('https://aws.random.cat/meow');
      return right(CatModel.fromMap(response.data));
    } catch (_) {
      return left(Exception());
    }
  }
}
