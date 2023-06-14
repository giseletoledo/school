import 'package:flutter/material.dart';

class AppBarComponent extends StatelessWidget implements PreferredSizeWidget {
  final String titulo;

  const AppBarComponent({super.key, this.titulo = 'School'});

  @override
  Widget build(BuildContext context) {
    return AppBar(title: Text('School'));
  }

  @override
  // TODO: implement preferredSize
  //Size get size => const Size.fromHeight(height);

  @override
  // TODO: implement preferredSize
  Size get preferredSize => throw UnimplementedError();
}
