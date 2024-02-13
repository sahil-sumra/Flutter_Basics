import 'package:flutter/material.dart';
import 'package:flutter_application_2/splashpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: SplashPage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),

/*************************************************************************************************************************************************************************************
 * CONSTRAINEDBOX: THE CONSTRAINEDBOX WIDGET IMPOSES ADDITIONAL CONSTRAINTS ON ITS CHILD WIDGET. YOU CAN SPECIFY MINIMUM AND MAXIMUM WIDTH AND HEIGHT CONSTRAINTS USING THIS WIDGET. *
 *************************************************************************************************************************************************************************************/
        body: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 100,
              maxHeight: 100,
            ),
            child: Container(
              color: Colors.redAccent,
              child: Text(
                'GO TO HELL',
                style: TextStyle(fontSize: 21, overflow: TextOverflow.fade),
              ),
            )));
  }
}
