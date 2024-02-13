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
              Icon(
                Icons.account_box_rounded,
                color: Colors.greenAccent,
                size: 100,
              ),
              SizedBox(
                height: 20,
              ),
              FaIcon(
                FontAwesomeIcons.amazon,
                color: Colors.pinkAccent,
                size: 40,
              ),
            ],
          ),
        ));
  }
}




/*********************************************
 * // ALSO CHANGE DEPENDENCIES IN YAMAL FILE *
 *********************************************/
/********************************
 *       /* DEPENDENCIES:       *
 *           FLUTTER:           *
 *         SDK: FLUTTER         *
 * FONT_AWESOME_FLUTTER: ^9.3.0 *
 *              */              *
 ********************************/