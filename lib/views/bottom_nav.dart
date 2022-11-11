import 'package:deeging_frontend/views/home.dart';
import 'package:deeging_frontend/views/home_chat.dart';
import 'package:deeging_frontend/views/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  _NavigationScreenState createState() {
    return _NavigationScreenState();
  }
}

class _NavigationScreenState extends State<NavigationScreen> {
  List<Widget> data = [ Home(), HomeChats() , Profile(),];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CupertinoTabScaffold(
          //elevation: 0,
          tabBar: CupertinoTabBar(
            border: Border.all(color: Colors.transparent),
            backgroundColor: Colors.white,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.home),
              ),
              BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.bubble_left),
              ),
               BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.person),
              ),
            ],
          ),   
          tabBuilder: (context, index) {
            return CupertinoTabView(
              builder: (context) {
                return data[index];
              },
            );
          },
        )
    );
  }
}