import 'package:flutter/material.dart';

import 'package:mobx/mobx.dart';

import 'start2_store.dart';

part 'start2_controller.g.dart';

class Start2Controller = Start2ControllerBase with _$Start2Controller;

abstract class Start2ControllerBase with Store {
  final Start2Store start2Store;

  Start2ControllerBase(this.start2Store) {
    init();
  }

  @action
  void init() {
    debugPrint('++++++++ MODULE START2 - Call Start2Controller +++++++');
    debugPrint('++++++++ username: ${start2Store.username} +++++++');
    //UPDATE USERNAME
    start2Store.username = 'MODULAR';
    //
    debugPrint('++++++++ username: ${start2Store.username} +++++++');
  }
}
