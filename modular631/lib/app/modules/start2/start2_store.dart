import 'package:mobx/mobx.dart';

part 'start2_store.g.dart';

class Start2Store = Start2StoreBase with _$Start2Store;

abstract class Start2StoreBase with Store {
  @observable
  String? username;
}
