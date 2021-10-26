import 'package:flutter/material.dart';
import 'package:flutter_eats/src/pages/login_page.dart';
import 'package:flutter_eats/src/providers/carrito_provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';
import 'package:flutter_eats/src/providers/pagina_provider.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:flutter_eats/src/routes/routes.dart';
import 'package:provider/provider.dart';

void main() => runApp(FlutterEats());

class FlutterEats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(                                  //ChangeNotifierProvider Provider para toda la app
          create: (_) => InputsLoginProvider(),                       //Provider de los inputs de Login
        ),
        ChangeNotifierProvider(                                //ChangeNotifierProvider Provider para toda la app
          create: (_) => RestaurantInfoProvider(),                    //Provider de la información de cada Restaurante
        ),
        ChangeNotifierProvider(                                //ChangeNotifierProvider Provider para toda la app
          create: (_) => PaginaProvider(),                            //Provider de la página de nuestro BottomNavigationBar
        ),
        ChangeNotifierProvider(
          create: (_) => CarritoProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,                          //DebugBanner
        title: 'Flutter Eats',                                      //Título de la app
        theme: ThemeData(                                           //Temas para la app
          primaryColor: Color.fromRGBO(0, 255, 255, 1),             //Color Primario para el Tema    
          colorScheme: ThemeData().colorScheme.copyWith(
            primary: Color.fromRGBO(0, 255, 255, 1),                //Color Primario para los elementos seleccionados
          ),
          floatingActionButtonTheme: FloatingActionButtonThemeData(   //Temas para los Floating Action Buttons
            backgroundColor: Colors.purpleAccent,
          ),
        ),
        initialRoute: '/',                                       //Ruta Inicial
        routes: getRoutes(),                                    //Obtener Rutas para navegación de la app
        onGenerateRoute: (settings){                            //En caso de ruta no encontrada...
          return MaterialPageRoute(
            builder: (BuildContext context) => LoginPage(),     //...Cargar Login Page
          );
        },
      ),
    );
  }
}