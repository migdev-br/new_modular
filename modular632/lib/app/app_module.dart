import 'package:flutter_modular/flutter_modular.dart';

import 'modules/splash/splash_module.dart';
import 'modules/start/shared/shared_module.dart';
import 'modules/start/start_module.dart';

class AppModule extends Module {
  @override
  List<Module> get imports => [
        SharedModule(),
      ];

  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: LoginModule(),
    );
    r.module(
      '/start',
      module: StartModule(),
    );
  }
}
