
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card!'),
      ),

      body: ListView(
        // padding: EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1(), 
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(), 
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(), 
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          _cardTipo1(), 
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
        ],
      ),
    );
  }

  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.airline_seat_individual_suite, color: Colors.blue,),
            title: Text('Soy el titulo de esta carpeta'),
            subtitle: Text('Esto es una prueba acerca del texto que aparece abajo de las tarjetas, este texto es el subtitulo y para eso fue un texto largo'),
          ), 
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar'), 
                color: Colors.amber, 
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ), 
                ),
                SizedBox(width: 8.0,),
              FlatButton(
                onPressed: (){}, 
                child: Text('OK'), 
                color: Colors.lightGreen,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                )
                ),
                SizedBox(width: 8.0,),
            ],
          )
        ],),
    );
  }
  

  Widget _cardTipo2(){

    final card=  Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(
        children: <Widget>[

          FadeInImage(
            placeholder: AssetImage('assets/jar_loading.gif'), 
            image: NetworkImage('https://www.pixel4k.com/wp-content/uploads/2018/11/anime-cityscape-landscape-scenery-4k_1541975011.jpg'),
            fadeInDuration: Duration(milliseconds: 250),
            height: 300,
            fit: BoxFit.cover,


            
            ),
          // Image(
          //   image: NetworkImage('https://www.pixel4k.com/wp-content/uploads/2018/11/anime-cityscape-landscape-scenery-4k_1541975011.jpg')
          //   ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('No tengo idea que poner')),
        ],
      ),
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0, 10.0)
            )
        ],
    
      ),
      
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30.0),
        child: card,
      ),
      );

  }

}