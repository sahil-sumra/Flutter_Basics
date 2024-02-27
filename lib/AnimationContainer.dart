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
  var _width = 200.0;
  var _height = 100.0;
  bool flag = true;
  Decoration myDecor = BoxDecoration(
    borderRadius: BorderRadius.circular(2),
    color: Colors.blueGrey,
  );

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
              AnimatedContainer(
                width: _width,
                height: _height,
                curve: Curves.fastEaseInToSlowEaseOut,
                duration: Duration(seconds: 2),
                decoration: myDecor,
              ),
              SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (flag) {
                      _width = 100.0;
                      _height = 200.0;
                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(51),
                        color: Colors.orange,
                      );
                      flag = false;
                    } else {
                      _width = 200.0;
                      _height = 100.0;

                      myDecor = BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Colors.blueGrey,
                      );
                      flag = true;
                    }
                  });
                },
                child: Text('Animation'),
              ),
            ],
          ),
        ));
  }
}
