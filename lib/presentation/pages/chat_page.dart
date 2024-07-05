import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/subpages/single_item_chat_user_page.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [Expanded(child: ListView.builder(itemCount: 10,itemBuilder: (_,index){
        return SingleItemChatUserPage( name: 'arindam',recentSendMessage: 'urgent',time: '12:47 AM',);
      }))],),
      floatingActionButton: FloatingActionButton(onPressed: (){},child: Icon(Icons.chat),),
    );
  }
}
