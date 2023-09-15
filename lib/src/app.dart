import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/data_received.dart';
import 'package:flutter_application_1/src/homePage.dart';
import 'package:flutter_application_1/src/mainPage.dart';
import 'package:flutter_application_1/src/sleep.dart';
import 'package:flutter_application_1/src/stop.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Practice 02',
      initialRoute: '/main_page',
      routes: {
        '/main_page': (context) => MainPage(),
        '/home_page': (context) => HomePage(),
        '/data_received': (context) => Data_received(),
        '/stop': (context) => Stop(),
        '/sleep': (context) => Sleep(),
      },
    );
  }
}
