import 'dart:convert';

import 'package:clean_dart/app/modules/meow/domain/entities/meow.dart';
import 'package:clean_dart/app/modules/meow/external/dio/dio_meow_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../../utils/meow_response_json.dart';

class DioMock extends Mock implements Dio {}

void main() {
  final dio = DioMock();
  final datasource = DioMeowDataSource(dio);

  test('must return a right meow', () async {
    when(dio.get(any)).thenAnswer((_) async =>
        Response(statusCode: 200, data: jsonDecode(meowResponseJson)));

    final result = await datasource.getMeow();

    expect(result | null, isA<Meow>());
  });
  test('must return a left failure with statusCode other than 200', () async {
    when(dio.get(any)).thenAnswer((_) async => Response(statusCode: 401));

    final result = await datasource.getMeow();

    expect(result, isA<Left>());
  });
  test('must return a left failure with dio error', () async {
    when(dio.get(any)).thenThrow(DioError());

    final result = await datasource.getMeow();

    expect(result, isA<Left>());
  });
}
