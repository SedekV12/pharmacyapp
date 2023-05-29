import 'package:chatapp/widgets/constants.dart';
import 'package:chatapp/widgets/container.dart';
import 'package:chatapp/widgets/search_bar.dart';
import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  @override
  Widget build(BuildContext context) {
    String email = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: Colors.green.shade800,
        title: Text('pharmacy app'),
        elevation: 0,
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
        onTap: (value) {
          selected = value;
          setState(() {});
        },
        currentIndex: selected,
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
      body:selected == 0? Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            SearchBar(),
            Container(height: 10,),
            Expanded(
              child: ListView.builder(itemBuilder: (context,index){
                return CustomContainer(enterlocation: 'ItemsPage',);
              }),
            ),
          ],
        ),
      ):Scaffold(),
    );
  }
}
