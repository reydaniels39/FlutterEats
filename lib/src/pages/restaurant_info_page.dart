import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:flutter_eats/src/widgets/card_swiper.dart';
import 'package:flutter_eats/src/widgets/custom_navigation_bar.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

class RestaurantInfoPage extends StatelessWidget {
  const RestaurantInfoPage({Key? key}) : super(key: key);

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
      body: _Body(),                                    //Instanciamos la clase de body
      bottomNavigationBar: CustomNavigationBar(),       //Instanciamos la clase que nos proporcionará el BottomNavigationBar
      drawer: MainDrawer(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);        //Instancia del provider de Restaurant Info

    return Container(                                               //Contenedor de todo el body
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
      child: SafeArea(
        child: Container(                                             //Contenedor para agrupar todos los elementos 
          padding: EdgeInsets.only(
            top: 20,
            left: 40,
            right: 40,
          ),             //El contenedor tendrá un padding horizontal
          child: Column(                                              //Columna para alinear nuestros elementos verticalmente
            children: [
              /*SizedBox(height: 20),                                   //Crea espacio entre elementos
              Text('Italiannis',                                      //Nombre del restaurante
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w200
                ),
              ),*/
              CardSwiper(),
              SizedBox(height: 10,),
              Row(                                                    //Calificación y Categoría
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(                                                //Calificación del restaurante
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Icon(Icons.star_rounded, 
                        size: 30, 
                        color: Colors.amber
                      ),
                      SizedBox(width: 5),
                      Text('${restaurantInfoProvider.calificacion}', 
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ],
                  ),
                  Text('${restaurantInfoProvider.categoria}',        //Categoría del restaurante
                    style: TextStyle(
                      color: Colors.amber,
                      fontWeight: FontWeight.w500,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Text(                                                     //Descripción del restaurante
                '${restaurantInfoProvider.informacion}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
            ],
          ),
        ),
      ),
    );
  }
}