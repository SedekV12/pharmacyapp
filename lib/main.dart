import 'package:chatapp/pages/Terms_Agreements.dart';
import 'package:chatapp/pages/home_page.dart';
import 'package:chatapp/pages/home_page_2.dart';
import 'package:chatapp/pages/login_page.dart';
import 'package:chatapp/pages/register_page.dart';
import 'package:chatapp/pages/welcome_page.dart';
import 'package:flutter/material.dart';


void main()  {
  runApp(chatapp());
}

class chatapp extends StatelessWidget {
  const chatapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      routes: {
        'LoginPage' : (context) => LoginPage(),
        'RegisterPage' :(context) => RegisterPage(),
        'TermsAgreements' :(context) => TermsAgreements(),
        'WelcomePage' :(context) => WelcomePage(),
        'HomePage' :(context) => HomePage(),
        'HomePage2' :(context) => HomePage2(),
      },
      initialRoute: 'WelcomePage',
    );
  }
}
