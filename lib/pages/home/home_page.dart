import 'package:flutter/material.dart';
import 'package:school/pages/home/abas/afazeres_tab.dart';
import 'package:school/pages/home/abas/perfil_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late int indexPage;

  void mudaPagina(int index) {
    setState(() {
      indexPage = index;
    });
  }

  @override
  void initState() {
    indexPage = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final List<BottomNavigationBarItem> _abas = [
      const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
      const BottomNavigationBarItem(
          icon: Icon(Icons.account_circle), label: 'Perfil')
    ];

    final List<Widget> _conteudos = [
      const AfazeresTab(
        valorinicial: 0,
      ),
      const PerfilTab(),
    ];

    return Scaffold(
      appBar: AppBar(title: Text('School')),
      body: _conteudos[indexPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexPage,
        items: _abas,
        onTap: mudaPagina,
      ),
    );
  }
}
