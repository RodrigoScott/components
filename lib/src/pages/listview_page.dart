import 'package:flutter/material.dart';

class ListaPage extends StatefulWidget {
  @override
  _ListaPageState createState() => _ListaPageState();
}

class _ListaPageState extends State<ListaPage> {

  ScrollController _Scroll = new ScrollController();
  List<int> _listaNumeros = new List();
  int _ultimoItem = 0;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _agregar10();
    _Scroll.addListener((){
      if (_Scroll.position.pixels == _Scroll.position.maxScrollExtent){
        _agregar10();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
      ),
      body: _crearLista(),

    );
  }

 Widget _crearLista() {

    return ListView.builder(
      controller: _Scroll,
        itemCount: _listaNumeros.length,
        itemBuilder: (BuildContext context, int index){
          final _imagen = _listaNumeros[index];
          return FadeInImage(
            image: NetworkImage('https://i.picsum.photos/id/10$_imagen/2500/1656.jpg'),
            placeholder: AssetImage('assets/jar-loading.gif'),
          );
        },
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
}
