import 'package:flutter/material.dart';
import 'package:flutter_application_2/splashpage.dart';

/**------------------------------------------------------------------------
 *                           SET RANGE of values 
 *------------------------------------------------------------------------**/

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
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  RangeValues values = RangeValues(0, 100);

  var namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('my home page'),
        ),
        body: Center(
          child: RangeSlider(
              values: values,
              labels: labels,
              divisions: 10,
              activeColor: Colors.green,
              inactiveColor: Colors.green.shade300,
              min: 0,
              max: 100,
              onChanged: (newValues) {
                values = newValues;
                print('${newValues.start}, ${newValues.end}');
                setState(() {});
              }),
        ));
  }
}
