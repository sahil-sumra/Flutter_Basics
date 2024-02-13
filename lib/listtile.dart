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
      "sahil",
      "sumra",
      "samir",
      "sumra",
      "salman",
      "sumra",
      "ayan",
      "sumra"
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Home Screen"),
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Text('${index + 1}'),
            title: Text(arrNames[index]),
            subtitle: Text('Number'),
            trailing: Icon(Icons.connected_tv_sharp),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(
            height: 100,
            thickness: 5,
          );
        },
        itemCount: arrNames.length,
      ),
    );
  }
}
