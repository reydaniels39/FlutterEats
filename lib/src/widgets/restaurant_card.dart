import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:flutter_eats/src/providers/restaurants_provider.dart';
import 'package:provider/provider.dart';

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);        //Instancia del provider de Restaurant Info

    return FutureBuilder(
      future: restaurantsProvider.cargarData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot snapshot){
        return ListView(
          padding: EdgeInsets.all(20),
          children: _listaItems(snapshot.data, context, restaurantInfoProvider),
        );
      }
    );    
  }

  List<Widget> _listaItems(List<dynamic>? data, BuildContext context, restaurantInfoProvider){
    final List<Widget> restaurantes = [
      Center(
        child: Text(                                                //Cabecera de la Lista Centrado
          'Restaurantes cerca de ti',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      Divider(color: Colors.black),
    ];

    data?.forEach((op) {
      final widgetTemporal = ListTile(
        leading: FadeInImage(                                     //Imagen con FadeInImage para poder usar placeholder
          placeholder: AssetImage('assets/cargando.gif'),         //Gif Cargando
          image: AssetImage("assets/restaurantImages/" + op['logo']),              //Logo del Restaurante
        ),
        title: Text(op['titulo']),
        subtitle: Text('Categoría: ' + op['subtitulo']),
        onTap: () {
          restaurantInfoProvider.titulo = op['titulo'];
          restaurantInfoProvider.calificacion = op['calificacion'];
          restaurantInfoProvider.informacion = op['informacion'];
          restaurantInfoProvider.logo = op['logo'];
          restaurantInfoProvider.categoria = op['subtitulo'];
          restaurantInfoProvider.numeroImagenes = op['numeroImagenes'];
          Navigator.pushNamed(context, 'restaurantMain');
        },
      );
      restaurantes..add(widgetTemporal)
                  ..add(
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          onPressed: () {
                            restaurantInfoProvider.titulo = op['titulo'];
                            restaurantInfoProvider.calificacion = op['calificacion'];
                            restaurantInfoProvider.informacion = op['informacion'];
                            restaurantInfoProvider.logo = op['logo'];
                            restaurantInfoProvider.categoria = op['subtitulo'];
                            restaurantInfoProvider.numeroImagenes = op['numeroImagenes'];
                            Navigator.pushNamed(context, 'restaurantMain');
                          },
                          child: Text('Ver Restaurante'),
                        ),
                      ],
                    ),
                  )
                  ..add(SizedBox(height: 10.0,),);
    });
    return restaurantes;
  }
}