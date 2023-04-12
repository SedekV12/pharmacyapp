import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/container.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text('pharmacy app'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(decoration: (BoxDecoration(color: Colors.green.shade800)), accountName: Text('User Name', style: TextStyle(fontSize:22,fontFamily: 'Varela Round' ),), accountEmail: Text('Email',style: TextStyle(fontSize: 22,fontFamily: 'Varela Round')),
              currentAccountPicture: CircleAvatar(
                radius: 80,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('assets/R.jpg'),
              ),
              currentAccountPictureSize: Size.square(70),
            ),
            ListTile(leading:Icon(Icons.account_box_rounded),title: Text('Account'),),
            ListTile(leading:Icon(Icons.settings),title: Text('Settings'),),
            ListTile(leading:Icon(Icons.logout),title: Text('Logout'),

                ),],
        ),
      ),
      body: ListView(
        children:[
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      )
                    ),
                    label: Text('Search',style: TextStyle(color: Colors.white),),
                    suffixIcon: Icon(Icons.search_rounded,color: Colors.white,),
                    border: OutlineInputBorder(),
                    hintText: 'Search Pharmases'
            )
            ),
          ),
          SizedBox(height: 10,),
          Coontainer(enterlocation: 'Boxx',),
          Coontainer(),
          Coontainer(),
          Coontainer(),
          SizedBox(height: 10,),
          GestureDetector(
              onTap: (){
                Navigator.pushNamed(context, 'HomePage2');
              },
              child: RichText(text: TextSpan(children: [TextSpan(text: '                 next page',style: TextStyle(fontSize: 30,fontFamily: 'Varela Round')),WidgetSpan(child: Icon(Icons.next_plan,size: 30,))]),
              )),
          SizedBox(height: 10,),
        ],
      ),
    );
  }
}
