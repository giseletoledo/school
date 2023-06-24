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
      detalhe: (context) {
        final arguments =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        final item = arguments['item'] as AfazerEntity;
        final index = arguments['index'] as int;
        return DetalhePage(item: item, index: index);
      },
    };
  }
}
