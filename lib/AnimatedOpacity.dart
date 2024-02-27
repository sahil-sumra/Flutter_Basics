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
  var myOpacity = 1.0;
  var flag = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 154, 112, 227),
        title: Text('Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: myOpacity,
              duration: Duration(
                seconds: 1,
              ),
              curve: Curves.decelerate,
              child: Container(
                width: 200,
                height: 100,
                color: Colors.blueAccent,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      myOpacity = 0.0; // invisible
                      flag = false;
                    } else {
                      myOpacity = 1.0; // visible
                      flag = true;
                    }
                  });
                },
                child: Text('Close'))
          ],
        ),
      ),
    );
  }
}
