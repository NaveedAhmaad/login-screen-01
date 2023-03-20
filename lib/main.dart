import 'package:assign_01_screen_01/sources/colors.dart';
import 'package:assign_01_screen_01/sources/elevated_button.dart';
import 'package:assign_01_screen_01/sources/text_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Sample App",
            style: TextStyle(
              color: titleBarColor,
            ),
          ),
        ),
        body: Material(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              //Header of the Screen
              Padding(
                padding: EdgeInsets.all(18),
                child: Center(
                  child: Text(
                    "TutorialKart",
                    style: TextStyle(
                        color: screenBackgroundColor,
                        fontSize: 32,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),

              //Screen title Sign-in text
              Center(
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontSize: 22,
                  ),
                ),
              ),

              //Text-fields
              MyTextField(
                  myLableText: "User Name", myBorderColor: textFiledBorder),
              MyTextField(
                  myLableText: "Password", myBorderColor: textFiledBorder),

              //Forget Button
              TextButton(
                onPressed: () {},
                child: Text(
                  "Forgot Password",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),

              //Login Button
              Row(
                //mainAxisAlignment: MainAxisAlignment.,
                children: [
                  MyCustomEButton(
                      bgButtonColor: screenBackgroundColor,
                      textColor: titleBarColor,
                      text: "Login"),
                ],
              ),

              //Account Registration page button
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Does not have account?",
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      "Sign in",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
