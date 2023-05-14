import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/container.dart';
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
          Container(height: 20,),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          CustomContainer(),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: RichText(text: TextSpan(children: [TextSpan(text: ' last page',style: TextStyle(fontSize: 30,fontFamily: 'Varela Round')),WidgetSpan(child: Icon(Icons.arrow_back_ios_sharp,size: 30,))]),
                  )),
              SizedBox(height: 10,),
              GestureDetector(
                  onTap: (){},
                  child: RichText(text: TextSpan(children: [TextSpan(text: '      next page',style: TextStyle(fontSize: 30,fontFamily: 'Varela Round')),WidgetSpan(child: Icon(Icons.navigate_next,size: 30,))]),
                  )),
            ],
          ),
          Container(height: 20,),
        ],
      ),
    );
  }
}
