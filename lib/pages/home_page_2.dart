import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class HomePage2 extends StatelessWidget {
  const HomePage2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('pharmacy app'),
      ),
      body: ListView(
        children:[
          SizedBox(height: 10,),
          Container(
            padding: EdgeInsets.all(7),
            height: 250,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                    ],
                  ),
                )
            ),
          ),
          Container(
            padding: EdgeInsets.all(7),
            height: 250,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                    ],
                  ),
                )
            ),
          ),
          Container(
            padding: EdgeInsets.all(7),
            height: 250,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                    ],
                  ),
                )
            ),
          ),
          Container(
            padding: EdgeInsets.all(7),
            height: 250,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                    ],
                  ),
                )
            ),
          ),
          Container(
            padding: EdgeInsets.all(7),
            height: 250,
            width: 370,
            child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20.0))),
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
                    ],
                  ),
                )
            ),
          ),
          SizedBox(height: 10,),
          GestureDetector(
              onTap: (){},
              child: Text('                  next page',style: TextStyle(color: Colors.white,fontSize: 28,fontFamily: 'Varela Round'),)),
          Icon(Icons.next_plan,size: 50,),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
