import 'package:flutter/material.dart';
import 'package:school/pages/home/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'School',
      home: HomePage(),
    );
  }
}
