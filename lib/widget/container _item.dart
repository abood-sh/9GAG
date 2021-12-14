
import 'package:flutter/material.dart';

Widget Container_item(
{
  required String text , required String image ,}
    ){

  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    height: 50,
    width: 350,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(
        width: 1,
        color: Colors.black38,
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Image.asset(image,
            width: 25,),
          SizedBox(width: 70,),
          Text(text,style: TextStyle(fontWeight: FontWeight.bold),)
        ],
      ),
    ),
  );

}
