
import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {

  double _valueSlider = 50.0;
  bool   _bloquearCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar( 
        title: Text('Slider'),
      ),

      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            _crearCheckBox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()
            ),
          ],
        )
      ),
    );
  }

  Widget _crearSlider(){
    return Slider(
      label: 'Valor de la imagen',
      inactiveColor: Colors.amber,
      onChanged: (_bloquearCheck) ? null  : (valor) {
        setState(() {
          _valueSlider = valor;
        });
        } ,
      value: _valueSlider,
      min: 10,
      max: 400.0,
      );
  }

  Widget _crearCheckBox(){
    // return Checkbox(
    //   value: _bloquearCheck, 
    //   onChanged: (valor){

    //     setState(() {
    //       _bloquearCheck = valor;
    //     });
    //     return _bloquearCheck;
    //   });

    return CheckboxListTile(
      
      value: _bloquearCheck, 
      title: Text('Bloquear Slider'),
      onChanged: (valor){

        setState(() {
          _bloquearCheck = valor;
        });
        return _bloquearCheck;
      }
    );
  }

  Widget _crearImagen(){
    return Image(
      image: NetworkImage('https://vignette.wikia.nocookie.net/ssbb/images/4/46/Kirby_en_Kirby_Star_Allies.png/revision/latest?cb=20180527161543&path-prefix=es'),
      fit: BoxFit.contain,
      width: _valueSlider,
      );
  }

  Widget _crearSwitch() {

     return SwitchListTile(
      
      value: _bloquearCheck, 
      title: Text('Bloquear Slider'),
      onChanged: (valor){

        setState(() {
          _bloquearCheck = valor;
        });
        return _bloquearCheck;
      }
    );

  }
}