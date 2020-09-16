import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:clean_dart/app/modules/meow/infra/datasources/meow_datasource_interface.dart';
import 'package:clean_dart/app/modules/meow/infra/models/meow_model.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class DioMeowDataSource implements IMeowDataSource {
  final Dio dio;

  DioMeowDataSource(this.dio);

  @override
  Future<Either<Failure, Meow>> getMeow() async {
    try {
      final response = await dio.get('https://aws.random.cat/meow');
      if (response.statusCode == 200) {
        return right(MeowModel.fromMap(response.data));
      }

      return left(Failure());
    } on DioError {
      return left(Failure());
    } catch (_) {
      return left(Failure());
    }
  }
}
