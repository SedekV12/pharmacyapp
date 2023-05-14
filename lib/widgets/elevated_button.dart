import 'package:flutter/material.dart';

class ElevatedButtom extends StatelessWidget {

  ElevatedButtom({required this.entertext,this.onTap});

   String entertext;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(entertext,style:TextStyle(color:Colors.black,fontSize: 24,fontFamily: 'Varela Round')),
      onPressed:onTap,
      style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20)
      ),
    );
  }
}
