import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  margin: EdgeInsets.all(0),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                    child: Row(
                      children: [
                        CircleAvatar(
                          child: Text('G'),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Gisele',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                        IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.more_vert, color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text('Minhas estatísticas'),
                    ],
                  ),
                ),
                Row(children: [
                  Icon(Icons.list, color: Colors.grey),
                  Text('Total de notas: 0'),
                ]),
                Row(
                  children: [
                    Icon(Icons.check, color: Colors.grey),
                    Text('Concluídas: 0'),
                  ],
                ),
                const Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Configurações'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Tema escuro'),
                    Switch(value: true, onChanged: (val) {}),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
