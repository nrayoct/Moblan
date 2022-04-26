import 'package:flutter/material.dart';
import 'package:utsbottomnav/dashboard.dart';

import 'home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(Duration(seconds: 2), () {});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => Dashboard()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffebb844),
      body: Container (
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffebb844),
              Color(0xffffded6),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
      child: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 250,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/Logo.png'),
                  fit: BoxFit.fill,
                ),
                //shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}