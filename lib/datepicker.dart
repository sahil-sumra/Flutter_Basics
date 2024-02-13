import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MaterialApp(
    title: 'Time App',
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var time = DateTime.now();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text('Hello'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Select Date"),
              ElevatedButton(
                onPressed: () async {
                  DateTime? datepicked = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2024),
                      lastDate: DateTime(2026));

                  if (datepicked != null) {
                    print(
                        'Data Selected: ${datepicked.day}-${datepicked.month}-${datepicked.year} ');
                  }
                },
                child: Text("Show"),
              ),
              ElevatedButton(
                  onPressed: () async {
                    TimeOfDay? pickedTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                        initialEntryMode: TimePickerEntryMode.dial);
                    if (pickedTime != null) {
                      print(
                          'Time Selected : ${pickedTime.hour}:${pickedTime.minute}');
                    }
                  },
                  child: Text("show Time")),
            ],
          ),
        ),
      ),
    );
  }
}
