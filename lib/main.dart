import 'package:flutter/material.dart';
import 'package:flutter_basics/ui_helper/util.dart';

void main(){
  runApp(PractoApp());
}

class PractoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Practo App",
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize:50, fontWeight: FontWeight.bold,),
          subtitle1: TextStyle(fontSize:20, fontWeight: FontWeight.normal,color: Colors.grey, fontStyle: FontStyle.italic,),
        ),
        fontFamily: 'Roboto',

      ),
      home: DashBoardScreen(),
    );
  }

  }
class DashBoardScreen extends StatelessWidget{
  @override
  var emailText = TextEditingController();
  var passText = TextEditingController();

  Widget build(BuildContext context) {

    var names= ['varun','arun', 'tarun', 'charun', 'karun', 'jarun', 'tarun', 'tarun'];
    var colors = [Colors.red, Colors.blue, Colors.yellow, Colors.green, Colors.orange, Colors.pinkAccent, Colors.amber, Colors.cyan];

    return Scaffold(
      appBar: AppBar(
        title: Center(child: const Text("Practo")),
      ),
      body:Center(
        child: Container(
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              TextField(
                keyboardType: TextInputType.emailAddress, //Define type of entry
                enabled: true,
                controller: emailText, //TextEditingController emailText made as global above

                decoration: InputDecoration(

                  hintText: "E-Mail",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                          width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(21),
                      borderSide: BorderSide(
                        color: Colors.deepPurple,
                        width: 2
                      )

                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )

                    ),

                    // suffixText: "Username",
                    suffixIcon: IconButton(onPressed: ()
                    {
                      print("Email button pressed.");

                      },
                        icon: Icon(Icons.remove_red_eye, color: Colors.deepPurple,
                        )
                    ),


                  
                ),
              ),


              Container(
                height: 11,
              ),


              TextField(
                enabled: true,
                controller: passText,
                obscureText: true, //hide text
                keyboardType: TextInputType.visiblePassword,
                
                decoration: InputDecoration(
                    hintText: "Password",
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.deepOrange,
                            width: 2
                        )
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.deepPurple,
                            width: 2
                        )

                    ),
                    disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.grey,
                            width: 2
                        )

                    ),

                    // suffixText: "Password",


                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(21),
                        borderSide: BorderSide(
                            color: Colors.deepOrange
                        )
                    )
                ),
              ),

              Container(
                height: 11,
              ),
              
              ElevatedButton(onPressed: (){
                String uEmail = emailText.text;
                String uPass = passText.text;
                print("Email: ${emailText.text}");
                print("Password: ${passText.text}");

              }, child: Text("Login"))


            ],
          ),
        )
      ),

    );
  }


}

