import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:clean_dart/app/modules/meow/domain/usecases/get_meow.dart';
import 'package:dartz/dartz.dart';

abstract class IMeowDataSource {
  Future<Either<Failure, Meow>> getMeow();
}
