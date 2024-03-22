import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'start_controller.dart';

class StartPage extends StatefulWidget {
  final StartController controller;

  const StartPage({super.key, required this.controller});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  StartController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
          Expanded(child: RouterOutlet()),
        ],
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      child: Drawer(
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: SingleChildScrollView(
          child: Column(
            children: [
              ListTile(
                title: const Text('Home'),
                selected: Modular.to.path == '/start/home/',
                onTap: () => Modular.to.navigate('../home/'),
              ),
              ListTile(
                title: const Text('Profile'),
                selected: Modular.to.path == '/start/profile/',
                onTap: () => Modular.to.navigate('../profile/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
