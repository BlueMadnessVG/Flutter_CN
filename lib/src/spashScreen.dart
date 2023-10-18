import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/homePage.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({super.key});

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  
  @override
  void initState() {
    Future.delayed(
      Duration( milliseconds: 3000 ),
      () => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage( bestTime: ["00:00", "00:00", "00:00"])))
    );
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/img/mh_logo.png'),
            SizedBox(height: 50),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}