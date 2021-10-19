import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/widgets/card_swiper.dart';
import 'package:flutter_eats/src/widgets/custom_navigation_bar.dart';

class RestaurantInfoPage extends StatelessWidget {
  const RestaurantInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(                            //Hacemos que el body ocupe todo el espacio de pantalla
        child: _Body()                                  //Instanciamos la clase de body
      ),
      bottomNavigationBar: CustomNavigationBar(),       //Instanciamos la clase que nos proporcionará el BottomNavigationBar
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          margin: EdgeInsets.symmetric(horizontal: 40.0),             //El contenedor tendrá un margen horizontal
          child: Column(                                              //Columna para alinear nuestros elementos verticalmente
            children: [
              SizedBox(height: 20),                                   //Crea espacio entre elementos
              Text('Italiannis',                                      //Nombre del restaurante
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 45.0,
                  fontWeight: FontWeight.w200
                ),
              ),
              SizedBox(height: 20),                                   //Crea espacio entre elementos
              //CardSwiper(),
              Row(                                                    //Calificación del restaurante
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.star_rounded, 
                    size: 20, 
                    color: Colors.amber
                  ),
                  SizedBox(width: 5),
                  Text('4.3', 
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w200,
                    ),
                ),
                ],

              ),
              Text(                                                     //Descripción del restaurante
                'Tempor consectetur adipisicing cupidatat excepteur mollit aliqua est irure nulla quis. Fugiat laboris nisi consectetur mollit tempor. In aliqua labore nostrud velit ipsum officia ea dolor id.',
                style: TextStyle(
                  color: Colors.white,
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