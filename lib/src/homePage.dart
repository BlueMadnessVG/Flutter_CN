import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/alert.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _counter = 0;
  var random = Random();
  var _monster = ['Rathalos', 'Nergigante', 'Rathina', 'Nargacuga'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wellcome hunter'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/img/rathalos_logo.png'),
            Text('Number of monster hunted', style: TextStyle(fontSize: 25)),
            Text('$_counter',
                style: TextStyle(fontSize: 30, color: Colors.purple)),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text('return'))
          ],
        ),
      ),
      floatingActionButton:
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            var randomNumber = random.nextInt(4);
            var hunt = _monster[randomNumber];

            setState(() {
              showAlertDialog(context, 'You successfully hunted a $hunt',
                  'My App :)', 'OK', ':(');

              _counter++;
            });
          },
        ),
/*         SizedBox(
          height: 10,
        ),
        FloatingActionButton(
          child: Icon(Icons.restore),
          onPressed: () {
            setState(() {
              if (_counter != 0) {
                _counter = 0;
              }
            });
          },
        ) */
      ]),
    );
  }
}
