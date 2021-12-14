import 'package:flutter/material.dart';
class SavedScreen extends StatelessWidget {
  const SavedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.black) ,
      backgroundColor: Colors.white,
        title: Text(
          'Saved',
          style: TextStyle(
            color: Colors.black
          ),
        ),
      ),
      body: Center(child: Text('No Saved Post yet')),
    );
  }
}
