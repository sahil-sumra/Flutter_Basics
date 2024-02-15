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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
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
  TextEditingController wtController = TextEditingController();
  TextEditingController ftController = TextEditingController();
  TextEditingController inController = TextEditingController();

  Color? bgColor;
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 100, 74, 167),
        title: Text('BMI APP'),
      ),
      body: Container(
        color: bgColor,
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 30),
                  child: Text(
                    'BMI APP',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                TextField(
                  controller: wtController,
                  decoration: InputDecoration(
                    labelText: "Enter Your Weight (kg)",
                    prefixIcon: Icon(Icons.line_weight_outlined),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: ftController,
                  decoration: InputDecoration(
                    labelText: "Enter Your Height (ft.)",
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 20),
                TextField(
                  controller: inController,
                  decoration: InputDecoration(
                    labelText: "Enter Your Height (Inches)",
                    prefixIcon: Icon(Icons.height),
                    border: OutlineInputBorder(
                      gapPadding: 10,
                    ),
                  ),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 21),
                ElevatedButton(
                  onPressed: () {
                    var wt = wtController.text.toString();
                    var ft = ftController.text.toString();
                    var inch = inController.text.toString();

                    if (wt != '' && ft != '' && inch != '') {
                      var iWt = int.parse(wt);
                      var iFt = int.parse(ft);
                      var iInch = int.parse(inch);

                      var totalInch = (iFt * 12) + iInch;
                      var totalCm = totalInch * 2.54;
                      var totalM = totalCm / 100;
                      var bmiValue = iWt / (totalM * totalM);
                      var msg = '';

                      if (bmiValue > 25) {
                        msg = 'You Are Overweight';
                        bgColor = Colors.orange.shade200;
                      } else if (bmiValue < 18) {
                        msg = 'You Are Underweight';
                        bgColor = Colors.red.shade300;
                      } else {
                        msg = "Your Body Mass Index is Normal";
                        bgColor = Colors.green.shade600;
                      }

                      setState(() {
                        result =
                            '$msg\nYour BMI value Is ${bmiValue.toStringAsFixed(2)}';
                      });
                    } else {
                      setState(() {
                        result = "Please enter all the fields";
                      });
                    }
                  },
                  child: Text('Calculate'),
                ),
                SizedBox(height: 10),
                Text(
                  result,
                  style: TextStyle(fontSize: 20),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
