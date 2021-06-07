import 'package:facebook_home/screens/nav_screens.dart';
import 'package:facebook_home/setup/utils.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Facebook Responsive UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Utils.scaffoldColor,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: NavScreen(),
    );
  }
}
