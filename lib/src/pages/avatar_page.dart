import 'package:flutter/material.dart';

class avatarPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(7.0),
            child: CircleAvatar(
              backgroundImage: NetworkImage('http://www.elclarinete.com.mx/wp-content/uploads/2018/10/10628343_941591029189799_4213220969187567108_n-844x500.jpg'),
              radius: 20,

            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10),
            child: CircleAvatar(
              child: Text('Rs'),
              backgroundColor: Colors.black,
            ),
          )

        ],
        title: Text('Ventana de avatares'),
      ),
      
      body: Container(

        child: FadeInImage(
          //alignment: ,
      placeholder: AssetImage('assets/jar-loading.gif'),
      fadeInDuration: Duration(milliseconds: 400),
      image: NetworkImage('http://www.elclarinete.com.mx/wp-content/uploads/2018/10/10628343_941591029189799_4213220969187567108_n-844x500.jpg'),

      ),
        ),
      
      floatingActionButton: FloatingActionButton( //boton flotante
        child: Icon(Icons.reply),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}