import 'package:flutter_modular/flutter_modular.dart';

import 'modules/splash/splash_module.dart';
import 'modules/start/start_module.dart';
import 'modules/start2/start2_module.dart';

class AppModule extends Module {
  @override
  void routes(RouteManager r) {
    r.module(
      Modular.initialRoute,
      module: SplashModule(),
    );
    r.module(
      '/start',
      module: StartModule(), //Verificar rota na splash page
    );
    r.module(
      '/start2',
      module: Start2Module(), //Verificar rota na splash page
    );
  }
}
