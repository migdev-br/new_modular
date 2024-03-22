import 'package:flutter_modular/flutter_modular.dart';

import 'shared_store.dart';

class SharedModule extends Module {
  @override
  void exportedBinds(i) {
    i.addSingleton<SharedStore>(SharedStore.new);
  }
}
