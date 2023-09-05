import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

import 'start2_controller.dart';

class Start2Page extends StatefulWidget {
  final Start2Controller controller;

  const Start2Page({super.key, required this.controller});

  @override
  State<Start2Page> createState() => _Start2PageState();
}

class _Start2PageState extends State<Start2Page> {
  Start2Controller get controller => widget.controller;

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
                onTap: () => Modular.to.navigate('../home/'),
              ),
              ListTile(
                title: const Text('Profile'),
                onTap: () => Modular.to.navigate('../profile/'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
