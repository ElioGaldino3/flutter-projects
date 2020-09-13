import 'package:complex_mvc/app/shared/models/cat_model.dart';

abstract class IRepository {
  Future<CatModel> getCat();
}
