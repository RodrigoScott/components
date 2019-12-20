//import 'dart:html';

import 'package:flutter/material.dart';

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {

  String _nombre;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Text('Inputs'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        children: <Widget>[
          _crearInput(),
          Divider(),
        _crearPersona(),
        ],
      ),


    );
  }

  Widget _crearInput() {

    return TextField(

      //autofocus: true, // para que abra en automático el teclado
      textCapitalization: TextCapitalization.sentences, //para que agregue mayuscula a cada palabra
      decoration: InputDecoration( //para agregar propiedades al input
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        counter: Text('Letras ${_nombre.length}'),
        hintText: 'Nombre de la persona',
        labelText: 'Nombre',
        helperText: 'Solo es el nombre',
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),

      ),
      onChanged: (valor){

        setState(() {
          _nombre = valor;
        });
      },
    );
  }

  Widget _crearPersona(){

    return ListTile(
      title: Text('El nombre es: $_nombre'),
    );

  }

}
