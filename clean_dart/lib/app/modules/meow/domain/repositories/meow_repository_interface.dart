import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:dartz/dartz.dart';

abstract class IMeowRepository {
  Future<Either<Failure, Meow>> getMeow();
}
