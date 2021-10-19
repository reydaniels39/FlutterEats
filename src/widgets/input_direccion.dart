import 'package:flutter/material.dart';

class InputDireccion extends StatefulWidget {
  const InputDireccion({Key? key}) : super(key: key);

  @override
  _InputDireccionState createState() => _InputDireccionState();

}

class _InputDireccionState extends State<InputDireccion> {
  static String direccion = '';                                                          //Variable que guarda el nombre del Input

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(color: Colors.white, fontSize: 20);                //Variable de Estilo de Texto

    return TextField(                                                             //Input
      style: _textStyle,                                                          //Estilo del Texto que se escribe en el input
      textCapitalization: TextCapitalization.words,                               //Mayúscula la inicial de cada palabra
      decoration: InputDecoration(
        hintText: 'Dirección',                                                    //Placeholder del input
        hintStyle: _textStyle,                                                    //Estilo del texto del Placeholder
        icon: Icon(Icons.home),                                                   //Icono del input
      ),
      onChanged: (valor){                                                         //Actualizar la variable con cada Cambio de valor
        setState(() {
          direccion = valor;
        });    
      },
      onSubmitted: (valor){                                                       //Actualizar la variable al pulsar la palomita del teclado del input
        direccion = valor;
      },
    );
  }
}