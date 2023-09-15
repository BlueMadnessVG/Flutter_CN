import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/data_received.dart';

class DataPage extends StatelessWidget {
  final Data data;
  const DataPage({required this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Data'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Data received:'),
            Text('Name: ${data.name}'),
            Text('Sex: ${data.sex}')
          ],
        ),
      ),
    );
  }
}
