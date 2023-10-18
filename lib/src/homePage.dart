import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/gamePage.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  final List<String> bestTime;
  const HomePage({super.key, required this.bestTime});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<Dificulty> dif = [
    Dificulty(path: 'assets/img/mr.jpg', dificulty: 'Rango Maestro - 12 Pares', item: 12, index: 2),
    Dificulty(path: 'assets/img/hr.jpg', dificulty: 'Rango Alto - 10 Pares', item: 10, index: 1),
    Dificulty(path: 'assets/img/lr.jpg', dificulty: 'Rango bajo - 8 Pares', item: 8, index: 0)
  ];

  List<Data> data = [
    Data(path: 'assets/img/magnamalo.webp', name: 'Magnamalo'),
    Data(path: 'assets/img/magnamalo.webp', name: 'Magnamalo'),
    Data(path: 'assets/img/rathalos.webp', name: 'Rathalos'),
    Data(path: 'assets/img/rathalos.webp', name: 'Rathalos'),
    Data(path: 'assets/img/lagiacrus.webp', name: 'Lagiacrus'),
    Data(path: 'assets/img/lagiacrus.webp', name: 'Lagiacrus'),
    Data(path: 'assets/img/nergigante.webp', name: 'Nergigante'),
    Data(path: 'assets/img/nergigante.webp', name: 'Nergigante'),
    Data(path: 'assets/img/tigrex.webp', name: 'Tigrex'),
    Data(path: 'assets/img/tigrex.webp', name: 'Tigrex'),
    Data(path: 'assets/img/astalos.webp', name: 'Astalos'),
    Data(path: 'assets/img/astalos.webp', name: 'Astalos'),
    Data(path: 'assets/img/zinogre.webp', name: 'zinogre'),
    Data(path: 'assets/img/zinogre.webp', name: 'zinogre'),
    Data(path: 'assets/img/espinas.png', name: 'espinas'),
    Data(path: 'assets/img/espinas.png', name: 'espinas'),
    Data(path: 'assets/img/nargacuga.jpg', name: 'nergacuga'),
    Data(path: 'assets/img/nargacuga.jpg', name: 'nergacuga'),
    Data(path: 'assets/img/diablos.webp', name: 'diablos'),
    Data(path: 'assets/img/diablos.webp', name: 'diablos'),
    Data(path: 'assets/img/odogaron.jpg', name: 'odogaron'),
    Data(path: 'assets/img/odogaron.jpg', name: 'odogaron'),
    Data(path: 'assets/img/legiana.jpg', name: 'legiana'),
    Data(path: 'assets/img/legiana.jpg', name: 'legiana'),
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Mini proyecto - Memorama", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white )),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text( "Ingresa la difucultad ", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold )),
            SizedBox(
              height: 10,
            ),
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: dif.map((index) {
                return Builder(builder: (BuildContext context ) {
                   return ElevatedButton(
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        image: DecorationImage(
                          image: AssetImage(index.path),
                          fit: BoxFit.cover
                        ),
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient( colors: [Colors.purple, Colors.deepPurple] ) 
                      ),
                      child: Center( 
                        child: Text( '${index.dificulty} \n Mejor Timepo: ${widget.bestTime[index.index]}', style: TextStyle(fontSize: 20.0, color: Colors.white),)),
                    ), 
                    onPressed: () {
                     setState(() {
                      List<Data> selectedItems = data.sublist(0, (index.item * 2 ));
                      selectedItems.shuffle();

                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => GamePage(peer: selectedItems, bestTime: widget.bestTime,)));
                    });
                    },
                  );
                });
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

class Data {
  String path;
  String name;

  Data({required this.path, required this.name});
}

class Dificulty {
  String path;
  String dificulty;
  int item;
  int index;

  Dificulty({required this.path, required this.dificulty, required this.item, required this.index});
}