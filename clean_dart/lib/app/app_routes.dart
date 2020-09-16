import 'package:clean_dart/app/modules/meow/meow_bindings.dart';
import 'package:clean_dart/app/modules/meow/presenter/meow_page.dart';
import 'package:get/get.dart';

final appRoutes = [
  GetPage(name: '/', page: () => MeowPage(), binding: MeowBinding()),
];
