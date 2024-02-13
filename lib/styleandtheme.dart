import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/util.dart';

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
      body: Column(
        children: [
          Text("hello world",
              style: Theme.of(context)
                  .textTheme
                  .headline1!
                  .copyWith(color: Colors.blue)),
          Text("hello world", style: Theme.of(context).textTheme.subtitle1),
          Text("hello world", style: Theme.of(context).textTheme.headline1),
          Text("hello world", style: mTextStyle31(textcolor: Colors.red)),
        ],
      ),
    );
  }
}
// using util