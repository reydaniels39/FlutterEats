import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:provider/provider.dart';

class RestaurantUbicacionesPage extends StatelessWidget {
  const RestaurantUbicacionesPage({Key? key}) : super(key: key);

 
  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);     //Instanciamos el provider con la informacion del restaurante

    return SafeArea(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 60.0),
        child: Column(
          children: [
            SizedBox(height:20.0),
            Text('Estas son las direcciones más cercanas',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
            SizedBox(height: 20.0),
            Column(
              children: mostrarUbicaciones(context, restaurantInfoProvider)       //Muestra una tarjeta por cada ubicacion del restaurante
            ),
          ],
        ),
      ), 
    );
  }

  List <Widget> mostrarUbicaciones(context, provider){
    final List<Widget> tarjetas = [];

    for (var i = 0; i < provider.ubicaciones.length; i++){
      final widgetTemporal = ClipRRect(
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        child: Card(
          child: Column(
            children: [
              FadeInImage(
                placeholder: AssetImage('assets/cargando2.gif'), 
                image: AssetImage('assets/ubicacionImages/' + separarExtension(provider.logo)[0] + 'ubicacion' + '$i' + '.jpg'),
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text(provider.ubicaciones[i]),
              ),
            ],
          ),
        ),
      );
      tarjetas..add(widgetTemporal)
              ..add(SizedBox(height:20.0));
    }

    return tarjetas;

  }

  separarExtension(String nombreCompleto){
    List<String> nombreSeparado = nombreCompleto.split('.');
    return nombreSeparado;
  }
}
