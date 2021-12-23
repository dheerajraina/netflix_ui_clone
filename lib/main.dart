

import 'package:flutter/material.dart';
// import 'dart:math' as math;

// import 'package:flutter/rendering.dart';
// import 'package:html/dom.dart';

import 'screens/home_page.dart';
void main(){

  runApp(MyApp());
  
}


class MyApp extends StatelessWidget {
  // const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Netflix",
debugShowCheckedModeBanner: false,
    // darkTheme: ThemeData(),
     theme:ThemeData(
       primaryColorDark: Colors.black,
       brightness:Brightness.dark,
     ),
      home: HomePage(),     
      
    );
  }
}

