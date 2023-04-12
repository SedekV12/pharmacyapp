import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  CustomTextField({this.hinText,this.onChanged});

  String? hinText;
  Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: onChanged,
      decoration:InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              )
          ),
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
