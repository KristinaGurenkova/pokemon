import 'package:flutter/material.dart';

class MyBoy extends StatelessWidget {
 int boySpriteCount;
 String direction;
 String location;
double height = 20;
MyBoy({required this.boySpriteCount,required this.direction,required this.location});
  @override
  Widget build(BuildContext context) {
    if(location == "littelroot" || location == "road3" || location == 'road1' || location == 'road2'){
      height = 20;
    }
    else if(location == 'pokelab'){
      height = 25;
    }
    else if(location == 'battle'){
      height=0;
    }
    return Container(
      height: height,
      child: Image.asset(
        'image/' + direction+boySpriteCount.toString()+'.png',
        fit: BoxFit.cover,
      ),
    );
  }
}