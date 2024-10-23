import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Permisos'),
          actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
        ),
        body: _HomeView());
  }
}

class _HomeView extends StatelessWidget {
  const _HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hola mundo'),
    );
  }
}
