
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/pages/restaurant_info_page.dart';
import 'package:flutter_eats/src/pages/restaurant_menu_page.dart';
import 'package:flutter_eats/src/pages/restaurant_ubicaciones_page.dart';
import 'package:flutter_eats/src/providers/pagina_provider.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:flutter_eats/src/widgets/custom_navigation_bar.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

class RestaurantMainPage extends StatelessWidget {
  const RestaurantMainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);        //Instancia del provider de Restaurant Info

    return Scaffold(
      appBar: AppBar(                                                 //AppBar que muestra una Bienvenida
        title: Text(
          '${restaurantInfoProvider.titulo}',
          style: TextStyle(
            fontSize: 25,
            color: Colors.orange[500],
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(                                    //Decoracion del background del body
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(0, 14, 57, 1),
              Color.fromRGBO(21, 19, 20, 1),
            ],
          ),
        ),
        child: ChooseBody(),                               //Instanciamos la clase que buscará el body
      ),
      bottomNavigationBar: CustomNavigationBar(),       //Instanciamos la clase que nos proporcionará el BottomNavigationBar
      drawer: MainDrawer(),
    );
  }
}

class ChooseBody extends StatelessWidget {
  const ChooseBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
  final paginaProvider = Provider.of<PaginaProvider>(context);      //Instanciamos el provider de la pagina
  final pagina = paginaProvider.paginaSeleccionada;


    switch (pagina){                                          //Dependiendo de la página, regresará el contenido de la página que buscamos acceder
      case 0: return RestaurantInfoPage(); 
      case 1: return RestaurantMenuPage();
      case 2: return RestaurantUbicacionesPage();
      default:return RestaurantInfoPage();
    }

  }
}