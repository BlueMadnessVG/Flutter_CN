import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('Practice 2'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              child: Text('Home page'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.amber, onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/home_page');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Receive data'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.green, onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/data_received');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('Violate the law'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.red, onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/stop');
              },
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text('New adventure'),
              style: ElevatedButton.styleFrom(
                  primary: Colors.blue, onPrimary: Colors.white),
              onPressed: () {
                Navigator.pushNamed(context, '/sleep');
              },
            ),
          ],
        ),
      ),
    );
  }
}
