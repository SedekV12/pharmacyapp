import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/container.dart';
import 'package:chatapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text('pharmacy app'),
        centerTitle: true,
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
            GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, 'ChatPage',arguments: email);
                },
                child: ListTile(leading:Icon(Icons.contact_mail_sharp),title: Text('contact us'),)),
            GestureDetector(
              onTap: (){
                Navigator.pushNamed(context,'LoginPage');
              },
              child: ListTile(leading:Icon(Icons.logout),title: Text('Logout'),),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.house),
            label: 'home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag),
              label: 'your Purchases'
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SearchBar(),
            Container(height: 10,),
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return CustomContainer(enterlocation: 'Products',);
              }),
            ),
          ],
        ),
      )
    );
  }
}
