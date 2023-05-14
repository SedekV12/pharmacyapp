import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/elevated_button.dart';
import 'package:chatapp/widgets/row.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/show_snack_bar.dart';

class RegisterPage extends StatefulWidget {
   RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  String? email;

  String? password;

   String? phoneunmber;

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
                  CircleAvatar(
                    radius: 120,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 125,
                        backgroundImage: AssetImage('assets/th.jpg'),
                    ),
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Pharmacy App',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round')),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text('Register',style: TextStyle(fontSize: 28,color: Colors.white,fontFamily: 'Varela Round',)),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  Rows(text: 'enter your email',),
                  CustomTextFormField(
                    onChanged: (data){
                      email=data;
                    },
                    hinText: 'email',
                  ),
                  Container(
                    height: 20,
                  ),
                  Rows(text: 'enter your password',),
                  CustomTextFormField(
                    obscureText: true,
                    onChanged: (data){
                      password=data;
                    },
                    hinText: 'Password',
                  ),
                  Container(
                    height: 20,
                  ),
                  Container(
                    height: 20,
                  ),
                  ElevatedButtom(

                    onTap: () async {
                         if (formKey.currentState!.validate()) {
                           isloading = true;
                           setState(() {});
                           try{
                             await registeruser();
                             Navigator.pushNamed(context, 'LoginPage');
                             showsnackbar(context,'success');
                                               } on FirebaseAuthException catch(ex){
                             if (ex.code == 'weak-password') {
                               showsnackbar(context,'week password');
                             } else if (ex.code == 'email-already-in-use') {
                               showsnackbar(context,'email already in use');
                             }
                           }catch(ex)
                           {
                             showsnackbar(context,'there was an error');
                           }
                           isloading = false;
                           setState(() {

                           });
                         }
                    },
                    entertext: 'Register',),
                  Container(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('already have an account !',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),),
                      GestureDetector(
                        onTap: (){
                          Navigator.pop(context);
                        },
                          child: Text('    login',style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),)),
                      Container(
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }



  Future<void> registeruser() async {
    UserCredential user = await FirebaseAuth.instance
     .createUserWithEmailAndPassword(
         email: email!, password: password!);
  }
}
