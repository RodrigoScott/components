
import 'package:components/src/providers/menu_provider.dart';
import 'package:components/src/utils/icono_string_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componenetes'),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {
    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
          children: _listaItems(snapshot.data, context),
        );

      },

    );


  }

  List<Widget> _listaItems( List<dynamic> data, BuildContext context) {

    final List<Widget> opciones = [];
    
    data.forEach((opt){

      final widgetTemp = ListTile(
        title: Text(opt['texto']),
        leading: getIcon(opt ['icon']),
        trailing: Icon(Icons.keyboard_arrow_down, color: Colors.cyan ),
        onTap: () {

          Navigator.pushNamed(context, opt['ruta']);

        },
      );

      opciones.add(widgetTemp);
      opciones.add(Divider());

    });

    return opciones;

  }

}
