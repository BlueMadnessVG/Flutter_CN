import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/home_page.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Center(
        child: HomePage(),
      ),
    );
  }
}
