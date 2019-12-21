import 'package:flutter/material.dart';

class sliderPage extends StatefulWidget {
  @override
  _sliderPageState createState() => _sliderPageState();
}

class _sliderPageState extends State<sliderPage> {

  double _valSlider = 100.0;
  bool _bloquearCheck = false;
  bool _bloquearCheck2 = false;

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
            _crearSlider(),
            _crearCheckbox(),
            _crearSwitch(),
            Expanded(child: _crearImagen()),
          ],
        )
      ),
    );
  }

 Widget _crearSlider() {

    return Slider(
      activeColor: Colors.indigo,
        //divisions: 20,
        label: 'Tamaño de la imágen',
        value: _valSlider,
        min: 0.0,
        max: 371.0,
        onChanged: (_bloquearCheck) | (_bloquearCheck2) ? null : (valor){ //es un if corto, en caso de que se cumpla la condicion regresa un null, caso contrario regresa el código de valor
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

 Widget _crearCheckbox() {

    return CheckboxListTile(
      title: Text('Bloquear Slider'),

        value: _bloquearCheck,
        onChanged: (valor){
        setState(() {
          _bloquearCheck = valor;
        });

        },
    );
 }

  Widget  _crearSwitch() {

  return SwitchListTile(
    title: Text('Bloquear Slider'),

        value: _bloquearCheck2,
        onChanged: (valor){
          setState(() {
            _bloquearCheck2 = valor;
          });

        });

  }
}
