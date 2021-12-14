
import 'package:flutter/material.dart';
import 'package:gag9/navigationDrawer/navigationDrawer.dart';
import 'package:gag9/tabs/trendingTab.dart';
import 'package:gag9/widget/container%20_item.dart';
import 'package:gag9/widget/item_pageView.dart';

import '../tabs/bordsTab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentPageIndex = 0;
  List pageList =['','','','',''];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Icon(
            Icons.add
          ),
          onPressed: () {
            floatBottomSheet(context);
            },
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          elevation: 2,
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),

          // leading:  IconButton(
          //   icon:const Icon(Icons.menu),
          //   color: Colors.black,
          //     onPressed: () {
          //     },
          //
          // ),

          actions: <Widget>[
            IconButton(
            onPressed: () {
              searchIcon();
            },
              icon: Icon(Icons.search),
              color: Colors.grey.shade400,
            ),

            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/notificationScreen');
              },
              icon:Icon(Icons.notifications),
              color: Colors.grey.shade400,
            ),

            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                icon: Icon(Icons.person),
                color: Colors.grey.shade400,
                onPressed: () {
                  actionBottomSheet(context);
                },
              ),
            )
          ],
          bottom: const TabBar(
            padding: EdgeInsets.symmetric(horizontal: 5),
            indicatorWeight: 3,
            indicatorColor: Colors.black,
            isScrollable: true,
            tabs: [
              Tab(
                child: Text(
                  'Hot',
                  style: TextStyle(color: Colors.black,
                  fontSize: 15),
                ),
              ),
              Tab(
                child: Text(
                  'Trending',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Fresh',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Boards',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Anime',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Games',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Lifestyle',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Pretty Girls',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Movies',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
          drawer: navigationDrawer(),
        body: TabBarView(
          children: [
            Tab(
              child: Text(
                'Hot',
                style: TextStyle(color: Colors.black,
                    fontSize: 15),
              ),
            ),
            TrendingTab(),
            Tab(
              child: Text(
                'Fresh',
                style: TextStyle(color: Colors.black),
              ),
            ),
            BroadsTab(),
            Tab(
              child: Text(
                'Anime',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Games',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Lifestyle',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Pretty Girls',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Tab(
              child: Text(
                'Movies',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void actionBottomSheet(BuildContext context) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15)
        ),
      ),
      context: context,
      builder: (context){
        return Container(
          width: double.infinity,
          height: 400,
          child: Padding(
            padding: const EdgeInsets.only(top: 20 , right: 16 ,left: 16 ,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/ProfileScreen');
                  },
                  child: Row(
                  children: [
                    Icon(Icons.person),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(child: Text('Sing in'))
                  ],
              ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/SavedScreen');

                  },
                  child: Row(
                    children: [
                      Icon(Icons.save),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(child: Text('Saved'))
                    ],
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.wine_bar_sharp),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(child: Text('Get 9GAG PRO'),),
                    Container(
                      color: Colors.yellow,
                      height: 25,
                      width:50,
                      child: Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Text(
                          'PRO',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                Divider(),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/SettingScreen');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.settings),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(child: Text('Settings',
                      ),),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/SeandFeadback');
                  },
                  child: Row(
                    children: [
                      Icon(Icons.feedback),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(child: Text('send feedback'))
                    ],
                  ),
                ),
                Divider(),
                Row(
                  children: [
                    Icon(Icons.dark_mode),
                    SizedBox(
                      width: 40,
                    ),
                    Expanded(child: Text('Dark Mode'),),
                    Switch(value: false, onChanged: (value) {

                    },)
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void floatBottomSheet(BuildContext context){
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
              top: Radius.circular(15)
          )
      ),
      elevation: 0,
      backgroundColor: Colors.white,
      isScrollControlled: true,
      context: context,
      builder: (context){
        return Container(
          width: double.infinity,
          height: 500,
          child: Padding(
            padding: const EdgeInsets.only(top: 15 , right: 16 ,left: 16 ,bottom: 5),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 150,
                  width: double.infinity,
                  child: PageView(
                    // onPageChanged: (int index){
                    //   setState(() {
                    //     _currentPageIndex = index % (pageList.length);
                    //   });
                    // },
                    // itemCount: 5,
                    // itemBuilder: (context, index) {
                    //   return item_pageView(pageList[index % (pageList.length)]);
                    // },
                    children: [
                      item_pageView(text: "The largest meme community", icon: 'assets/logo.png'),
                      item_pageView(text: "Upvote to pump memes", icon: 'assets/facebook.png'),
                      item_pageView(text: "Downvote to bury memes", icon: 'assets/google.png'),
                      item_pageView(text: "Commet to join the \n conversation", icon: 'assets/email.jpg'),
                      item_pageView(text: "Join board to start chatting", icon: 'assets/logo.png'),
                    ],
                  ),
                ),
                Text('By contuing you agree our Terms of Service'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('and'),
                    Text(' Privacy Policy',
                      textAlign: TextAlign.center,
                      maxLines: 10,
                      style: TextStyle(
                          decoration: TextDecoration.underline
                      ),
                    ),
                  ],
                ),
                Container_item(
                    image: 'assets/facebook.png',
                    text: 'Continue With Facebook'
                ),
                Container_item(
                    image: 'assets/google.png',
                    text: 'Continue With Facebook'
                ),
                Container_item(
                    image: 'assets/email.jpg',
                    text: 'Continue With Facebook'
                ),
                Text('already a member ? log in',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight:FontWeight.bold
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
  Widget searchIcon(){
        return TextField(

        );
  }
}


