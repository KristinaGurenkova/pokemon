import 'package:flutter/material.dart';

class Bar extends StatelessWidget {
  final double x;
  final double y;
  final String currentMap;

  Bar({ required this.x, required this.y,required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if(currentMap == 'battle') {
      return Container(
        alignment: Alignment(x,y),
          child: Stack(
            children: [
              Image.asset(
                'image/bar.png',
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
              ),
            ],
          ), 
      );
    }
    else{
      return Container();
    }
  }
}