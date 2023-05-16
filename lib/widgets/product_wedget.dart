
import 'package:flutter/material.dart';

class CustomProduct extends StatelessWidget {
   CustomProduct({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      height: 120,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Center(
            child:
            Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('assets/th.jpg'),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('panadol',style: TextStyle(fontSize: 24,color: Colors.black,fontFamily: 'Varela Round')),
                    Text('it costs 20 egp',style: TextStyle(fontSize: 22,color: Colors.black,fontFamily: 'Varela Round')),
                    Container(height: 15,),
                  ],
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey.shade900),
                    onPressed: () {},
                    child: const Text('Add to Cart')),
            ])
          )
      ),
    );
  }
}
