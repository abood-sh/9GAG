import 'package:flutter/material.dart';
import 'package:gag9/widget/createDrawerBodyItem.dart';

import 'createDrawerHeader.dart';
class navigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child:  ListView(
        padding: EdgeInsets.zero,
        children: [
          CreateDrawer(),
          Padding(
            padding:  EdgeInsets.only(left: 16, top: 20),
            child: Text('Popular',
              style: TextStyle(
                  color: Colors.grey,
                fontWeight: FontWeight.bold
              ),),
          ),
          createDrawerBodyItem(
              icon: Icons.home,
              text: 'Home',
              onTap: () {  },
              icon_tow: Icons.star_border),createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          createDrawerBodyItem(
              icon: Icons.home,text: 'Home', onTap: () {  },icon_tow: Icons.star_border),
          ListTile(
            title: Text('App version 1.0.0'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}