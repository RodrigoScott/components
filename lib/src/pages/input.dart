//import 'dart:html';

import 'package:flutter/material.dart';

class inputPage extends StatefulWidget {
  @override
  _inputPageState createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {

  String _nombre = '';
  String _email = '';
  String _fecha = '';

  TextEditingController _controlFecha = new TextEditingController(); //permite cambiar los valores de una caja de texto

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
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearFecha(context),
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
      subtitle: Text('El email es: $_email'),
    );

  }

 Widget _crearEmail() {

   return TextField(

     keyboardType: TextInputType.emailAddress,
     decoration: InputDecoration( //para agregar propiedades al input
       border: OutlineInputBorder(
         borderRadius: BorderRadius.circular(15),
       ),
       hintText: 'Email',
       labelText: 'Email',
       suffixIcon: Icon(Icons.alternate_email),
       icon: Icon(Icons.email),

     ),
     onChanged: (valor) => setState(() {
         _email = valor;
       })

   );



 }

 Widget _crearPassword() {

   return TextField(

       obscureText: true,
       decoration: InputDecoration( //para agregar propiedades al input
         border: OutlineInputBorder(
           borderRadius: BorderRadius.circular(15),
         ),
         hintText: 'Passord',
         labelText: 'Password',
         suffixIcon: Icon(Icons.lock_open),
         icon: Icon(Icons.lock),

       ),
       onChanged: (valor) => setState(() {
         _email = valor;
       })

   );

 }

Widget  _crearFecha(BuildContext context) {

  return TextField(

    enableInteractiveSelection: false,
    controller: _controlFecha,
    decoration: InputDecoration( //para agregar propiedades al input
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      hintText: 'Fecha de nacimiento',
      labelText: 'Fecha de nacimiento',
      suffixIcon: Icon(Icons.perm_contact_calendar),
      icon: Icon(Icons.calendar_today),

      ),
      onTap: (){

      FocusScope.of(context).requestFocus(new FocusNode());
      _selectDate(context);

      },

  );

}

   _selectDate(BuildContext context) async {

    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
      locale: Locale('es','ES')
    );

    if (picked != null){
      setState(() {
        _fecha = picked.toString();
        _controlFecha.text = _fecha;
      });
    }

   }


}
