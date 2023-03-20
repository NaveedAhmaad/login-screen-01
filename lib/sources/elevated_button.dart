import 'package:flutter/material.dart';

class MyCustomEButton extends StatelessWidget {
  late Color bgButtonColor, textColor;
  late String text;

  MyCustomEButton({
    required this.bgButtonColor,
    required this.textColor,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.fromLTRB(22, 10, 22, 5),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: this.bgButtonColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
            padding: EdgeInsets.all(18),
          ),
          onPressed: () {},
          child: Text(
            this.text,
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Arial',
              color: this.textColor,
            ),
          ),
        ),
      ),
    );
  }
}