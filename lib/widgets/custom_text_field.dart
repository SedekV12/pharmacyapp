import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  CustomTextFormField({this.hinText,this.onChanged,this.obscureText = false});

  String? hinText;
  Function(String)? onChanged;
  bool? obscureText;


  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText!,
      validator: (data)  {
         if(data!.isEmpty)
        {
          return('that was wrong');
        }
      },
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
                  color: Colors.white,
              )
          ) ,
          border: OutlineInputBorder(
              borderSide: BorderSide(
                  color: Colors.white,
              )
          )
      ) ,
    );
  }
}
