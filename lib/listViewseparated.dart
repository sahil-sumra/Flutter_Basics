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
    var arrNames = [
      'scropio',
      'mustang',
      'supra',
      'lembo',
      'porche',
      'rr',
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text("Home Screen"),
        ),
        body: ListView.separated(
          itemBuilder: (context, index) {
            return Text(arrNames[index] ,
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w900),
            );
          },
          separatorBuilder: (context, index){
            return Divider(height: 100, thickness: 4);
          },
          itemCount: arrNames.length,
        ));
  }
}
