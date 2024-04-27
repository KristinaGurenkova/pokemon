import 'package:flutter/material.dart';

class Battle extends StatelessWidget {
  final double x;
  final double y;
  final String currentMap;

  Battle({ required this.x, required this.y,required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if(currentMap == 'battle') {
      return Container(
        alignment: Alignment(x,y),
        child: Image.asset(
          'image/battleground.png',
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
      );
    }
    else{
      return Container();
    }
  }
}