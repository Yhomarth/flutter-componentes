
import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {

  double _width = 50.0;
  double _height = 50.0;
  Color  _color = Colors.purple;

  BorderRadius _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Animated Container'),
        ),


      body: Center(
        child: AnimatedContainer(
          duration: Duration(milliseconds: 1000),
          curve: Curves.fastOutSlowIn,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            borderRadius: _borderRadius,
            color: _color
          ),
        )
        ),
        
        floatingActionButton: 
        FloatingActionButton(
          child: Icon(Icons.play_arrow),
          onPressed: () => _cambiarForma()
          
          ),

    );
  }

  void _cambiarForma(){
    setState(() {
      
      _height = Random().nextInt(300).toDouble();
      _width  = Random().nextInt(300).toDouble();
      
      _color = Color.fromRGBO(
        Random().nextInt(256), 
        Random().nextInt(256), 
        Random().nextInt(256), 
        1);

      _borderRadius = BorderRadius.circular(Random().nextInt(100).toDouble());
    });
  }

}