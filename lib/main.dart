import 'package:flutter/material.dart';
import 'package:party_ui/pages/Animation.dart';
import 'package:party_ui/pages/SpashPage.dart';

import 'pages/MyHomePage.dart';

void main() {
  runApp(MaterialApp(home: SplashPage(),debugShowCheckedModeBanner:false,routes: {
    MyHomePage.id:(ctx)=>MyHomePage(),
    SplashPage.id:(ctx)=>SplashPage(),
  },));
}

