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
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          subtitle1: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
        ),
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
      body: Center(
        child: Card(
          elevation: 20,
            shadowColor: Colors.red,
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Hello World !" ,style: TextStyle(fontSize: 20),),
        )),
      ),
    );
  }
}
