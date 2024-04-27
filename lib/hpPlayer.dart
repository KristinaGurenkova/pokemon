import 'package:flutter/material.dart';

class HpPlayer extends StatelessWidget {
  final int spriteCount; 
  final double x;
  final double y;
  final String currentMap;
  final String text;

  HpPlayer({ required this.text,required this.spriteCount,required this.x, required this.y,required this.currentMap});

  @override
  Widget build(BuildContext context) {
    if(currentMap == 'battle') {
      return Container(
        alignment: Alignment(x,y),
          child: Stack(
            children: [
              Image.asset(
                'image/hpplayer' + spriteCount.toString() +'.png',
                height: 60,
              fit: BoxFit.cover,
              ),
              Text(
                "         Pikachuu",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              )
            ],
          ), 
      );
    }
    else{
      return Container();
    }
  }
}