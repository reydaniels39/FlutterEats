import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  static final restaurantes = ["Italiannis", "Burguer King", "Pizza Hut", "Sushi Roll"];        //Prueba

  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);  //Instancia del Provider de los Inputs de Login

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),   //Margen para nuestra columna
          child: Column(
            children: [
              Text('Bienvenido ${inputsLoginProvider.nombre}',                //Mensaje de bienvenida al usuario
                style: TextStyle( 
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              ListView(                                                       //Lista de restaurantes
                //children: listaRestaurantes()                                //Método que obtiene una lista con los widgets
                children: <Widget>[                                            //No funciona :s
                  Text('Holaaa', style: TextStyle(color: Colors.black)),
                  Text('Como estas'),
                  Text('yo bien y tu'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  List <Widget> listaRestaurantes(){            //No funciona :s
    var widgets = restaurantes.map((index){
      return Column(
        children: <Widget>[
          ListTile(
            title: Text('$index'),
          ),
        ],
      );
    }).toList();

    return widgets;
  }
}