import 'package:mobx/mobx.dart';

import '../../start2_store.dart';

part 'home_controller.g.dart';

class HomeController = HomeControllerBase with _$HomeController;

abstract class HomeControllerBase with Store {
  final Start2Store start2Store;

  const HomeControllerBase(this.start2Store);

  @computed
  String? get username => start2Store.username;
}
