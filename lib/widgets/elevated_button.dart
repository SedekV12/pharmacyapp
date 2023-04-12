import 'package:flutter/material.dart';

class ElevatedButtom extends StatelessWidget {

  ElevatedButtom({this.entertext,this.enterlocation,this.onTap});

  String? entertext;
  String? enterlocation;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: ElevatedButton(
        child: Text(entertext!,style:TextStyle(color:Colors.black,fontSize: 24,fontFamily: 'Varela Round')),
        onPressed: () {
          Navigator.pushNamed(context,enterlocation!);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20)
        ),
      ),
    );
  }
}
