import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: GridView(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            // mainAxisExtent: 200,
            // childAspectRatio: 1,
          ),
          padding: EdgeInsets.all(25),
          reverse: true,
          physics: BouncingScrollPhysics(),
          children: [
            myBox(0),
            myBox(1),
            myBox(2),
            myBox(3),
            myBox(4),
            myBox(5),
            myBox(6),
            myBox(7),
            myBox(8),
            myBox(9),
            myBox(10),
            myBox(11),
            myBox(12),
            myBox(13),
          ],
        ));
  }
}

Widget myBox(int index) {
  return Container(
    // margin: const EdgeInsets.all(8),
    color: Colors.blueAccent,
    alignment: Alignment.center,
    child: Text('$index'),
  );
}
