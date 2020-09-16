import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/repositories/meow_repository_interface.dart';
import 'package:dartz/dartz.dart';

import '../errors/failure.dart';

abstract class GetMeow {
  Future<Either<Failure, Meow>> call();
}

class GetMeowImpl implements GetMeow {
  final IMeowRepository repository;

  GetMeowImpl(this.repository);

  @override
  Future<Either<Failure, Meow>> call() async {
    return await repository.getMeow();
  }
}
