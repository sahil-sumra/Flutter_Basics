import 'package:flutter/cupertino.dart';
import 'dart:ui';

import 'package:flutter/material.dart';

/********************************
 * // CREATING A CUSTOME TEXT WIDGET *
 ********************************/
TextStyle mTextStyle31({
  Color textcolor = Colors.black,
  FontWeight fontWeight = FontWeight.normal,
}) {
  return TextStyle(
    fontSize: 31,
    fontWeight: fontWeight,
    color: textcolor,
  );
}

TextStyle mTextStyle21() {
  return TextStyle(
    fontSize: 21,
  );
}

TextStyle mTextStyle11() {
  return TextStyle();
}

TextStyle mTextStyle41() {
  return TextStyle(
    fontSize: 41,
  );
}

/***************************************
 * // CREATING A CUSTOME BUTTON WIDGET *
 ***************************************/
class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgColor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  RoundedButton(
      {required this.btnName,
      this.icon,
      this.bgColor = Colors.amber,
      this.textStyle,
      this.callback});

  @override
  Widget build(Object context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      child: icon != null
          ? Row(
              children: [
                icon!,
                Text(
                  btnName,
                  style: textStyle,
                )
              ],
            )
          : Text(
              btnName,
              style: textStyle,
            ),
      style: ElevatedButton.styleFrom(
          // primary: bgColor,
          shadowColor: bgColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(
              // bottomLeft: Radius.circular(21),
              // topRight: Radius.circular(21)
              Radius.circular(20)))),
    );
  }
}
