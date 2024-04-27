import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/bar.dart';
import 'package:flutter_application_1/battle.dart';
import 'package:flutter_application_1/boy.dart';
import 'package:flutter_application_1/button.dart';
import 'package:flutter_application_1/hpMob.dart';
import 'package:flutter_application_1/hpPlayer.dart';
import 'package:flutter_application_1/littelroot.dart';
import 'package:flutter_application_1/mob.dart';
import 'package:flutter_application_1/pokelab.dart';
import 'package:flutter_application_1/road1.dart';
import 'package:flutter_application_1/road2.dart';
import 'package:flutter_application_1/road3.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
      String text = "";
      int playerAttack = 10;
      double playerHealth = 100;
      int playerCountSprite = 1;
      
      double mobHealth = 100;
      int mobAttack = 10;
      int mobCountSprite = 1;
      int mobCountSprite2 = 1;

  double mapX = 0.1;
  double mapY = -7.4;

  double labMapX = 0;
  double labMapY = 0;

  double Road1MapX = 0;
  double Road1MapY = 0;

  double Road2MapX = 0;
  double Road2MapY = 0;
  
  double Road3MapX = 0;
  double Road3MapY = 0;

   double battleMapX= 0;
  double battleMapY = 0;

  String oakDirection = "down";
  
  static double oakX = 0;
  static double oakY = 0;
  bool chatStarted = false;
  int countPressingA = -1;

  int boySpriteCount = 0;
  String boyDirection = 'down';
  
  String currentLocation = 'littelroot';

  void moveUp(){
    boyDirection = 'up';
    if(currentLocation == "littelroot"){
      if(canMoveTo(boyDirection, mapX, mapY)){
        setState(() {
          animateWalk();
          mapY += 0.6;
        });
      }
      if(double.parse((mapX).toStringAsExponential(4)) == 0.1 &&
      double.parse((mapY).toStringAsExponential(4)) == 3.4){
        setState(() {
          currentLocation = 'pokelab';
          labMapX = 0.1;
          labMapY = -0.7;
        });
      }
    }
    else if(currentLocation == "pokelab"){
        setState(() {
          animateWalk();
            labMapY += 0.1;
       });
    }
    else if(currentLocation == "road1"){
      setState(() {
        animateWalk();
          Road1MapY += 0.1;
    });
    if(double.parse((Road1MapX).toStringAsExponential(4)) == -2.5 &&
      double.parse((Road1MapY).toStringAsExponential(4)) == 1.1){
        setState(() {
          currentLocation = 'road2';
          Road2MapX = 1.7;
          Road2MapY = -0.3;
        });
    }
   }
    else if(currentLocation == "road2"){
        setState(() {
          animateWalk();
            Road2MapY += 0.1;
      });
    }
    else if(currentLocation == "road3"){
        setState(() {
          animateWalk();
            Road3MapY += 0.1;
      });
    }
  }
  void moveDown(){
    boyDirection = 'down';
    if(currentLocation == "littelroot"){
      if(canMoveTo(boyDirection, mapX, mapY)){
      setState(() {
         animateWalk();
          mapY -= 0.6;
        });
      }
    }
      else if(currentLocation == "pokelab"){
          setState(() {
            animateWalk();
              labMapY -= 0.1;
        });
        if((double.parse(labMapX.toStringAsExponential(4)) == 0.1&&
            double.parse(labMapY.toStringAsExponential(4)) == -0.7)){
          setState(() {
            currentLocation = 'littelroot';
            mapX = 0.1;
            mapY = 2.2;
        });
      }
    }
    else if(currentLocation == "road1"){
      setState(() {
        animateWalk();
          Road1MapY -= 0.1;
    });
   }
   else if(currentLocation == "road2"){
        setState(() {
          animateWalk();
            Road2MapY -= 0.1;
      });
    }
    else if(currentLocation == "road3"){
        setState(() {
          animateWalk();
            Road3MapY -= 0.1;
      });
    }
  }
  void moveLeft(){
    boyDirection = 'left';
    if(currentLocation == "littelroot"){
      if(canMoveTo(boyDirection, mapX, mapY)){
        setState(() {
          animateWalk();
          mapX += 0.2;
      });
      }
    }
    else if(currentLocation == "pokelab"){
        setState(() {
          animateWalk();
            labMapX += 0.2;
      });
    }
    else if(currentLocation == "road2"){
        setState(() {
          animateWalk();
            Road2MapX += 0.15;
      });
    }
    else if(currentLocation == "road3"){
        setState(() {
          animateWalk();
            Road3MapX += 0.15;
      });
      if(double.parse(Road3MapX.toStringAsExponential(4)) == 2.9 &&
      double.parse(Road3MapY.toStringAsExponential(4)) == 1.0){
        setState(() {
          currentLocation = "road2";
          Road2MapX = -2.75;
          Road2MapY = 1.1;
        });
      }
    }
    else if(currentLocation == "road1"){
      setState(() {
        animateWalk();
          Road1MapX += 0.2;
    });
    if(double.parse(Road1MapX.toStringAsExponential(4)) == 2.9 &&
      double.parse(Road1MapY.toStringAsExponential(4)) == -0.8){
        setState(() {
          currentLocation = "littelroot";
          mapX = -2.5;
          mapY = 2.8;
        });
      }
    }
  }
  void moveRight(){
    boyDirection = 'right';
    if(currentLocation == "littelroot"){
      if(canMoveTo(boyDirection, mapX, mapY)){
        setState(() {
          animateWalk();
          mapX -= 0.2;
      });
      }
      if(double.parse(mapX.toStringAsExponential(4)) == -2.7 &&
      double.parse(mapY.toStringAsExponential(4)) == 2.8){
        setState(() {
          currentLocation = "road1";
          Road1MapX = 2.9;
          Road1MapY = -0.8;
        });
      }
    }
    else if(currentLocation == "pokelab"){
        setState(() {
          animateWalk();
            labMapX -= 0.2;
      });
    }
    else if(currentLocation == "road1"){
      setState(() {
        animateWalk();
          Road1MapX -= 0.2;
    });
   }
   else if(currentLocation == "road2"){
        setState(() {
          animateWalk();
            Road2MapX -= 0.15;
      });
      if(double.parse(Road2MapX.toStringAsExponential(4)) == -2.9 &&
      double.parse(Road2MapY.toStringAsExponential(4)) == 1.0){
        setState(() {
          currentLocation = "road3";
          Road3MapX = 2.75;
          Road3MapY = 1.0;
        });
      }
    }
       else if(currentLocation == "road3"){
        setState(() {
          animateWalk();
            Road3MapX -= 0.15;
      });
    }
  }
  void pressedA(){
  if((double.parse(Road1MapX.toStringAsExponential(4)) == 0.1&&
      double.parse(Road1MapY.toStringAsExponential(4)) == 0.1)){
            setState(() {
              currentLocation = 'battle';
              text = "Beedreel";
              boySpriteCount = 0;
              battleMapX = 0;
              battleMapY = 0;
          });}
  else if((double.parse(Road2MapX.toStringAsExponential(4)) == 1.7&&
    double.parse(Road2MapY.toStringAsExponential(4)) == -0.3)){
         setState(() {
              currentLocation = 'battle';
              text = "Arbok";
              boySpriteCount = 0;
              battleMapX = 0;
              battleMapY = 0;
       });}
  else if((double.parse(Road3MapX.toStringAsExponential(4)) == 2.75&&
      double.parse(Road3MapY.toStringAsExponential(4)) == 1.0)){
            setState(() {
              currentLocation = 'battle';
              text = "Baterfree";
              boySpriteCount = 0;
              battleMapX = 0;
              battleMapY = 0;
          });}
  }
  void pressedB(){
   if(currentLocation == 'battle'){
    setState(() {
      mobHealth -= playerAttack;
      if(mobHealth == 70 ){
         mobCountSprite++;
      }
      else if(mobHealth == 40){
          mobCountSprite++;
      }
      else if(mobHealth == 20){
        mobCountSprite++;
      }
      else if(mobHealth == 10){
        mobCountSprite++;
      }
      else if(mobHealth == 0){
          mobHealth = 100;
          currentLocation = "littelroot";
          boyDirection = 'down';
          mobCountSprite = 1;
          mapX = 0.1;
          mapY = -7.4;
          mobCountSprite2++;
      } 
    });
   } 
  }
  void animateWalk(){
    print("x " + Road2MapX.toString() + ", y " + Road2MapY.toString());

    Timer.periodic(Duration(milliseconds: 135), (timer) { 
      setState(() {
        boySpriteCount++;
      });
      if(boySpriteCount ==3){
        boySpriteCount = 0;
        timer.cancel();
      }
    });
  }
  List<List<double>> noML=[
  //-------СПРАВА(низ)---------
    //стены справа
    ];

  bool canMoveTo(String direction, double x, double y){
    double stepX = 0;
    double stepY = 0;
    if(direction == 'left'){
      stepX = 0.2;
      stepY = 0;
    }
    else if(direction == 'right'){
      stepX = -0.2;
      stepY = 0;
    }
    else if(direction == 'up'){
      stepX = 0;
      stepY = 0.6;
    }
    else if(direction == 'down'){
      stepX = 0;
      stepY = -0.6;
    }
    for(int i = 0; i < noML.length; i++){
        if((noML[i][0] ==  x + stepX) && (noML[i][1] == y + stepY))
        {
          return false;
        }
    }
    return true;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              color: Colors.black,
             child: Stack(
              children: [
                LittleRoot(
                  x: mapX, 
                  y: mapY, 
                  currentMap: currentLocation,
                 ),
                 MyPokeLab(
                  x: labMapX, 
                  y: labMapY, 
                  currentMap: currentLocation,
                  ),
                  Road1(
                    x: Road1MapX, 
                    y: Road1MapY, 
                    currentMap: currentLocation,
                    ),
                     Road2(
                    x: Road2MapX, 
                    y: Road2MapY, 
                    currentMap: currentLocation,
                    ),
                     Road3(
                    x: Road3MapX, 
                    y: Road3MapY, 
                    currentMap: currentLocation,
                    ),
                      Bar(
                       x: 0.0,
                       y: 0.8, 
                       currentMap: currentLocation,
                     ),
                     Battle(
                      x: 0.0, 
                      y: 0.0, 
                      currentMap: currentLocation
                      ),
                      HpMob(
                      text: text, 
                      spriteCount: mobCountSprite, 
                      x: -0.455, 
                      y: -0.30, 
                      currentMap: currentLocation
                      ),
                      HpPlayer(
                        text: text, 
                        spriteCount: playerCountSprite, 
                        x: 0.75, 
                        y: 0.345, 
                        currentMap: currentLocation,
                        ),
                Container(
                alignment: Alignment(0,0),
                child: MyBoy(
                  location: currentLocation,
                  boySpriteCount: boySpriteCount,
                  direction: boyDirection,
                ),
                ),
                Container(
                  alignment: Alignment(0,0),
                 child: Mob(
                  x: 0.70,
                  y: -0.20, 
                  location: currentLocation, 
                  countSprite: mobCountSprite2,
                  ),
                ),
              ],
             ),
            ),
          ),
          Expanded(
            child: Container(
            color: const Color.fromARGB(255, 70, 70, 70),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '---------------------------------------------------------------------------------------',
                    style: TextStyle(color: Color.fromARGB(255, 70, 70, 70)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Row(
                        children: [
                          Column(
                            children: [
                               Container(
                                height: 50,
                                width: 50,
                               ),
                                MyButton(
                                   text: 'a',
                                    function: moveLeft,
                                  ),
                                   Container(
                                height: 50,
                                width: 50,
                               ),
                               ],
                             ),
                              Column(
                            children: [
                               MyButton(
                                  text: 'w',
                                  function: moveUp,
                                ),
                                Container(
                                height: 50,
                                width: 50,
                               ),
                                  MyButton(
                                   text: 's',
                                    function: moveDown,
                                  ),
                               ],
                             ),
                              Column(
                            children: [
                                Container(
                                height: 50,
                                width: 50,
                               ),
                                MyButton(
                                   text: 'd',
                                    function: moveRight,
                                  ),
                                   Container(
                                height: 50,
                                width: 50,
                               ),
                               ],
                             ),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Container(
                                     height: 50,
                                      width: 50,
                                  ),
                                  MyButton(
                                    text: 'fight',
                                    function: pressedB,
                                  ),
                                ],
                              ),
                               Column(
                                children: [
                                  MyButton(
                                    text: 'inter',
                                    function: pressedA,
                                  ),
                                  Container(
                                     height: 50,
                                     width: 50,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                   Text(
                    '---------------------------',
                    style: TextStyle(color: Color.fromARGB(255, 70, 70, 70)),
                  ),
                ],
              ),
            ),
            ),
          ),
        ],
      ),
    );
  }
}