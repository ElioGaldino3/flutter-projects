library profile_module;
import 'package:dependency_module/dependency_module.dart';

import 'pages/profile_home_page.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [];
  @override
  final List<ModularRoute> routes = [
    ChildRoute(Modular.initialRoute, child: (_, args) => ProfileHomePage())
  ];
}