import 'package:flutter/material.dart';

class alertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
