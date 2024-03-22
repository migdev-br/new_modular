import 'package:flutter_modular/flutter_modular.dart';

import '../../shared/shared_module.dart';

import 'profile_controller.dart';
import 'profile_page.dart';

class ProfileModule extends Module {
  @override
  List<Module> get imports => [
        SharedModule(),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<ProfileController>(ProfileController.new);
  }

  @override
  void routes(RouteManager r) {
    r.child(
      Modular.initialRoute,
      child: (_) => ProfilePage(controller: Modular.get<ProfileController>()),
    );
  }
}
