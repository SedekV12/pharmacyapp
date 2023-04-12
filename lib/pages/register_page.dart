import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/elevated_button.dart';
import 'package:chatapp/widgets/row.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
   RegisterPage({Key? key}) : super(key: key);

  String? email;
  String? password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: ListView(
            children: [

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
              SizedBox(height: 20,),
              Row(
                children: [
                  Text('Register',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round',)),
                ],
              ),
              SizedBox(height: 20,),
              Rows(text: 'enter your first name',),
              CustomTextField(
                hinText: 'first name',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your last name',),
              CustomTextField(
                hinText: 'last name',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your email',),
              CustomTextField(
                onChanged: (data){
                  email=data;
                },
                hinText: 'email',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your address',),
              CustomTextField(
                hinText: 'address',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your phone number',),
              CustomTextField(
                hinText: 'phone number',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your password',),
              CustomTextField(
                onChanged: (data){
                  password=data;
                },
                hinText: 'Password',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your password again',),
              CustomTextField(
                hinText: 'repeat your password',
              ),
              SizedBox(height: 10,),
              Rows(text: 'enter your gender',),
              CustomTextField(
                hinText: 'gender',
              ),
              SizedBox(height: 20,),
              ElevatedButtom(
                onTap: () async {
                     try{
                       await registeruser();
                  } on FirebaseAuthException catch(ex){
                       if (ex.code == 'weak-password') {
                         showsnackbar(context,'week password');
                       } else if (ex.code == 'email-already-in-use') {
                         showsnackbar(context,'email already in use');
                       }
                     }
                     showsnackbar(context,'success');
                },
                entertext: 'Register',enterlocation: 'LoginPage',),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('already have an account !',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),),
                  GestureDetector(
                    onTap: (){
                      Navigator.pop(context);
                    },
                      child: Text('    login',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),)),
                  SizedBox(height: 50,),

                ],
              ),
            ],
          ),
        )
    );

  }

  void showsnackbar(BuildContext context,message) {
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)));
  }

  Future<void> registeruser() async {
    UserCredential user = await FirebaseAuth.instance
     .createUserWithEmailAndPassword(
         email: email!, password: password!);
  }
}
