import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/util.dart';
import 'package:flutter_application_2/widgets/util.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 120,
              child: RoundedButton(
                btnName: 'LOGIN',
                icon: Icon(
                  Icons.lock,
                  color: Colors.white,
                ),
                callback: () {
                  print('Play ');
                },
                textStyle: TextStyle(color: Colors.white),
              ),
            ),
            Container(
              height: 11,
            ),
            Container(
              width: 120,
              child: RoundedButton(
                btnName: 'PRESS',
                icon: Icon(
                  Icons.lock,
                  color: Colors.black,
                ),
                callback: () {
                  print('Playing..');
                },
                bgColor: Colors.blue,
                textStyle: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
