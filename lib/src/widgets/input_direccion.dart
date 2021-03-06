import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';
import 'package:provider/provider.dart';

class InputDireccion extends StatefulWidget {
  const InputDireccion({Key? key}) : super(key: key);

  @override
  _InputDireccionState createState() => _InputDireccionState();

}

class _InputDireccionState extends State<InputDireccion> {
  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);        //Instancia del provider de los inputs de login

    var _textStyle = TextStyle(color: Colors.white, fontSize: 20);                //Variable de Estilo de Texto

    return TextField(                                                             //Input
      style: _textStyle,                                                          //Estilo del Texto que se escribe en el input
      textCapitalization: TextCapitalization.words,                               //Mayúscula la inicial de cada palabra
      decoration: InputDecoration(                                                //Decoración del input
        enabledBorder: OutlineInputBorder(                                        //Decoración del borde
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Colors.amber,
            width: 2.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(                                        //Decoración del borde al estar seleccionado
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            color: Color.fromRGBO(0, 255, 255, 1),
            width: 2.0,
          ),
        ),
        hintText: 'Direccion',                                                  //Placeholder del input
        hintStyle: _textStyle,                                                  //Estilo del texto del Placeholder
        prefixIcon: Icon(Icons.home_filled, color: Color.fromRGBO(0, 255, 255, 1),),              //Icono del input
      ),
      onChanged: (valor){                                                         //Actualizar la variable con cada Cambio de valor
        setState(() {
          inputsLoginProvider.direccion = valor;                                  //Proveemos el valor al Provider
        });    
      },
      onSubmitted: (valor){                                                       //Actualizar la variable al pulsar la palomita del teclado del input
        inputsLoginProvider.direccion = valor;                                    //Proveemos el valor al Provider
      },
    );
  }
}