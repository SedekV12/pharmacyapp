import 'package:chatapp/constants.dart';
import 'package:flutter/material.dart';

class SlidesPage extends StatelessWidget {
  const SlidesPage({Key? key}) : super(key: key);

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
          SizedBox(height: 30,),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Text('pharmacy name',style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: 'Valera Round'),),
                    Text('pharmacy lacation',style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: 'Valera Round')),
                    Text('pharmacy rate',style: TextStyle(fontSize: 24,color: Colors.white,fontFamily: 'Valera Round')),
                  ],
                ),
              ),

              SizedBox(height: 50,),
              ElevatedButton(
                child: Text('next',style:TextStyle(color:Colors.black,fontSize: 24,fontFamily: 'Varela Round')),
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 20)
                ),
              ),
            ],
          )
        ],
      ),

    );
  }
}
