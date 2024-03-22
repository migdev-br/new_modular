import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/shared_module.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
        SharedModule(),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<HomeController>(HomeController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => HomePage(controller: Modular.get<HomeController>()),
    );
  }
}
