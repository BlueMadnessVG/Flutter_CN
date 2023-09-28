import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practice 09 - Monster Hunter',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView(
        children: [
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Temnoceran'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Bird Wyvern'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Flying Wyvern'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Piscine Wyvern'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Carapaceon'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Amphibian'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Fanged Beast'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Leviathan'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Brute Wyvern'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Fanged Wyvern'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Elder Dragon'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            contentPadding:
                EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 0.0),
            title: Text('Unknown / ???'),
            leading: CircleAvatar(
              radius: 22.0,
              backgroundImage: AssetImage('assets/img/pngaaa.com-6740592.png'),
            ),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
