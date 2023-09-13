import 'package:flutter/material.dart';

class Stop extends StatefulWidget {
  const Stop({super.key});

  @override
  State<Stop> createState() => _StopState();
}

class _StopState extends State<Stop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('STOP'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/img/stop.jpg'),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('Return'))
          ],
        ),
      ),
    );
  }
}
