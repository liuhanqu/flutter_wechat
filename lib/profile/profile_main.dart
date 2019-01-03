import 'package:flutter/material.dart';
import '../components/w_row.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  String _avatar = 'assets/images/avatar.jpeg'; // 头像
  String _nickname = '流汗去'; // 昵称
  String _username = 'wechat_008'; // 用户名

  Widget _buildHeader() {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 20),
        margin: EdgeInsets.only(bottom: 20),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
              width: 60,
              height: 60,
              image: AssetImage(_avatar),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      _nickname,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Text('微信号: $_username')
                  ],
                ),
              ),
            ),
            Icon(Icons.photo),
            Icon(Icons.navigate_next)
          ],
        ));
  }

  Widget _buildBody() {
    return Column(children: [
      W_Row(
        icon: Icon(
          Icons.check_circle,
          color: Colors.green,
        ),
        text: '支付',
        onTap: () {
          //
        },
      ),
      Container(
        margin: EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: <Widget>[
            W_Row(
              icon: Icon(
                Icons.collections,
                color: Colors.green,
              ),
              text: '收藏',
              onTap: () {
                //
              },
            ),
            W_Row(
              icon: Icon(
                Icons.photo_album,
                color: Colors.lightBlue,
              ),
              text: '相册',
              onTap: () {
                //
              },
            ),
            W_Row(
              icon: Icon(
                Icons.credit_card,
                color: Colors.lightBlue,
              ),
              text: '卡包',
              onTap: () {
                //
              },
            ),
            W_Row(
              icon: Icon(
                Icons.tag_faces,
                color: Colors.yellow,
              ),
              text: '表情',
              onTap: () {
                //
              },
            ),
          ],
        ),
      ),
      W_Row(
        icon: Icon(
          Icons.settings,
          color: Colors.lightBlueAccent,
        ),
        text: '设置',
        onTap: () {
          //
        },
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.camera_alt),
              onPressed: () {
                //
              },
            )
          ],
        ),
        body: Container(
          color: Color.fromRGBO(230, 230, 230, 1),
          child: ListView(
            children: <Widget>[_buildHeader(), _buildBody()],
          ),
        ));
  }
}
