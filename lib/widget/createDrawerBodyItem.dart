import 'package:flutter/material.dart';
Widget createDrawerBodyItem(
    {required IconData icon, required String text,required IconData icon_tow, required GestureTapCallback onTap}) {
  return  ListTile(
    title: Row(
      children: <Widget>[
        Icon(icon),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(text),
          ),
        ),
        Icon(icon_tow),
      ],
    ),
    onTap: onTap,
  );
}