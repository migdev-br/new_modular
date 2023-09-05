import 'package:mobx/mobx.dart';

part 'shared_store.g.dart';

class SharedStore = SharedStoreBase with _$SharedStore;

abstract class SharedStoreBase with Store {
  @observable
  String? username;
}
