
import 'package:chatapp/widgets/constants.dart';
import 'package:chatapp/widgets/chat_buble.dart';
import 'package:chatapp/widgets/message.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ChatPage extends StatelessWidget {

  CollectionReference messages = FirebaseFirestore.instance.collection('messages');
  TextEditingController controller = TextEditingController();
  final _controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    var email = ModalRoute.of(context)!.settings.arguments;
    return StreamBuilder<QuerySnapshot>(
      stream: messages.orderBy('created at',descending: true).snapshots(),
      builder: (context,snapshot){
        if(snapshot.hasData){
          List <Message> messageslist = [];
          for( int i =0 ; i<snapshot.data!.docs.length; i++)
          {
            messageslist.add(Message.fromJson(snapshot.data!.docs[i]));
          }
          return  Scaffold(
            appBar: AppBar(
              automaticallyImplyLeading: true,
              elevation: 0,
              backgroundColor:Colors.white,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/th.jpg'),
                  ),
                  Text('  pharmacy app',style: TextStyle(color:kPrimaryColor),),
                ],
              ),
            ),
            body: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    reverse: true,
                    controller: _controller,
                      itemCount: messageslist.length,
                      itemBuilder: (context,index)
                  {
                    return messageslist[index].id ==email ?
                    ChatBuble(message: messageslist[index],): 
                    ChatBubleForFriend(message: messageslist[index],);
                  }),
                ),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: TextField(
                    controller: controller,
                    onSubmitted: (data)
                    {
                      messages.add({
                        'message': data,
                        'created at': DateTime.now(),
                        'id' : email ,
                      });
                      controller.clear();
                      _controller.animateTo(
                        0,
                        duration: Duration(milliseconds: 400),
                        curve: Curves.fastOutSlowIn,
                      );
                    },
                    decoration: InputDecoration(
                      hintText: 'send message',
                      suffixIcon: Icon(Icons.send,color: kPrimaryColor,),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide(
                          color: kPrimaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        }else{
          return Text('Loading....');
        }
      },
    );
  }
}
