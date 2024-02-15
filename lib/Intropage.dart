import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_2/main.dart';

class IntroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('welcome ',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 11,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(
                    builder: ((context) {
                      return MyHomePage();
                    }),
                  ));
                },
                child: Text('Next')),
          ],
        ),
      ),
    );
  }
}
