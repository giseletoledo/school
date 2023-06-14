import 'package:flutter/material.dart';
import 'package:school/pages/home/abas/afazeres_tab.dart';
import 'package:school/pages/home/abas/perfil_tab.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _abas = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Perfil')
    ];

    final List<Widget> _conteudos = [
      AfazeresTab(),
      const PerfilTab(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('School')),
      body: _conteudos.elementAt(0),
      bottomNavigationBar: BottomNavigationBar(currentIndex: 0, items: _abas),
    );
  }
}
