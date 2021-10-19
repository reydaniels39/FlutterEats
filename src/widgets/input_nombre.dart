import 'package:flutter/material.dart';

class InputNombre extends StatefulWidget {
  const InputNombre({Key? key}) : super(key: key);

  @override
  _InputNombreState createState() => _InputNombreState();

}

class _InputNombreState extends State<InputNombre> {
  static String nombre = '';                                            //Variable que guarda el nombre del Input

  @override
  Widget build(BuildContext context) {
    var _textStyle = TextStyle(color: Colors.white, fontSize: 20);      //Variable de Estilo de Texto

    return TextField(                                                   //Input
      style: _textStyle,                                                //Estilo del Texto que se escribe en el input
      textCapitalization: TextCapitalization.words,                     //Mayúscula la inicial de cada palabra
      decoration: InputDecoration(
        hintText: 'Nombre o Usuario',                                   //Placeholder del input
        hintStyle: _textStyle,                                          //Estilo del texto del Placeholder
        icon: Icon(Icons.account_circle_rounded),                       //Icono del input
      ),
      onChanged: (valor){                                               //Actualizar la variable con cada Cambio de valor
        setState(() {
          nombre = valor;
        });    
      },
      onSubmitted: (valor){                                             //Actualizar la variable al pulsar la palomita del teclado del input
        nombre = valor;
      },
    );
  }
}