
import 'package:chatapp/widgets/constants.dart';
import 'package:chatapp/widgets/custom_text_field.dart';
import 'package:chatapp/widgets/elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

import '../widgets/show_snack_bar.dart';


class LoginPage extends StatefulWidget {
   LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
   String? email;

   String? password;

   GlobalKey<FormState> formKey = GlobalKey();

   bool isloading =false;

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                Container(height: 10,),
                CircleAvatar(
                  radius: 120,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 125,
                    backgroundImage: AssetImage('assets/th.jpg'),
                  ),
                ),
                Container(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Pharmacy App',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round')),
                  ],
                ),
                Container(height: 20,),
                Row(
                  children: [
                    Text('Login',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round')),
                  ],
                ),
                Container(height: 20,),
                CustomTextFormField(
                  onChanged: (data){
                    email=data;
                  },
                  hinText: 'Email,',
                ),
                Container(height: 20,),
                CustomTextFormField(
                  obscureText: true,
                  onChanged: (data){
                    password=data;
                  },
                  hinText: 'Password',
                ),
                Container(height: 20,),
                ElevatedButtom(
                  onTap: () async {
                    if (formKey.currentState!.validate()) {
                      isloading = true;
                      setState(() {});
                      try{
                        await loginuser();
                        Navigator.pushNamed(context, 'HomePage',arguments: email);
                      } on FirebaseAuthException catch(ex){
                        if (ex.code == 'user-not-found') {
                          showsnackbar(context,'No user found for that email');
                        } else if (ex.code == 'wrong-password') {
                          showsnackbar(context,'Wrong password provided for that user');
                        }
                      }catch(ex)
                      {
                        showsnackbar(context,'there was an error');
                      }
                      isloading = false;
                      setState(() {});
                    }
                  },
                  entertext: 'Login',),
                Container(height: 20,),
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
            ]),
            )
          ),
        )
      );
  }
   Future<void> loginuser() async {
     UserCredential user = await FirebaseAuth.instance
         .signInWithEmailAndPassword(
         email: email!, password: password!);
   }
}

