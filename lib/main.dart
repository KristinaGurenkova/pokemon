
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/button.dart';
void main() 
{
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pokemone: Path of fighter',
        style: TextStyle(
          fontSize: 25,
        ),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Играть',
          style: TextStyle(
            color: Colors.red,
          ),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
        ),
      ),
    );
  }
}
            