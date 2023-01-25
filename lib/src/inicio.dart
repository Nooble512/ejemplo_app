import 'package:flutter/material.dart';

class Inicio extends StatefulWidget {
  @override
  State<Inicio> createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
      ),
      body: const Center(
        child: Text('Esta es la pantalla de Inicio'),
      ),
    );
  }
}