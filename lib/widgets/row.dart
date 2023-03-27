import 'package:flutter/material.dart';

class Rows extends StatelessWidget {
  Rows ({this.text});

  String? text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(text!,style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: 'Varela Round'),)
      ],
    );
  }
}
