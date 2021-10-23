import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:flutter_eats/src/widgets/restaurant_card.dart';
import 'package:provider/provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);        

  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);  //Instancia del Provider de los Inputs de Login

    return Scaffold(
      appBar: AppBar(                                                 //AppBar que muestra una Bienvenida
        title: Text(
          'Bienvenido ${inputsLoginProvider.nombre}!',
          style: TextStyle(
            fontSize: 25,
            color: Colors.orange[500],
          ),
        ),
      ),
      body: Container(
        child: RestaurantCard(),                                          //Lista Dinámica de los restaurantes (Lee los datos desde restaurants_opts.json)
      ),
      drawer: MainDrawer(),                                               //Drawer
    );
  }
}