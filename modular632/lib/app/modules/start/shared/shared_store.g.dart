// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$SharedStore on SharedStoreBase, Store {
  late final _$usernameAtom =
      Atom(name: 'SharedStoreBase.username', context: context);

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username}
    ''';
  }
}
