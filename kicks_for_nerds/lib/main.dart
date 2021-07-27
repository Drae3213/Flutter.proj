import 'package:flutter/material.dart';
import 'package:kicks_for_nerds/screens/landing_page.dart';
import 'package:kicks_for_nerds/screens/login_page.dart';
import 'package:kicks_for_nerds/screens/first_register_page.dart';
import 'package:kicks_for_nerds/screens/loading_page.dart';
import 'package:kicks_for_nerds/screens/dms_page.dart';
import 'package:kicks_for_nerds/screens/home_page.dart';
import 'package:kicks_for_nerds/screens/profile_page.dart';
import 'package:kicks_for_nerds/screens/search_page.dart';
import 'package:kicks_for_nerds/screens/second_register_page.dart';
import 'package:kicks_for_nerds/screens/forgot_password.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/land': (context) => LandingPage(),
        '/reg': (context) => FirstRegisterPage(),
        '/regtwo': (context) => SecondRegisterPage(),
        '/log': (context) => LoginPage(),
        '/load': (context) => LoadingPage(),
        '/home': (context) => HomePage(),
        '/search': (context) => SearchPage(),
        '/dms': (context) => Dmspage(),
        '/profile': (context) => ProfilePage(),
        '/forgot': (context) => ForgotPasswordPage(),
      },
    );
  }
}
