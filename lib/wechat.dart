import 'package:flutter/material.dart';
import './profile/profile_main.dart';

class Wechat extends StatefulWidget {
  @override
  _WechatState createState() => _WechatState();
}

class _WechatState extends State<Wechat> {
  var _currentIndex = 0;

  void _itemOnTap(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  List<Widget> _bodys = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Profile(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        fixedColor: Colors.green,
        iconSize: 20,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.message),
              title: Text('微信', style: TextStyle(fontSize: 12))),
          BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              title: Text('通讯录', style: TextStyle(fontSize: 12))),
          BottomNavigationBarItem(
              icon: Icon(Icons.explore),
              title: Text('发现', style: TextStyle(fontSize: 12))),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              title: Text('我', style: TextStyle(fontSize: 12))),
        ],
        onTap: _itemOnTap,
      ),
    );
  }
}
