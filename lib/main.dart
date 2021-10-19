import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:genshin_impact_album_info/auth/login.dart';
import 'package:genshin_impact_album_info/homeExample.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.black));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Genshin Impact Album',
      theme: ThemeData(),
      home: login(),
    );
  }
}
