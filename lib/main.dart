import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:kulkelatelove/screens/calculate_main/calculate_links.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        //сновной текст
            textTheme: const TextTheme(
                bodySmall: TextStyle(fontSize: 22, color: Colors.grey),
                bodyMedium: TextStyle(fontSize: 35, color: Colors.white),
                bodyLarge: TextStyle(fontSize: 50, color: Colors.white),
            ),
            //iconTheme: const IconTheme(data: color, child: c),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes:{
        '/' : (context) => MyHomePage(),
        '/love': (context) => loveCalculate(),

      }
      //home: const MyHomePage(title: '?'),
    );
  }
}





