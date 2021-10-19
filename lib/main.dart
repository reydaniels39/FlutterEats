import 'package:flutter/material.dart';
import 'package:flutter_eats/src/pages/login_page.dart';
import 'package:flutter_eats/src/routes/routes.dart';

void main() => runApp(FlutterEats());

class FlutterEats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,                          //DebugBanner
      title: 'Flutter Eats',                                      //Título de la app
      theme: ThemeData(                                           //Temas para la app
        primaryColor: Color.fromRGBO(0, 255, 255, 1),             //Color Primario para el Tema    
        colorScheme: ThemeData().colorScheme.copyWith(
          primary: Colors.amber,                                  //Color Primario para el Tema
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData( //Temas para los FAB
          backgroundColor: Colors.purpleAccent,
        ),
      ),
      initialRoute: 'restaurant_info',                                       //Ruta Inicial
      routes: getRoutes(),                                    //Obtener Rutas para navegación de la app
      onGenerateRoute: (settings){                            //En caso de ruta no encontrada...
        return MaterialPageRoute(
          builder: (BuildContext context) => LoginPage(),     //...Cargar Login Page
        );
      },
    );
  }
}