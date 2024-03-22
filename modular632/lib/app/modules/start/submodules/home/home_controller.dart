import 'package:mobx/mobx.dart';

import '../../shared/shared_store.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final SharedStore sharedStore;

  const HomeControllerBase(this.sharedStore);

  @computed
  String? get username => sharedStore.username;
}
