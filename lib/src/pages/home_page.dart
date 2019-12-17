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

    return ListView(
      children: _listaItems(),

    );
  }

  _listaItems() {
    return [
      ListTile(title: Text('Message')),
      ListTile(title: Text('Message')),
      ListTile(title: Text('Message')),
    ];
  }

}
