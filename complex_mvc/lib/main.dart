import 'package:complex_mvc/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() => runApp(
      GetMaterialApp(
        initialRoute: '/',
        getPages: appRoutes,
      ),
    );
