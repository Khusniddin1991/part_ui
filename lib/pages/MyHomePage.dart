import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:party_ui/pages/Animation.dart';

class MyHomePage extends StatefulWidget {
  static final String id='MyHomePage';

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   bool _isLogin=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Scaffold(body:Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('asset/images/im_party.jpeg'),
                  fit: BoxFit.cover
            )
        ),child: Stack(
          children: [
            Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(begin: Alignment.topCenter, colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ]),
            ),
          ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FadeAnimation(1.0, Text('Find the best parties near you',style: TextStyle(color: Colors.yellow,fontWeight: FontWeight.bold,fontSize:40),),)
                  ,SizedBox(height: 30,),
                  FadeAnimation(1.2,Text('Let us find party for your interest',style: TextStyle(color: Colors.green,fontWeight: FontWeight.w500,fontSize:25),),),
                  SizedBox(height: 450,),

                  _isLogin?FadeAnimation(1.3, Container(width: double.infinity,height:55,decoration: BoxDecoration(color: Colors.yellow[900],
                      borderRadius: BorderRadius.circular(30)
                  ),
                    child: FlatButton(onPressed: (){},
                      child: Text('Start',style: TextStyle(color: Colors.white,
                          letterSpacing: 1,fontSize: 17),),),

                  )):FadeAnimation(1.4, Row(children: [
                    Expanded(
                      child: Container(width: double.infinity,height:55,decoration: BoxDecoration(color: Colors.red,
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: FlatButton(onPressed: (){},
                          child: Text('Google',style: TextStyle(color: Colors.white,
                              letterSpacing: 1,fontSize: 17),),),

                      ),
                    ),SizedBox(width: 10,),Expanded(
                      child: Container(width: double.infinity,height:55,decoration: BoxDecoration(color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(30)
                      ),
                        child: FlatButton(onPressed: (){},
                          child: Text('Facebook',style: TextStyle(color: Colors.white,
                              letterSpacing: 1,fontSize: 17),),),

                      ),
                    )
                  ],)),
                  SizedBox(height: 30,)

                ],),),




          ],
      ),
      ),),
    );

  }
}
