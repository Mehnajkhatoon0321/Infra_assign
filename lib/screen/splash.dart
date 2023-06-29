import 'dart:async';

import 'package:flutter/material.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:infraa/screen/Account/LoginPage.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 03), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) =>  LoginPage()
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [

          Container(
            alignment: Alignment.center,
            child: (Image.asset(
              'assets/images/info.png',
              height: 250,
              width: 250,
            )),
          ),


        ],
      ),
    );
  }





}