
import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _scrollController = new ScrollController();

  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;

  @override
  void initState() { 
    super.initState();
    _agregar10();

    _scrollController.addListener( (){

      if(_scrollController.position.pixels == _scrollController.position.maxScrollExtent){
        fetchData();
      }

    });
    
  }

  @override
  void dispose() {   
    super.dispose();
    _scrollController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista!!'),
      ),

      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
        ],
      ),
      
    );
  }

  Widget _crearLista(){
    return RefreshIndicator(

      onRefresh: obtenerPagina1,
      child: ListView.builder(
      itemCount: _listaNumeros.length,
      controller: _scrollController,
      itemBuilder: (BuildContext context, int index){

        final imagen = _listaNumeros[index];

        return FadeInImage(
          placeholder: AssetImage('assets/jar_loading.gif'), 
          image: NetworkImage('https://i.picsum.photos/id/$imagen/800/600.jpg'));

      }),
    );
  }

  Future<void> obtenerPagina1() async {
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){
      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();
    });

    return Future.delayed(duration);

  }

  Widget _crearLoading() {
    if(_isLoading){
      return Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 10.0,),
        ],
      );
    }
    else {
      return Container();
    }
  }


  void _agregar10(){

    for (var i = 0; i < 10 ; i++) {
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }

    setState(() {
      
    });


  }

  Future<Null> fetchData() async {

    _isLoading = true;
    setState(() {});

    final duration = new Duration(seconds: 2);
    new Timer(duration, respuestaHTTP);
  }

  void respuestaHTTP(){
    _isLoading = false;

    _scrollController.animateTo(
      _scrollController.position.pixels + 100, 
      duration: Duration(milliseconds: 200), 
      curve: Curves.fastOutSlowIn
      );

    _agregar10();
  }
}