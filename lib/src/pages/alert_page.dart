//import 'dart:html';

import 'package:flutter/material.dart';

class alertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
            child: Text('Alertas'),
            color: Colors.blue,
            textColor: Colors.white,
            shape: StadiumBorder(),

            onPressed: () => _mostrarAlerta(context),

        ),

      ),
      appBar: AppBar(
        title: Text('Ventana de alertas'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.reply),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}

void _mostrarAlerta(BuildContext context) {
  showDialog(
      context: context,
    barrierDismissible: true,
    builder: (context){

        return AlertDialog(
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),

          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la alerta'),
              FlutterLogo(size: 100,)
            ],
          ),
          actions: <Widget>[
            FlatButton(
                child: Text('Cancelar'),
              onPressed: ()=> Navigator.of(context).pop(),
            ),
            FlatButton(
              child: Text('OK'),
              onPressed: (){

                Navigator.of(context).pop();

              },
            ),
          ],
          //shape: StadiumBorder(),


        );

    }
  );

}
