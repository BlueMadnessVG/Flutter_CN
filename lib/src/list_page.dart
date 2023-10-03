import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  final List<String> _classMonster = [
    'Temnoceran',
    'Bird Wyvern',
    'Flying Wyvern',
    'Piscine Wyvern',
    'Carapaceon',
    'Amphibian',
    'Fanged Beast',
    'Leviathan',
    'Brute Wyvern',
    'Fanged Wyvern',
    'lder Dragon',
    'Unknown / ???'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practice 10 - Monster Hunter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: _classMonster.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () {},
            title: Text('${_classMonster[index]}'),
            leading: CircleAvatar(
              radius: 16.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
          );
        },
      ),
    );
  }
}
