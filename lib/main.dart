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
  var nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              controller: nameController,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.amber,
              padding:
                  EdgeInsets.only(top: 100, bottom: 100, left: 30, right: 30),
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => IntroPage()),
                  // );
                  Navigator.pop(context);
                },
                child: Text("Previous"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
