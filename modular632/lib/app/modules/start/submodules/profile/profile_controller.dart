import 'package:mobx/mobx.dart';

import '../../shared/shared_store.dart';

part 'profile_controller.g.dart';

class ProfileController = ProfileControllerBase with _$ProfileController;

abstract class ProfileControllerBase with Store {
  final SharedStore sharedStore;

  const ProfileControllerBase(this.sharedStore);

  @computed
  String? get username => sharedStore.username;
}
