import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/util.dart';
import 'package:flutter_application_2/widgets/util.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  var no1Controller = TextEditingController();
  var no2Controller = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Home Page"),
        ),
        body: Container(
          color: Color.fromARGB(255, 218, 212, 227),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: no1Controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    controller: no2Controller,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var sum = no1 + no2;
                            result = "The sum of $no1 and $no2 is $sum";
                            setState(() {});
                          },
                          child: Text('add')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var diff = no1 - no2;
                            result = "The diff of $no1 and $no2 is $diff";
                            setState(() {});
                          },
                          child: Text('diff')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var mul = no1 * no2;
                            result =
                                "The multiplication of $no1 and $no2 is $mul";
                            setState(() {});
                          },
                          child: Text('mul')),
                      ElevatedButton(
                          onPressed: () {
                            var no1 = int.parse(no1Controller.text.toString());
                            var no2 = int.parse(no2Controller.text.toString());
                            var div = no1 / no2;
                            result =
                                "the Division of $no1 and $no2 is ${div.toStringAsFixed(2)}";
                            setState(() {});
                          },
                          child: Text('div')),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    result,
                    style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'singleday',
                        color: Colors.black54),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
/*************************************************************
 * // HOW TO BUILD LOGIC IN STATEFUL WIDGET WITH THE HELP OF *
 *                    //SETSTATE(() {});                     *
 *************************************************************/