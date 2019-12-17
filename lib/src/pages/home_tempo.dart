import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final  opciones = ['uno','dos','tres'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Componentes temp'),
      ),
      body: ListView(
        children: _CrearItemCorto()
      ),
    );
  }

 List<Widget> _crearItem(){

    List<Widget> lista = new List<Widget>();

    for(var opt in opciones){

      final tempWidget = ListTile(
        title: Text(opt),

      );
      lista..add(tempWidget)
           ..add(Divider());

    }
    return lista;
 }

 List<Widget> _CrearItemCorto(){

  return opciones.map((item){

    return Column(
      children: <Widget>[
        ListTile(
          title: Text(item +' otra cosa'),
          subtitle: Text('Otra cosa en el subtitulo'),
          leading: Icon(Icons.access_time),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: (){},

        ),
        Divider()
      ],
    );

  }).toList();

 }


}
