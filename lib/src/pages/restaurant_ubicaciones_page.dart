import 'package:flutter/material.dart';

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
            tarjetaUbicacion(),                                               //Regresa una tarjeta con el formato de ubicacion,
            tarjetaUbicacion(),                                             
          ],
        ),
      ), 
    );
  }

  Widget tarjetaUbicacion (){
    return ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      child: Card(
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/cargando.gif'), 
              image: AssetImage('assets/ubicacionImages/italiannisubicacion0.jpg')
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Calle Rogelio Solís #5 Los Cabos'),
            ),
          ],
        ),
      ),
    );
  }
}
