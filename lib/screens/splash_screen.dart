
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'homeScreen/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);


  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => HomeScreen()),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe93946),
      body: Center(
        child: Image.asset("assets/images/logo.png",height: 220,width: 220,),
      ),
    );
  }
}
