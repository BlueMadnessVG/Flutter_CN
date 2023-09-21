import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  const SliderPage({super.key});

  @override
  State<SliderPage> createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _value = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider Page'),
        centerTitle: true,
        backgroundColor: Colors.green[300],
        elevation: 0.0,
      ),
      body: Column(children: [
        Container(
          height: 50,
          width: 400,
          color: Colors.black54,
          child: Slider(
            value: _value,
            min: 0,
            max: 400,
            label: _value.round().toString(),
            divisions: 100,
            onChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
        Container(
          width: 400,
          height: 580,
          color: Colors.black54,
          child: Center(
            child: Image(
              image: AssetImage('assets/img/image.png'),
              height: _value,
              width: _value,
            ),
          ),
        )
      ]),
    );
  }
}
