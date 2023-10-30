import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/animated_page.dart';
import 'package:flutter_application_1/src/tween_page.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practice 16 - Animations'),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text(' Animated '),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AnimatedPage()));
            },
          ),
          ListTile(
            title: Text(' Tween '),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => TweenPage()));
            },
          )
        ],
      ),
    );
  }
}