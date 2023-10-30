import 'dart:math';
import 'package:flutter/material.dart';

class SliverPage extends StatelessWidget {
  
  final rnd = new Random();

  final List<Color> colors = [
    Colors.black,
    Colors.white,
    Colors.amber,
    Colors.brown,
    Colors.cyan,
    Colors.green,
    Colors.grey,
    Colors.orange,
    Colors.pink,
    Colors.purple,
    Colors.lime,
  ];

  @override
  Widget build(BuildContext context) {

    List<Widget> item = List.generate(
      70,
      (index) => Container(
        height: 100,
        color: colors[rnd.nextInt(this.colors.length)],
        width: double.infinity,
      )
    );

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            title: Text(' Practice 15 - Slivers '),
            centerTitle: true,
            floating: true,
            pinned: true,
            expandedHeight: 200,
            flexibleSpace: Image.network('https://wallpaperaccess.com/full/496878.jpg', fit: BoxFit.cover,),
          ),
          SliverList(delegate: SliverChildListDelegate(item)),
        ],
      ),
    );
  }
}