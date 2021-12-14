import 'package:flutter/material.dart';

Widget SettingsItem(  {
  required String text,
  IconData? icon,
 required bool value,
}) {
  return Padding(
    padding: EdgeInsets.only(top: 4),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Icon(
          icon,
          color: Colors.black26,
        ),
        Spacer(),
        Switch(
          value: value,
          onChanged: (value) {
            value = true;
          },
        ),
      ],
    ),
  );
}
