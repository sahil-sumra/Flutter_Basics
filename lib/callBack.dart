import 'package:flutter/material.dart';

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
  callBack() {
    print("button Pressed");
  }

  @override
  Widget build(BuildContext context) {
    var arrcolor = [
      Colors.orange,
      Colors.green,
      Colors.purple,
      Colors.pink,
      Colors.grey,
      Colors.black,
      Colors.brown,
      Colors.blue,
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Home Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text("click me"),
          onPressed: callBack,
        ),
      ),
    );
  }
}
