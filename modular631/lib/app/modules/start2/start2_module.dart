import 'package:flutter_modular/flutter_modular.dart';

import 'start2_controller.dart';
import 'start2_page.dart';
import 'start2_store.dart';
import 'submodules/home/home_module.dart';
import 'submodules/profile/profile_module.dart';

class Start2Module extends Module {
  @override
  void exportedBinds(i) {
    i.addSingleton<Start2Store>(Start2Store.new);
    i.addSingleton<Start2Controller>(Start2Controller.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => Start2Page(controller: Modular.get()),
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
