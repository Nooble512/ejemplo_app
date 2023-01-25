import 'package:flutter/material.dart';

class SingIn extends StatefulWidget {
  @override
  State<SingIn> createState() => _SingInState();
}

class _SingInState extends State<SingIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sing-In'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: const Text('Regresar'),
        )
      ),
    );
  }
}