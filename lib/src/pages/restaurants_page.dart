import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:flutter_eats/src/widgets/restaurant_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';
import 'dart:math';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);        

  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);  //Instancia del Provider de los Inputs de Login

    return Scaffold(
      appBar: AppBar( 
        backgroundColor: Color.fromRGBO(255, 209, 0, 1),                                                //AppBar que muestra una Bienvenida
        title: Text(
          //'Bienvenido ${inputsLoginProvider.nombre}!',
          getMensajeRandom(inputsLoginProvider),
          style: TextStyle(
            fontSize: 25,
            color: Color.fromRGBO(19, 19, 19, 1),
            fontWeight: FontWeight.w400
          ),
        ),
      ),
      body: Container(
        color: Color.fromRGBO(19, 19, 19, 1),
        child: RestaurantCard(),                                          //Lista Dinámica de los restaurantes (Lee los datos desde restaurants_opts.json)
      ),
      drawer: MainDrawer(),                                               //Drawer
    );
  }

  getMensajeRandom(inputsLoginProvider) {
    final rng = new Random();
    int opcion = rng.nextInt(5);

    switch (opcion) {
      case 0:
        return '¡Qué hambre!, ¿no ${inputsLoginProvider.nombre}?!';
      case 1:
        return '¿Tienes hambre ${inputsLoginProvider.nombre}?';
      case 2:
        return '¡Hora de comer, ${inputsLoginProvider.nombre}!';
      case 3:
        return '¿Qué se te antoja ${inputsLoginProvider.nombre}?';
      case 4:
        return '¡Provecho, ${inputsLoginProvider.nombre}!';
      case 5:
        return '¡Bienvenido ${inputsLoginProvider.nombre}!';
      default:
        return '¡Bienvenido ${inputsLoginProvider.nombre}!';
    }
  }
}