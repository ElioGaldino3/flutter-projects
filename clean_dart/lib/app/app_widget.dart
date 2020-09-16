import 'package:clean_dart/app/app_routes.dart';
import 'package:clean_dart/app/modules/meow/meow_bindings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/',
      title: 'Meow Generator',
      getPages: appRoutes,
    );
  }
}
