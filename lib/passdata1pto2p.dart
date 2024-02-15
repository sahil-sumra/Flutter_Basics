/**=======================================================================================================================
 *                                          Passing data from One to another screen
 *=======================================================================================================================**/

/**********************************************************************************************
 * /*================================ SECOND PAGE START HERE ==============================*/ *
 **********************************************************************************************/

import 'package:flutter/material.dart';
import 'package:flutter_application_2/splashpage.dart';

class ProfilePage extends StatelessWidget {
  var nameFromHome;

  ProfilePage(this.nameFromHome);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('profile page'),
        backgroundColor: Colors.amberAccent,
      ),
      body: Center(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Welcome $nameFromHome',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('go to home page')),
            ],
          ),
        ),
      ),
    );
  }
}

/*============================ END OF SECTION ============================*/

/**================================================================================================
 *                                         Main.dart
 *================================================================================================**/

//  import 'package:flutter/material.dart';
// import 'package:flutter_application_2/Intropage.dart';
// import 'package:flutter_application_2/my_profile.dart';
// import 'package:flutter_application_2/splashpage.dart';

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
  var namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text('my home page'),
        ),
        body: Center(
          child: Container(
            width: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Dashboard Screen',
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: namecontroller,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProfilePage(
                                  namecontroller.text.toString(),
                                )));
                  },
                  child: Text('My Profile'),
                )
              ],
            ),
          ),
        ));
  }
}
