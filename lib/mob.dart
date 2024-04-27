import 'package:flutter/material.dart';

class Mob extends StatelessWidget {

  final double x;
  final double y;
  final String location;
  int countSprite;

  Mob({required this.x,required this.y,required this.location, required this.countSprite});
  @override
  Widget build(BuildContext context) {
    if(location == "battle"){
        return Container(
          alignment: Alignment(x,y),
          child: Image.asset(
            'image/mob' + countSprite.toString() + '.png',
            height: 100,
            fit: BoxFit.cover,
          ),
        );
    }
    else{
      return Container();
    };
  }
}