import 'package:flutter/material.dart';

import 'entities/afazer_entity.dart';
import 'pages/detalhe/detalhe_page.dart';
import 'pages/home/home_page.dart';

class AppRoutes {
  static String initialRoute = '/';
  static String detalhe = '/detalheItem';

  static Map<String, Widget Function(BuildContext)> routes() {
    return {
      initialRoute: (context) => const HomePage(),
      detalhe: (context) => const DetalhePage(),
    };
  }
}
