import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/screens/home_screen.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class SetInitalProfilePage extends StatefulWidget {
  const SetInitalProfilePage({super.key});

  @override
  State<SetInitalProfilePage> createState() => _SetInitalProfilePageState();
}

class _SetInitalProfilePageState extends State<SetInitalProfilePage> {
  TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
        child: Column(
          children: [
            Text(
              'Profile Info',
              style: TextStyle(
                  fontSize: 18, fontWeight: FontWeight.bold, color: greenColor),
            ),
            SizedBox(height: 30),
            Text(
              "Please provide your name and an optional Profile photo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(
              height: 30,
            ),
            _rowWidget(),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: greenColor,
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _rowWidget() {
    return Container(
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Icon(Icons.camera_alt),
          ),
          SizedBox(
            width: 8,
          ),
          Expanded(
              child: TextField(
            controller: _nameController,
            decoration: InputDecoration(hintText: 'Enter Your Name'),
          )),
          SizedBox(
            width: 8,
          ),
          Container(
            width: 35,
            height: 35,
            decoration: BoxDecoration(
                color: textIconColorGray,
                borderRadius: BorderRadius.all(Radius.circular(25))),
            child: Icon(Icons.insert_emoticon),
          )
        ],
      ),
    );
  }
}
