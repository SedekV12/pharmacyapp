import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/row.dart';
import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';

import '../widgets/custom_button.dart';
import '../widgets/custom_text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({Key? key}) : super(key: key);

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
              ElevatedButton(
                child: Text('Regestier',style:TextStyle(color:Colors.black,fontSize: 24,fontFamily: 'Varela Round')),
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 50,vertical: 20)
                ),
              ),
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
}
