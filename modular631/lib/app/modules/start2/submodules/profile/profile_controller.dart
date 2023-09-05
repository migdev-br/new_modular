import 'package:mobx/mobx.dart';

import '../../start2_store.dart';

part 'profile_controller.g.dart';

class ProfileController = ProfileControllerBase with _$ProfileController;

abstract class ProfileControllerBase with Store {
  final Start2Store start2Store;

  const ProfileControllerBase(this.start2Store);

  @computed
  String? get username => start2Store.username;
}
