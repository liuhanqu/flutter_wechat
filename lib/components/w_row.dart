import 'package:flutter/material.dart';

class W_Row extends StatelessWidget {
  W_Row(
      {Key key,
      this.icon,
      this.text,
      this.color = Colors.white,
      this.height = 48,
      this.onTap})
      : super(key: key);

  final Widget icon;
  final String text;
  final Function onTap;
  final Color color;
  final double height;

  Widget build(BuildContext context) {
    return Container(
        height: height,
        padding: EdgeInsets.only(left: 20),
        color: color,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            icon,
            Expanded(
              child: Container(
                child: Text(text),
                padding: EdgeInsets.only(left: 20),
              ),
            ),
            IconButton(
              icon: Icon(Icons.navigate_next),
              onPressed: () {},
            )
          ],
        ));
  }
}
