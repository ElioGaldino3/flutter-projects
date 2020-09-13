import 'package:get/get.dart';

import 'modules/home_page/home_bindings.dart';
import 'modules/home_page/home_page.dart';

final appRoutes = [
  GetPage(name: '/', page: () => HomePage(), binding: HomeBindings()),
];
