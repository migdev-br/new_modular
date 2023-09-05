import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

import 'shared/shared_store.dart';

part 'start_controller.g.dart';

class StartController = StartControllerBase with _$StartController;

abstract class StartControllerBase with Store {
  final SharedStore sharedStore;

  StartControllerBase(this.sharedStore) {
    init();
  }

  @action
  void init() {
    debugPrint('++++++++ MODULE START - Call StartController +++++++');
    debugPrint('++++++++ username: ${sharedStore.username} +++++++');
    //UPDATE USERNAME
    sharedStore.username = 'MODULAR';
    //
    debugPrint('++++++++ username: ${sharedStore.username} +++++++');
  }
}
