import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';

import 'profile_controller.dart';

class ProfilePage extends StatefulWidget {
  final ProfileController controller;

  const ProfilePage({super.key, required this.controller});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  ProfileController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('P.R.O.F.I.L.E'),
      ),
      body: Observer(
        builder: (_) {
          final username = controller.username;

          return Center(
            child: Text('USERNAME: $username'),
          );
        },
      ),
    );
  }
}
