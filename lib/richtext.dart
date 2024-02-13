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
          child: RichText(
              text: TextSpan(
            style: TextStyle(color: Colors.grey, fontSize: 31),
            children: <TextSpan>[
              TextSpan(text: ' hello'),
              TextSpan(
                  text: ' world',
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.blue,
                      fontWeight: FontWeight.bold)),
              TextSpan(text: '  welcome to'),
              TextSpan(
                  text: ' Flutter',
                  style: TextStyle(
                    fontFamily: 'singleday',
                    fontSize: 45,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    color: Colors.deepOrangeAccent,
                  )),
            ],
          )),
        ));
  }
}
