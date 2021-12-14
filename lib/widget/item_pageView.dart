import 'package:flutter/material.dart';
Widget item_pageView({
   String? text,  String? icon
}){
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(child: Image.asset(icon!),
          height: 70,
          width: 100,),
        SizedBox(height: 10,),
        Text(text!,
          style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,
              color: Colors.black,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}