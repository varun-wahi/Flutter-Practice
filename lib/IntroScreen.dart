import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';

class IntroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Intro Page"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          padding: EdgeInsets.only(top: 100, bottom: 100, left: 30, right: 30),
          color: Colors.red,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return MyHomeScreen();
                  },
                ),
              );
            },
            child: Text("Next"),
          ),
        ),
      ),
    );
  }
}
