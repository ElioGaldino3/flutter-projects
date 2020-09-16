import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:clean_dart/app/modules/meow/domain/repositories/meow_repository_interface.dart';
import 'package:clean_dart/app/modules/meow/domain/usecases/get_meow.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MeowRepositoryMock extends Mock implements IMeowRepository {}

void main() {
  final repository = MeowRepositoryMock();
  final getMeow = GetMeowImpl(repository);

  test('must return a meow', () async {
    when(repository.getMeow()).thenAnswer((_) async => right(Meow()));

    var result = await getMeow();
    expect(result | null, isA<Meow>());
  });

  test('must return a left failure', () async {
    when(repository.getMeow()).thenAnswer((_) async => left(Failure()));

    var result = await getMeow();
    expect(result, isA<Left>());
  });
}
