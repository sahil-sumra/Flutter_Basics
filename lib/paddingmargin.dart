import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Home Screen"),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blue,
              height: 100,
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.orange,
              height: 100,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.blueGrey,
              height: 100,
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              height: 100,
            ),
          )
        ],
      ),
    );
  }
}
