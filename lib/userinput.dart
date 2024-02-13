import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightBlueAccent),
        useMaterial3: true,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
          subtitle1: TextStyle(fontWeight: FontWeight.w300, fontSize: 11),
        ),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  var emailtext = TextEditingController();
  var passText = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Home Screen"),
      ),
      body: Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: emailtext,
                // enabled: false,

                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.deepOrange,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.green,
                        width: 2,
                      ),
                    ),
                    disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(11),
                      borderSide: BorderSide(
                        color: Colors.deepPurpleAccent,
                      ),
                    ),
                    suffixText: "Username",
                    suffixStyle: TextStyle(fontSize: 13),
                    suffixIcon: IconButton(
                      icon: Icon(
                        Icons.content_paste_search_outlined,
                      ),
                      onPressed: () {},
                    ),
                    prefixIcon: Icon(
                        Icons.person

                    )

                ),
              ),
              Container(
                height: 20,
              ),
              TextField(
                keyboardType: TextInputType.phone,
                controller: passText,
                obscureText: true,
                decoration: InputDecoration(

                  hintText: "Enter Password",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: BorderSide(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                String uEmail = emailtext.text.toString();
                String upass = passText.text;
                print("Email : $uEmail, Pass : $upass");

              }, child: Text("Login"))
            ],
          ),
        ),
      ),
    );
  }
}
