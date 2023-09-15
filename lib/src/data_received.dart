import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/dataPage.dart';

class Data_received extends StatefulWidget {
  const Data_received({super.key});

  @override
  State<Data_received> createState() => _Data_receivedState();
}

class _Data_receivedState extends State<Data_received> {
  final ctrlname = new TextEditingController();
  final data = new Data(name: '', sex: '');
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepOrange[200],
        title: Text('Practice 3'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: ctrlname,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                hintText: 'Enter the name',
                contentPadding: EdgeInsets.all(20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            DropdownButton(
              value: _value,
              items: [
                DropdownMenuItem(
                  child: Text('Woman'),
                  value: 1,
                ),
                DropdownMenuItem(
                  child: Text('Man'),
                  value: 2,
                )
              ],
              onChanged: (int? selected) {
                setState(() {
                  _value = selected!;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Colors.orange[200], onPrimary: Colors.white),
              child: Text('Send'),
              onPressed: () {
                setState(() {
                  data.name = ctrlname.text;

                  if (_value == 1) {
                    data.sex = 'Woman';
                  } else {
                    data.sex = 'Man';
                  }
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => DataPage(data: data)));
                });
              },
            )
          ],
        ),
      ),
    );
  }
}

class Data {
  String name;
  String sex;

  Data({required this.name, required this.sex});
}
