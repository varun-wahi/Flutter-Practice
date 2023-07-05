import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_basics/IntroScreen.dart';
import 'package:flutter_basics/SplashScreen.dart';
import 'package:flutter_basics/ui_helper/util.dart';
import 'package:flutter_basics/widgets/rounded_btn.dart';

void main() {
  runApp(PractoApp());
}

class PractoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Practo App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.black,
            //fontStyle: FontStyle.italic,
          ),
        ),
        fontFamily: 'Roboto',
      ),
      home: SplashScreen(),
    );
  }
}

class MyHomeScreen extends StatelessWidget {
  var name = 'Varun';

  MyHomeScreen(String name) {
    this.name = name;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "Hello, $name!",
              style: TextStyle1(),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Go back")),
          ],
        ),
      ),
    );
  }
}
