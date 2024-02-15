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
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var wtController = TextEditingController();
  var ftController = TextEditingController();
  var inController = TextEditingController();
  var result = '';

  var bgColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('my home page'),
      ),
      body: Container(
        color: bgColor,
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 30),
                    child: Text(
                      'BMI APP',
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                      labelText: "Enter Your Height  (ft.)",
                      prefixIcon: Icon(Icons.line_weight_outlined),
                      border: OutlineInputBorder(gapPadding: 10)),
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                      labelText: "Enter Your Height  (ft.)",
                      prefixIcon: Icon(Icons.height),
                      border: OutlineInputBorder(gapPadding: 10)),
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                      labelText: "Enter Your Height  (Inches.)",
                      prefixIcon: Icon(Icons.height),
                      border: OutlineInputBorder(gapPadding: 10)),
                  keyboardType: TextInputType.numberWithOptions(decimal: false),
                ),
                SizedBox(
                  height: 21,
                ),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (wt != '' && ft != '' && inch != '') {
                      // Bmi Calculation
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var totalInch = (iFt * 12) + iInch;
                      var totalcm = totalInch * 2.54;
                      var total_m = totalcm / 100;
                      var bmivalue = iWt / (total_m * total_m);
                      var msg = '';

                      if (bmivalue > 25) {
                        msg = 'You Are OverWight';
                        bgColor = Colors.orange.shade200;
                      } else if (bmivalue < 18) {
                        msg = 'You Have Underweight';
                        bgColor = Colors.red.shade300;
                      } else {
                        msg = "Your Body Mass Index is Normal";
                        bgColor = Colors.green.shade600;
                      }

                      setState(() {
                        result =
                            '$msg \n Your BMI value Is ${bmivalue.toStringAsFixed(2)}';
                      });
                    } else {
                      setState(() {
                        result = "please enter all the fields";
                      });
                    }
                  },
                  child: Text('Calculate'),
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.deepPurple),
                      foregroundColor: MaterialStateProperty.all(Colors.white)),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  result,
                  style: TextStyle(fontSize: 20, fontFamily: 'singleday'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
