import 'dart:async';

import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _Scroll = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;
  bool _isLoading = false;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();
    _Scroll.addListener((){
      if (_Scroll.position.pixels == _Scroll.position.maxScrollExtent){
        fetchData();
      }
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: Stack(
        children: <Widget>[
          _crearLista(),
          _crearLoading(),
      ],
      )



    );
  }

 Widget _crearLista() {

    return RefreshIndicator( //para recargar la pagina al hacer scroll hacia arriba

      onRefresh: obtenerPag1,

      child: ListView.builder(
        controller: _Scroll,
          itemCount: _listaNumeros.length,
          itemBuilder: (BuildContext context, int index){
            final _imagen = _listaNumeros[index];
            return FadeInImage(
              fit: BoxFit.contain,
              image: NetworkImage('https://i.picsum.photos/id/3$_imagen/300/200.jpg'),
              placeholder: AssetImage('assets/jar-loading.gif'),
            );
          },
      ),
    );

 }

 Future<Null> obtenerPag1() async{
    final duration = new Duration(seconds: 2);
    new Timer(duration, (){

      _listaNumeros.clear();
      _ultimoItem++;
      _agregar10();

    });
    return Future.delayed(duration);
 }

  Future<Null> fetchData() async{
    
    _isLoading = true;
    setState(() {
      final duration = new Duration(seconds: 2);
      return new Timer(duration , respuestaHTTP);
    });

  }

  void respuestaHTTP() {

    _isLoading = false;
    _agregar10();
    _Scroll.animateTo( //funcion para mover un poco hacia arriba el scroll una vez que carguen mas datos
        _Scroll.position.pixels+100,
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn
    );

  }

  void _agregar10(){

    for(var i=1; i<10; i++){
      _ultimoItem++;
      _listaNumeros.add(_ultimoItem);
    }

    setState(() {

    });

  }

 Widget _crearLoading() {

    if (_isLoading){
      return Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator()
            ],
          ),
          SizedBox(height: 15.0),
        ],
      );
    }
    else{
      return Container();
    }

 }
}
