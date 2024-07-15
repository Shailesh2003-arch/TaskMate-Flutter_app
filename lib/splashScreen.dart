import 'dart:async';
import 'package:flutter/material.dart';
import 'package:todoapp/main.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => ToDoListScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child:Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/flashscreenasset/TaskMate.png',width: 600,height: 600,),
            Text("TaskMate",style: TextStyle(fontSize: 40,color:Colors.grey,fontFamily: 'DancingScript',fontWeight: FontWeight.w800,),)
          ],
        ),
      ),
      ),
    );
  }
}
