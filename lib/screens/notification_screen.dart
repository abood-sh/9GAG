import 'package:flutter/material.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.black26),
          elevation: 2,
          title: Text('Notification',style: TextStyle(color: Colors.black),),
          actions: [
            IconButton(icon:Icon(Icons.done_all),color: Colors.black26,onPressed: () {

            },),
            IconButton(icon:Icon(Icons.settings),color: Colors.black26,onPressed: () {

            },),
          ],
          bottom: TabBar(
            tabs: [
              Text('All',
                  style: TextStyle(color: Colors.black)),
              Text('Mention',
                  style: TextStyle(color: Colors.black))
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Tab(
              child: Text('No Notification yet',
                  style: TextStyle(color: Colors.black,),
              
              ),
            ),
            Tab(
              child: Text('No Notification yet',
                  style: TextStyle(color: Colors.black)),
            ),

          ],
        ),
      ),
    );
  }
}
