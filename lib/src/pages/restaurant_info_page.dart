import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:flutter_eats/src/widgets/card_swiper.dart';
import 'package:provider/provider.dart';

class RestaurantInfoPage extends StatelessWidget {
  const RestaurantInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Body();                                   //Instanciamos la clase de body
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);        //Instancia del provider de Restaurant Info

    return SafeArea(
      child: Container(                                             //Contenedor para agrupar todos los elementos 
        padding: EdgeInsets.only(             //El contenedor tendrá un padding horizontal y superior
          top: 20,
          left: 40,
          right: 40,
        ),
        child: Column(                                              //Columna para alinear nuestros elementos verticalmente
          children: [
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
                        fontWeight: FontWeight.w300,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
                Text('${restaurantInfoProvider.categoria}',        //Categoría del restaurante
                  style: TextStyle(
                    color: Colors.amber,
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    fontStyle: FontStyle.italic
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
                fontWeight: FontWeight.w300,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}