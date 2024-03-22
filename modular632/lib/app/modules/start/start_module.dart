import 'package:flutter_modular/flutter_modular.dart';

import 'shared/shared_module.dart';
import 'start_controller.dart';
import 'start_page.dart';
import 'submodules/home/home_module.dart';
import 'submodules/profile/profile_module.dart';

class StartModule extends Module {
  @override
  List<Module> get imports => [
        SharedModule(),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<StartController>(StartController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => StartPage(controller: Modular.get<StartController>()),
      children: [
        ModuleRoute(
          '/home',
          module: HomeModule(),
          transition: TransitionType.rightToLeft,
        ),
        ModuleRoute(
          '/profile',
          module: ProfileModule(),
          transition: TransitionType.rightToLeft,
        ),
      ],
    );
  }
}
