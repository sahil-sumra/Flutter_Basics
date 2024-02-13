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
      body: Center(
        child: CircleAvatar(

          child: Container(
            width: 60,
            height: 60,
            child: Column(
              children: [
                Container(
                  width: 30,
                  height: 30,
                  child: Image.asset('assets/images/2.jpg'),
                ),
                Text("data"),
              ],
            ),
          ),

          backgroundColor: Colors.lightBlue,
          radius: 50,

        ),
      ),
    );
  }
}
