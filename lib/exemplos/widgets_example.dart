import 'package:flutter/material.dart';

class WidgetsExample extends StatelessWidget {
  const WidgetsExample({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'School',
      home: Scaffold(
        body: SizedBox(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  CircleAvatar(
                    child: Text('R'),
                  )
                ],
              ),
              const Text('Texto 1'),
              const Text('Texto 2'),
              const Text('Texto 3'),
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
