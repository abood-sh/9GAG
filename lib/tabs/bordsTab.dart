import 'package:flutter/material.dart';
class BroadsTab extends StatefulWidget {
  const BroadsTab({Key? key}) : super(key: key);

  @override
  _BroadsTabState createState() => _BroadsTabState();
}

class _BroadsTabState extends State<BroadsTab> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.all(16),
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                  color: Colors.black12, 
                    borderRadius: BorderRadius.circular(12),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text('Introducing boards',style:
                              TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),),
                          ),
                           Icon(Icons.cancel,color: Colors.black38,)
                        ],
                      ),
                      SizedBox(height: 10,),
                      Text('sdvsdvsdvdssbs sdbds sdbdsb sbsdbdsbds\n svsdvddbssssbsd fdbf dfbdf sdbsd sdbsd sdbds sdbsd dfbfd sfbsf sd s '
                          , maxLines: 30,
                      ),
                  Spacer(),
                  SizedBox(
                    width: double.infinity,
                    height: 40,
                    child: ElevatedButton(onPressed: () {
                        },
                        child: Text('Explore'),
                      style: ElevatedButton.styleFrom(
                     elevation: 0,
                        primary: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(12.0),
                        ),
                      ),
                        ),
                  ),
                      SizedBox(height: 5,),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 16,),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
              BroadsItem(),
            ],
          ),
        ),
      ),
    );
  }
}
class BroadsItem extends StatelessWidget {
  const BroadsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(right: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
              width: 60,
              child: Image.asset('assets/logo.png'),),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Random Chat',style: TextStyle(
                  fontWeight: FontWeight.bold
                ),),
                Text('23,845 members', style: TextStyle(
                  color: Colors.black26
                ),),
              ],
            ),
            Spacer(),
            ElevatedButton(onPressed: () {},
                child: Text('join',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(0),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

