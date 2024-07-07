import 'package:flutter/material.dart';
import 'package:whatsapp_clone/presentation/pages/calls_page.dart';
import 'package:whatsapp_clone/presentation/pages/camera_page.dart';
import 'package:whatsapp_clone/presentation/pages/chat_page.dart';
import 'package:whatsapp_clone/presentation/pages/status_page.dart';
import 'package:whatsapp_clone/presentation/widgets/custom_tab_bar.dart';
import 'package:whatsapp_clone/presentation/widgets/theme/style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;
  int _currentPageIndex=1;
  PageController _pageViewController=PageController(initialPage: 1);
   List<Widget>  _pages = [
    CameraPage(),
    ChatPage(),
    StatusPage(),
    CallsPage(),
  ];
  _buildSearch() {
    return SafeArea(
      child: Container(
        
        height: 45,
        decoration: BoxDecoration(color: Colors.white,boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(.3),
              spreadRadius: 1,
              offset: Offset(0, 0.5))
        ]),
        child: TextField(
          decoration: InputDecoration(
              hintText: 'Search...',
              prefixIcon: InkWell(
                child: Icon(Icons.arrow_back),
                onTap: () {
                  setState(() {
                    _isSearch=false;
                  });
                },
              )),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _currentPageIndex !=0?AppBar(
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: _isSearch == false ? primaryColor : Colors.transparent,
        title: _isSearch == false
            ? Text("WhatsApp Clone",style: TextStyle(color: Colors.white),)
            : Container(
                height: 0.0,
                width: 0.0,
              ),
        flexibleSpace: _isSearch == false
            ? Container(
                height: 0.0,
                width: 0.0,
              )
            : _buildSearch(),
        
        actions: [
          IconButton(
              onPressed: () {
                setState(() {
                  _isSearch=true;
                });
              }, icon: Icon(Icons.search), color: Colors.white),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert),
              color: Colors.white),
        ],
      ):null,
      body: Column(
        children: [
           _isSearch == false
              ? _currentPageIndex != 0
                  ? CustomTabBar(index: _currentPageIndex)
                  : Container(height: 0.0, width: 0.0,)
              : Container(
                  height: 0.0,
                  width: 0.0,
                ),
          Expanded(child: PageView.builder(itemCount: _pages.length,controller: _pageViewController,onPageChanged: (index){
            setState(() {
              
            _currentPageIndex=index;
            });
          },itemBuilder: (_,index){
            return _pages[index];
          }))
        ],
      ),
    );
  }
}
