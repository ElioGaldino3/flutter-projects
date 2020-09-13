import 'package:complex_mvc/app/shared/models/cat_model.dart';
import 'package:dartz/dartz.dart';

abstract class IRepository {
  Future<Either<Exception, CatModel>> getCat();
}
