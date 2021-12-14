import 'package:flutter/material.dart';
import 'package:gag9/widget/settingsItem.dart';
class SettingsScreen extends StatefulWidget {
  const SettingsScreen({Key? key}) : super(key: key);

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 2,
        backgroundColor: Colors.white,
        title: Text('Settings',style:TextStyle(
            color: Colors.black
        ),),
        iconTheme: IconThemeData(color: Colors.grey),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'General',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.grey
                ),
              ),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide announcement',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide promoted post',icon: Icons.lock,value: false),
              SettingsItem(text:' Show \'New Post\'',icon: Icons.lock,value: true),
              SettingsItem(text:' Customize home page',icon: Icons.lock,value: true),
              SettingsItem(text:' Mask sensitive content',icon: Icons.lock,value: false),
              Divider(
                height: 1,
              ),
              SizedBox(height: 8,),
              Text(
                'Display',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
              SettingsItem(text:' DarkMode',icon: Icons.lock,value: false),
              SettingsItem(text:' Auto dark mode',icon: Icons.lock,value: false),
              SettingsItem(text:' Pure black dark mode',icon: Icons.lock,value: false),
              SettingsItem(text:' Dim display',icon: Icons.lock,value: false),
              Divider(
                height: 1,
              ),
              SizedBox(height: 8,),
              Text(
                'Account',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),

              SettingsItem(text:' 9GAG PRO',icon: Icons.lock,value: false),
              SettingsItem(text:' Edit profile',icon: Icons.lock,value: false),
              SettingsItem(text:' Change password',icon: Icons.lock,value: false),
              SettingsItem(text:' Links accounts',icon: Icons.lock,value: false),
              SettingsItem(text:' Push Notification',icon: Icons.lock,value: false),
              SettingsItem(text:' Blocked Users',icon: Icons.lock,value: false),
              SettingsItem(text:' Privacy settings',icon: Icons.lock,value: false),
              Divider(),
              SizedBox(height: 8,),
              Text(
                'Data saving',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.grey
                ),
              ),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),
              SettingsItem(text:' Hide ads',icon: Icons.lock,value: false),

            ],
          ),
        ),
      ),
    );
  }
}

