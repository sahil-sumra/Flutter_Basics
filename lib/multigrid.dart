import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Multiple GridView Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Multiple GridView Example'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: List.generate(10, (index) {
                  return Container(
                    color: Colors.blue,
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Grid Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                children: List.generate(12, (index) {
                  return Container(
                    color: Colors.green,
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Grid Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                children: List.generate(8, (index) {
                  return Container(
                    color: Colors.orange,
                    margin: EdgeInsets.all(8.0),
                    child: Center(
                      child: Text(
                        'Grid Item $index',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
