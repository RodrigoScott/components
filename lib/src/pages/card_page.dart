
import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventana de Cards'),
      ),
floatingActionButton: FloatingActionButton(
  child: Icon(Icons.reply),
  onPressed: (){
    Navigator.pop(context);
  },
),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardTipo1()
        ],
      ),

    );
  }

 Widget _cardTipo1() {

    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.cyan),
            title: Text('Este es el titulo de la tarjeta'),
            subtitle: Text('Este es el subtitulo de la tarjeta, varias veces, copiado varias veces'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: (){}, child: Text('Cancelar')),
              FlatButton(onPressed: (){}, child: Text('Aceptar')),
            ],
          ),
        ],

      ),

    );
 }
}
