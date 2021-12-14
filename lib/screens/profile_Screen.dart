import 'dart:ui';

import 'package:flutter/material.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(
          title: Text(
              'Abdelrahman',
            style: TextStyle(
              color: Colors.black
            ),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          actions: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Text('Edit Profile', style: TextStyle(
                fontSize: 16,
                color: Colors.blue,
              ),
              textAlign: TextAlign.center,),
            ),
            SizedBox(width: 18,),
            IconButton(
              onPressed: () {
                showModalBottomSheet(
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                    top: Radius.circular(15)
                ),
                ),
                  context: context,
                  builder: (context){
                      return Container(
                        height: 100,
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 25, left: 15),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.add_link),
                                SizedBox(
                                  width: 25,
                                ),
                                Text('Copy Link'),
                              ],
                            ),
                            Spacer(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Icon(Icons.add_link),
                                SizedBox(
                                  width: 25,
                                ),
                                Text('Copy Link'),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      );
                  }
                );
              },
            icon: Icon(Icons.more_vert),
            ),
          ],
          bottom: const TabBar(
            indicatorWeight: 2,
            indicatorColor: Colors.black,
            tabs: [
              Text(
                'Hot',
                style: TextStyle(color: Colors.black,
                    fontSize: 15),
              ),Text(
                'Trending',
                style: TextStyle(color: Colors.black),
              ),Text(
                'Fresh',
                style: TextStyle(color: Colors.black),
              ),
              Text(
                'Boards',
                style: TextStyle(color: Colors.black),
              ),
            ],
          )
        ),
        body: Column(
          children: [
            Card(
              color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Image.asset('assets/logo.png'),
                        width: 100,
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      SizedBox(width: 20,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Abdelrahman Shaban'),
                          Text('0day . 3 day streak',style: TextStyle(
                            color: Colors.grey
                          ),),

                        ],
                      ),

                    ],
                  ),
                SizedBox(height: 10,),
                Text('My Funny Collection'),
                  SizedBox(height: 10,),

                ],
              ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}
