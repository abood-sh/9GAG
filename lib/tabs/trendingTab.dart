import 'package:flutter/material.dart';
class TrendingTab extends StatefulWidget {
  const TrendingTab({Key? key}) : super(key: key);

  @override
  _PostsState createState() => _PostsState();
}

class _PostsState extends State<TrendingTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: ListView(

        children: [
          PostList(),
          PostList(),
          PostList(),
          PostList(),
          PostList(),
          PostList(),
        ],
      ),
    );
  }

}

class PostList extends StatelessWidget {
  const PostList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 550,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20,
                    width: 20,
                    child: Image.asset('assets/logo.png',),),
                SizedBox(width: 10,),
                Text('WTF  .4h'),
                Spacer(),
                Icon(
                  Icons.bookmark,
                  size: 15,
                ),
                SizedBox(width: 10,),

                Icon(Icons.add,
                size: 15,
              ),
              ],
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 14, bottom: 10),
            child: Text('This idea has alot of .. dsd',
            style:TextStyle(fontSize: 18,
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.start,
            ),
          ),
          Container(
            width: double.infinity,
            height: 435,
            color: Colors.teal,
          ),
          Spacer(),
          Container(
            height: 42,
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.upload,
                      color: Colors.black38
                  ),
                  Text('3.3K',
                    style:TextStyle(
                      color: Colors.black38
                    ) ,),
                  Spacer(),
                  Icon(
                      Icons.download,
                      color: Colors.black38
                  ),
                  Text('548',
                    style:TextStyle(
                        color: Colors.black38
                    ) ,),
                  Spacer(),
                  Icon(
                      Icons.comment_bank,
                      color: Colors.black38
                  ),
                  Text('5652',
                    style:TextStyle(
                        color: Colors.black38
                    ) ,),
                  Spacer(),
                  Icon(
                      Icons.share,
                      color: Colors.black38
                  ),
                  Text('SHARE',
                    style:TextStyle(
                        color: Colors.black38
                    ) ,),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

