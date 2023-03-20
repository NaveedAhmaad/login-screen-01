import 'package:assign_01_screen_01/sources/colors.dart';
import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  late String myLableText, myHintText;
  late Color preIconColor, myBorderColor;
  late IconData myIcon;
  bool myObscureText = false;
  late TextCapitalization mytextCapitalization;
  late TextInputType myKeyboardType;

  MyTextField({
    required this.myLableText,
    required this.myBorderColor,
  }) {
    if (myLableText == "User Name") {
      myKeyboardType = TextInputType.text;
      myHintText = "User Name";
     // myIcon = Icons.person;
      mytextCapitalization = TextCapitalization.words;
    } else if (myLableText == "Name") {
      myKeyboardType = TextInputType.text;
      myHintText = "Enter your Name";
      mytextCapitalization = TextCapitalization.words;
      myIcon = Icons.person_4_outlined;
    } else if (myLableText == "Password") {
      myKeyboardType = TextInputType.visiblePassword;
      mytextCapitalization = TextCapitalization.none;
      myObscureText = true;
      myHintText = "Password";
     // myIcon = Icons.lock;
    } else if (myLableText == "Email") {
      myKeyboardType = TextInputType.emailAddress;
      mytextCapitalization = TextCapitalization.none;
      myHintText = "Enter your Email";
    //  myIcon = Icons.email;
    } else if (myLableText == "Phone Number") {
      myKeyboardType = TextInputType.phone;
      mytextCapitalization = TextCapitalization.none;
      myHintText = "Enter Phone Number";
     // myIcon = Icons.phone;
    } else if (myLableText == "Address") {
      myKeyboardType = TextInputType.multiline;
      mytextCapitalization = TextCapitalization.sentences;
      myHintText = "Enter Address";
     // myIcon = Icons.streetview_outlined;
    } else if (myLableText == "Date") {
      myKeyboardType = TextInputType.datetime;
      mytextCapitalization = TextCapitalization.none;
      myHintText = "Enter Date";
     // myIcon = Icons.date_range;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(22, 20, 22, 5),
        child: TextField(
          autofocus: false,
          obscuringCharacter: "*",
          obscureText: myObscureText,
          keyboardType: myKeyboardType,
          textCapitalization: mytextCapitalization,
          decoration: InputDecoration(
            labelText: this.myLableText,
            labelStyle: TextStyle(
              fontSize: 20,
              color: textFiledBorder,
            ),
            hintText: this.myHintText,
            //suffixIcon: Icon(mySufixIcon),
           // prefixIcon: Icon(myIcon),
           // prefixIconColor: this.preIconColor,
            hintStyle: TextStyle(
              color: Color(0xff7E8183),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: this.myBorderColor,
                style: BorderStyle.solid,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(
                color: this.myBorderColor,
                style: BorderStyle.solid,
                width: 3,
              ),
            ),
          ),
          onSubmitted: (value) {},
        ),
      ),
    );
  }
}
