
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
          _cardTipo1(),
          SizedBox(height: 20),
          _cardTipo2(),

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

Widget _cardTipo2() {
  return Card(
    child: Column(
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage('https://cdn1.epicgames.com/ue/product/Screenshot/7-1920x1080-c4334b28ada3ae5c0ce2bf769794e8ca-1920x1080-c4334b28ada3ae5c0ce2bf769794e8ca.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 100,
          fit: BoxFit.cover,
        ),
        /*Image(
            image: NetworkImage('https://cdn1.epicgames.com/ue/product/Screenshot/7-1920x1080-c4334b28ada3ae5c0ce2bf769794e8ca-1920x1080-c4334b28ada3ae5c0ce2bf769794e8ca.jpg')
        ),*/
        Container(
          padding: EdgeInsets.all(10),
            child: Text('Info al pie de imágen')
        ),

      ],
    ),
  );
}
