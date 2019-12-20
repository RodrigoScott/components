

import 'package:flutter/material.dart';
import 'dart:math';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _height = 100.0;
  double _width = 100.0;
  Color  _color = Colors.black;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(5);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Container'),
      ),
      body: Center(
        child: AnimatedContainer(

          duration: Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,

          ),
        ),
      ),


      //floatingActionButton:  _Botones(context),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        onPressed: _cambia,
      ),


    );
  }
  

  void _cambia() {

    final random = Random();

    setState(() {
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255),//r
          random.nextInt(255),//g,
          random.nextInt(255),//b,
          1,//opacity
       );

      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());

    });

  }
}

Widget _Botones(BuildContext context) {

  return Row(
    mainAxisAlignment: MainAxisAlignment.end,
    children: <Widget>[

      FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: (){},//_Change,
      ),
      SizedBox(width: 10),
      FloatingActionButton(
          child: Icon(Icons.reply),
          onPressed: (){
            Navigator.pop(context);
          },
      ),

    ],
  );


}

/*Widget _Change(){


  _width += 50.0;
  _height +=50.0;
  _color = Colors.red;

  //setState();

}*/

