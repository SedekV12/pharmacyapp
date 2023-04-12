
import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/custom_text_field.dart';
import 'package:chatapp/widgets/elevated_button.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: ListView(
          children: [
            SizedBox(height: 10,),
            CircleAvatar(
              radius: 120,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 125,
                backgroundImage: AssetImage('assets/th.jpg'),
              ),
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pharmacy App',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round')),
              ],
            ),
            Spacer(flex: 1,),
            Row(
              children: [
                Text('Login',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round')),
              ],
            ),
            SizedBox(height: 20,),
            CustomTextField(
              hinText: 'Email,',
            ),
            SizedBox(height: 10,),
            CustomTextField(
              hinText: 'Password',
            ),
            SizedBox(height: 20,),
            ElevatedButtom(entertext: 'Login',enterlocation: 'HomePage',),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('I dont have an account?',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),),
                    GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, 'RegisterPage');
                      },

                        child: Text('   register',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),)),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                    onTap: (){
                      Navigator.pushNamed(context, 'TermsAgreements');
                    },

                    child: Text('Terms & Agreements',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),)),
              ],
            ),
            Spacer(flex: 3,),
          ],
        ),
      )
    );
  }
}
