import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pointmaker/MainNavbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle.dark.copyWith(statusBarColor: Colors.transparent),
    );

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'PointMaker',
        home: MainNavbar());
  }
}
