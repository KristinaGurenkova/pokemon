import 'package:flutter/material.dart';

class Road3 extends StatelessWidget {
  final double x;
  final double y;
  final String currentMap;

  Road3({ required this.x, required this.y,required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if(currentMap == "road3") {
      return Container(
        alignment: Alignment(x,y),
        child: Image.asset(
          'image/road3.png',
          width: MediaQuery.of(context).size.width*0.75,
          fit: BoxFit.cover,
        ),
      );
    }
    else{
      return Container();
    }
  }
}