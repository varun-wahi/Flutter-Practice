import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callBack;

  RoundedButton(
      {required this.btnName,
      this.bgColor = Colors.deepPurple,
      this.callBack,
      this.icon,
      this.textStyle}) {
    print("hello");
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 120,
        child: ElevatedButton(
          onPressed: () {
            callBack!(); //The '!' mark says that callBack will NOT be null
          },
          child: icon != null
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  //icon!=null means if icon is not null then return Row
                  //or if there is no icon, return only text
                  //if else can also be used directly
                  children: [
                    Text(
                      btnName,
                      style: textStyle,
                    ),
                    SizedBox(width: 11),
                    icon!,
                  ],
                )
              : Text(
                  btnName,
                  style: textStyle,
                ), //The ':' serves as else statement (If icon null, return Text only)

          style: ElevatedButton.styleFrom(
              primary: bgColor,
              shadowColor: Colors.black,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(21))),
        ),
      ),
    );
  }
}
