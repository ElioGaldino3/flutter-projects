import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import 'app/home_page.dart';


void main() {
  runApp(GetMaterialApp(
    home: HomePage(),
    theme: ThemeData.dark(),
  ));
}
