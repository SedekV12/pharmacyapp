import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: ListView(
        children: [
          SizedBox(height: 50,),
          CircleAvatar(
            radius: 120,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 125,
              backgroundImage: AssetImage('assets/th.jpg'),
            ),
          ),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Text('you are in the right place',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round'),),
                Text('any medicine you will',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round'),),
                Text('need, you will find',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round'),),

                SizedBox(height: 50,),
                ElevatedButtom(entertext: 'Start',enterlocation: 'LoginPage',),
            ],
            ),
          )
        ],
      ),
    );
  }
}
