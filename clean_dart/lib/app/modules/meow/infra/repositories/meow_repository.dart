import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:clean_dart/app/modules/meow/domain/repositories/meow_repository_interface.dart';
import 'package:clean_dart/app/modules/meow/infra/datasources/meow_datasource_interface.dart';
import 'package:dartz/dartz.dart';

class MeowRepository implements IMeowRepository {
  final IMeowDataSource datasource;

  MeowRepository(this.datasource);

  @override
  Future<Either<Failure, Meow>> getMeow() async {
    return await datasource.getMeow();
  }
}
