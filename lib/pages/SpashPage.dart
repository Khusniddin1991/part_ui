import 'dart:async';

import 'package:flutter/material.dart';
import 'package:party_ui/pages/MyHomePage.dart';


class SplashPage extends StatefulWidget {

  static final String id='SplashPage';
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  Widget _timer(){
    Timer(Duration(seconds: 3), (){
      Navigator.pushReplacementNamed(context, MyHomePage.id);
    });

  }

  @override
  void initState() {
    // TODO: implement initState
    _timer();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(backgroundColor: Colors.white,body:Stack(
      children: [
        Center(child: Container(height: 100,width: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              image:DecorationImage(image: AssetImage('asset/images/im_party.jpeg'))
          ),
        ),),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 130,vertical: 25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,

            children: [  Text('From FaceBook',style: TextStyle(color: Colors.grey,fontSize:18),)],

          ),

        )

      ],
    ),);
  }
}
