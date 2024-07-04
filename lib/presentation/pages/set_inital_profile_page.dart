import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class SetInitalProfilePage extends StatelessWidget {
  const SetInitalProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(margin: EdgeInsets.symmetric(horizontal: 20,vertical: 40),
    child: Column(children: [
      Text('Profile Info',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color:  greenColor),),

    ],),),);
  }
}