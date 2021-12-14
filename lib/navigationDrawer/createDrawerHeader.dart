import 'package:flutter/material.dart';
class CreateDrawer extends StatefulWidget {
  const CreateDrawer({Key? key}) : super(key: key);

  @override
  _CreateDrawerState createState() => _CreateDrawerState();
}

class _CreateDrawerState extends State<CreateDrawer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      child: DrawerHeader(
          margin: EdgeInsets.only(top: 18),
          padding: EdgeInsets.zero,
          child: Padding(
            padding:  EdgeInsets.symmetric(horizontal: 15 ),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.ac_unit),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(child: Text('Home')),
                    Icon(Icons.email),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 7,
                    ),
                    Text('Top Posts'),
                    
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.menu),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(child: Text('Get 9GAG PRO')),
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
                SizedBox(height: 15,)
              ],
            ),
          )),
    );
  }
}
