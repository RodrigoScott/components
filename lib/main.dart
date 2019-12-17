import 'package:components/src/pages/home_page.dart';
//import 'package:components/src/pages/home_tempo.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Segunda Aplicacion',
      home: HomePage(),
    );
  }
}

