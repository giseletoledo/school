import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    child: Text('R'),
                  )
                ],
              ),
              Text('Texto 1'),
              Text('Texto 2'),
              Text('Texto 3'),
              const Divider(),
              const Row(
                children: [
                  Icon(
                    Icons.add,
                    color: Colors.green,
                  ),
                  Spacer(),
                  Icon(Icons.access_alarm, color: Colors.yellow),
                ],
              ),
              Switch(value: true, onChanged: (val) {}),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Text('Rafael'),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
