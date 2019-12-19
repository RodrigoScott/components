import 'package:flutter/material.dart';

class avatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ventana de avatares'),
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