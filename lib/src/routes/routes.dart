import 'package:flutter/material.dart';
import 'package:flutter_eats/src/pages/login_page.dart';
import 'package:flutter_eats/src/pages/carrito_page.dart';
import 'package:flutter_eats/src/pages/restaurant_main_page.dart';
import 'package:flutter_eats/src/pages/restaurants_page.dart';

Map <String, WidgetBuilder>getRoutes(){                       //Función para obtener rutas
  return <String, WidgetBuilder>{
    '/'               : (BuildContext context) => LoginPage(),       //Ruta a LoginPage
    'restaurants'     : (BuildContext context) => RestaurantsPage(), //Ruta a RestaurantsPage
    'restaurantMain'       : (BuildContext context) => RestaurantMainPage(),        //Ruta a HomePage
    'carrito'         : (BuildContext context) => CarritoPage(),     //Ruta a CarritoPage
  };
}