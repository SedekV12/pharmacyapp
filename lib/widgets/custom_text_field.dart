import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({this.hinText});

  String? hinText;

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration:InputDecoration(
        hintText: hinText,
          hintStyle: TextStyle(
            color: Colors.white,
            fontFamily: 'Varela Round',
          ),
          enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              )
          ) ,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white
              )
          )
      ) ,
    );
  }
}
