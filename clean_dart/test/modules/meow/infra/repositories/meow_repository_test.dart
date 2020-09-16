import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/domain/errors/failure.dart';
import 'package:clean_dart/app/modules/meow/infra/datasources/meow_datasource_interface.dart';
import 'package:clean_dart/app/modules/meow/infra/repositories/meow_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class MeowDatasourceMock extends Mock implements IMeowDataSource {}

void main() {
  final datasource = MeowDatasourceMock();
  final meowRepository = MeowRepository(datasource);

  test('must return a right meow', () async {
    when(datasource.getMeow())
        .thenAnswer((realInvocation) async => right(Meow()));

    final result = await meowRepository.getMeow();

    expect(result | null, isA<Meow>());
  });

  test('must return a left failure', () async {
    when(datasource.getMeow())
        .thenAnswer((realInvocation) async => left(Failure()));

    final result = await meowRepository.getMeow();

    expect(result, isA<Left>());
  });
}
