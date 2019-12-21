import 'package:flutter/material.dart';

class sliderPage extends StatefulWidget {
  @override
  _sliderPageState createState() => _sliderPageState();
}

class _sliderPageState extends State<sliderPage> {

  double _valSlider = 100.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sliders'),
      ),
      body: Container(
        padding:  EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearLista(),
            Expanded(child: _crearImagen()),
          ],
        )
      ),
    );
  }

 Widget _crearLista() {

    return Slider(
      activeColor: Colors.indigo,
        //divisions: 20,
        label: 'Tamaño de la imágen',
        value: _valSlider,
        min: 0.0,
        max: 371.0,
        onChanged: (valor){
          setState(() {
            _valSlider = valor;
          });


        },
    );

 }

Widget  _crearImagen() {

    return Image(
      image: NetworkImage('https://i0.wp.com/www.nolapeles.com/wp-content/uploads/2018/08/batmetal-forever.jpg?resize=659%2C371'),
      width: _valSlider,
      fit: BoxFit.contain,
    );

}
}
