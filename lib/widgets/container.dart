import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  CustomContainer({this.enterlocation});
  String? enterlocation;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, enterlocation!);
      },
      child: Container(
        padding: EdgeInsets.all(7),
        height: 220,
        width: 370,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: Center(
              child:
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/th.jpg'),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('ELEZABY',style: TextStyle(fontSize: 22,color: Colors.black,fontFamily: 'Varela Round')),
                      Text('Its 10 kilometers away.',style: TextStyle(fontSize: 18,color: Colors.black,fontFamily: 'Varela Round')),
                      Text('RATE 4.5',style: TextStyle(fontSize: 22,color: Colors.black,fontFamily: 'Varela Round')),
                    ],
                  ),
                ],
              ),
            )
        ),
      ),
    );
  }
}
