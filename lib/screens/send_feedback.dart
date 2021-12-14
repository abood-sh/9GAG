import 'package:flutter/material.dart';
class SeandFeadback extends StatefulWidget {
  const SeandFeadback({Key? key}) : super(key: key);

  @override
  _SeendFeedbackState createState() => _SeendFeedbackState();
}

class _SeendFeedbackState extends State<SeandFeadback> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.grey),
        title: Text('Help',style: TextStyle(
          color: Colors.black,
          fontSize: 18
        ),),
        actions: [
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.search),
          ),

          IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.comment)),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('General',
                style: TextStyle(
                  fontSize: 18
                ),
            ),
                SizedBox(height: 20,),
                Text('Billing',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 20,),
                Text('Failing',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 20,),
                Text('9GAG Tips',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
                SizedBox(height: 20,),
                Text('9GAG Rules',
                  style: TextStyle(
                      fontSize: 18
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Container(
            color: Colors.black,
            height: 15,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(2),
              child: Text('POWERED BY ABOOD ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10
              ),
                textAlign: TextAlign.center,
              ),
            ),
          )

        ],
      ),
    );
  }
}
