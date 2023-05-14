import 'package:chatapp/constants.dart';
import 'package:chatapp/widgets/message.dart';
import 'package:flutter/material.dart';

class ChatBuble extends StatelessWidget {
  const ChatBuble({Key? key,required this.message}) : super(key: key);

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
        padding: EdgeInsets.only(left: 16,top: 28,bottom: 28,right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          color: kPrimaryColor,
        ),
        child: Text(message.message,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),),
      ),
    );
  }
}


class ChatBubleForFriend extends StatelessWidget {
  const ChatBubleForFriend({Key? key,required this.message}) : super(key: key);

  final Message message;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 12,horizontal: 10),
        padding: EdgeInsets.only(left: 16,top: 28,bottom: 28,right: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(30),
          ),
          color: Colors.orange,
        ),
        child: Text(message.message,style: TextStyle(color: Colors.white,fontSize: 20,fontFamily: 'Varela Round'),),
      ),
    );
  }
}
