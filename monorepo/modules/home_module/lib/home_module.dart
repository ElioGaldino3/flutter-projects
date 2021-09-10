library home_module;

import 'pages/home_page/home_page.dart';
import 'package:dependency_module/dependency_module.dart';


class HomeModule extends Module {
  @override
  final List<Bind> binds = [];
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage())
  ];
}
