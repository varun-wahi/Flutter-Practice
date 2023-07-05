import 'package:flutter/material.dart';
import 'package:flutter_basics/main.dart';
import 'package:flutter_basics/ui_helper/util.dart';

class IntroScreen extends StatelessWidget {
  var nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login Page"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Enter your name",
                style: TextStyle1(),
              ),
            ),
            Container(
              width: 300,
              child: TextField(
                controller: nameController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            MyHomeScreen(nameController.text.toString())),
                  );
                  // Navigator.pop(context);
                },
                child: Text("Submit"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
