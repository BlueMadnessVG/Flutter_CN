import 'package:flutter/material.dart';

class BottomNavigatorPage extends StatefulWidget {
  const BottomNavigatorPage({super.key});

  @override
  State<BottomNavigatorPage> createState() => _BottomNavigatorPageState();
}

int _currentIndex = 0;

class _BottomNavigatorPageState extends State<BottomNavigatorPage> {
  @override
  Widget build(BuildContext context) {
    final tabs = [
      Center(
          child:
              Text('Map', style: TextStyle(color: Colors.red, fontSize: 50))),
      Center(
          child: Text('E-Mail',
              style: TextStyle(color: Colors.amber, fontSize: 50))),
      Center(
          child: Text('Alarm',
              style: TextStyle(color: Colors.blue, fontSize: 50))),
    ];

    return Scaffold(
        appBar: AppBar(
          title: Text('Practice 7'),
          centerTitle: true,
          backgroundColor: Colors.green[300],
        ),
        body: tabs[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.green[200],
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.map), label: 'Map'),
            BottomNavigationBarItem(icon: Icon(Icons.mail), label: 'E-Mail'),
            BottomNavigationBarItem(icon: Icon(Icons.alarm), label: 'Alarm'),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
        ));
  }
}
