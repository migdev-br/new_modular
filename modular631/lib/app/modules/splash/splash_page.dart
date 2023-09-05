import 'package:flutter/material.dart';

import 'package:flutter_modular/flutter_modular.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      // TODO
      //Exemplo ROTA 1 importar a store global Shared_Module
      //no modulo principal Start_Module e nos submodulos
      Modular.to.navigate('/start/home/');

      // TODO
      // Exemplo ROTA 2 importar o modulo principal Start2_Module nos submodulos
      //Modular.to.navigate('/start2/home/');
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
