import 'package:flutter/material.dart';

import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final HomeController controller;

  const HomePage({super.key, required this.controller});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController get controller => widget.controller;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('H.O.M.E'),
      ),
      body: Observer(
        builder: (_) {
          final username = controller.username;

          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('USERNAME: $username'),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => Modular.to.navigate('/'),
                  child: const Text('LOGOUT'),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
