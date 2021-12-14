import 'package:flutter/material.dart';
import 'package:gag9/tabs/bordsTab.dart';
import 'package:gag9/screens/notification_screen.dart';
import 'package:gag9/screens/profile_Screen.dart';
import 'package:gag9/screens/saved_screen.dart';
import 'package:gag9/screens/settings_screen.dart';
import 'package:gag9/screens/singnupScreen.dart';
import 'package:gag9/screens/splash_screen.dart';
import 'package:gag9/tabs/trendingTab.dart';

import 'screens/home_screen.dart';
import 'screens/send_feedback.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      routes:{
        '/splash': (context)=> SplashScreen(),
        '/HomeScreen': (context) => HomeScreen(),
        '/SingupScreen': (context) => SignupScreen(),
        '/ProfileScreen': (context)=> ProfileScreen(),
        '/SavedScreen': (context)=> SavedScreen(),
        '/SeandFeadback': (context)=> SeandFeadback(),
        '/SettingScreen': (context)=> SettingsScreen(),
        '/notificationScreen':(context)=> NotificationScreen(),
        '/Posts': (context)=> TrendingTab(),
        '/BroadTab':(context)=> BroadsTab()
      },
    );
  }
}

