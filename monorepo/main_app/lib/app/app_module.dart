import 'package:dependency_module/dependency_module.dart';
import 'package:home_module/home_module.dart';
import 'package:profile_module/profile_module.dart';

class AppModule extends Module {
  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: HomeModule()),
    ModuleRoute('/profile', module: ProfileModule())
  ];
}
