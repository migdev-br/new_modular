// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeController on HomeControllerBase, Store {
  Computed<String?>? _$usernameComputed;

  @override
  String? get username =>
      (_$usernameComputed ??= Computed<String?>(() => super.username,
              name: 'HomeControllerBase.username'))
          .value;

  @override
  String toString() {
    return '''
username: ${username}
    ''';
  }
}
