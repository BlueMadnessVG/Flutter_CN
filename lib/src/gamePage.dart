import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/homePage.dart';
import 'package:flip_card/flip_card.dart';

class GamePage extends StatefulWidget {
  final List<Data> peer;
  final List<String> bestTime;
  const GamePage({super.key, required this.peer, required this.bestTime});

  @override
  State<GamePage> createState() => _GamePageState();
}

class _GamePageState extends State<GamePage> {
  
  Timer? timer;
  int seconds = 0, min = 0;
  var cardKeys = Map<int, GlobalKey<FlipCardState>>();
  late List<int> peerCorret = [-1];
  late int lastFlipped = -1;
  late int firstCard = -1;
  bool isEnabled = true;

  void stop() {

    timer!.cancel();

  }

  void _startCountDown() {
    timer = Timer.periodic(Duration(seconds: 1), (timer) {
        int localSeconds = seconds + 1;
        int localMin = min;

        if( localSeconds > 59 ) {
          localMin++;
          localSeconds = 0;
        }

        setState(() {
          seconds = localSeconds;
          min = localMin;
        });
    });
  }

  @override
  void initState() {
      super.initState();
      _startCountDown();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Mini proyecto - Memorama"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Tiempo: ${min.toString()}:${seconds.toString()}", style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold ),),
            SizedBox(height: 20,),
            GridView.builder(
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              itemCount: widget.peer.length,
              itemBuilder: (BuildContext context, int index) {
                cardKeys.putIfAbsent(index, () => GlobalKey<FlipCardState>());
                GlobalKey<FlipCardState>? thisCard = cardKeys[index];
                return FlipCard(
                  side: CardSide.FRONT,
                  key: thisCard,
                  flipOnTouch: !peerCorret.contains(index) , //When enabled, the card will flip automatically when touched.
                  direction: FlipDirection.HORIZONTAL,
                  onFlipDone: (isFront){
                    debugPrint( isFront.toString() );

                    if( isFront ){
                      lastFlipped = index;
                      cardtapped();
                    }
                  },
                  front: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: 50,
                      child: Image.asset(
                              'assets/img/pngaaa.com-6740592.png',
                              fit: BoxFit.cover)
                    ),
                  back: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                            width: 1,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 50,
                      width: 50,
                      child:  SizedBox.fromSize(
                          size: Size.fromRadius(120),
                          child: Image.asset(
                              '${widget.peer[index].path}',
                              fit: BoxFit.cover)
                      ) 
                    )
                  );
              },
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 5,
                crossAxisSpacing: 5,
                crossAxisCount: 6,
                childAspectRatio: 1.2
              ),
            ),
          ]),

      )
    );
  }

  void cardtapped() async {

    if( firstCard == -1 ){
      firstCard = lastFlipped;
      lastFlipped = -1;
    }
    else {

      if( widget.peer[lastFlipped].name == widget.peer[firstCard].name ){
        debugPrint("son iguales");
        debugPrint( widget.peer[lastFlipped].name);
        debugPrint( widget.peer[firstCard].name );

        setState(() {
          peerCorret.add(firstCard);
          peerCorret.add(lastFlipped);

          if( peerCorret.length - 1 == widget.peer.length ) {
            stop();

            showAlertDialog(
              context,
              seconds,
              min,
              widget.peer.length,
              widget.bestTime
            );
          }
        });

        firstCard = -1;
        lastFlipped = -1;
      }
      else {
        debugPrint("no iguales $firstCard - $lastFlipped");

        if( !cardKeys[firstCard]!.currentState!.isFront ) {
          await cardKeys[firstCard]!.currentState?.toggleCard();
          await cardKeys[lastFlipped]!.currentState?.toggleCard();
        }  

        firstCard = -1;
        lastFlipped = -1;

      }

    }

  }

}

showAlertDialog( BuildContext context, int sec, int min, int length, List<String> bestTime ) {

  if( length == 16 )
    bestTime[0] = "$min:$sec";
  else if( length == 20 )
    bestTime[1] = "$min:$sec";
  else
    bestTime[2] = "$min:$sec";

  debugPrint( bestTime[0] + " "+ bestTime[1] + " " + bestTime[2] );

  Widget btnOK = ElevatedButton(
    onPressed: () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => HomePage(bestTime: bestTime)));
    }, 
    child: Text( "NICE" )
  );

  AlertDialog alert = AlertDialog(
    title: Text( "HAS GANADO, YIPI" ),
    content: Text( "HAS ENCONTRADO TODOS LOS PARES EN $min:$sec, BIEN ECHO!!" ),
    actions: [
      btnOK,
    ],
  );

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    }
  );

}