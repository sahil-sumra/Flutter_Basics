import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isFirst = true;
  @override
  void reload() {
    setState(() {
      isFirst = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 112, 227),
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          children: [
            AnimatedCrossFade(
              firstChild: Container(
                width: 200,
                height: 100,
                color: const Color.fromARGB(255, 53, 42, 3),
              ),
              secondChild: Image.asset('assets/images/download.jfif'),
              crossFadeState: isFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(seconds: 2),
            ),
            ElevatedButton(
              onPressed: () {
                reload();
              },
              child: Text('change'),
            ),
          ],
        ),
      ),
    );
  }
}
