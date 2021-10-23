import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);  //Instancia del Provider de los Inputs de Login

    return Drawer(                                        //Drawer
        child: ListView(                                  //Vista de Lista
          children: [
            UserAccountsDrawerHeader(                         //Encabezado para los datos de usuario
              accountName: Text(
                '${inputsLoginProvider.nombre}',              //Nombre del usuario
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              accountEmail: Text(
                '${inputsLoginProvider.direccion}',           //Dirección del usuario
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
              currentAccountPicture: CircleAvatar(            //Avatar del usuario
                backgroundColor: Colors.amber,                //Color de fondo del avatar
                child: Text('${inputsLoginProvider.nombre}'.characters.first.toUpperCase()),    //Toma la primer letra del nombre de usuario para ponerla en el avatar
              ),
            ),
            ListTile(                                                     //Primer elemento de la lista
              title: Text(                                                //Texto: Restaurantes
                'Restaurantes',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () => Navigator.pushNamed(context, 'restaurants'),   //Al tocar nos envía a la página Restaurantes
              leading: Icon(                           //Icono inicial del primer elemento
                Icons.restaurant_rounded,
                size: 30,
              ),
              trailing: Icon(                          //Icono final del primer elemento
                Icons.arrow_right,
                size: 30,
              ),
            ),
            ListTile(                                                     //Segundo elemento de la lista
              title: Text(                                                //Texto: Carrito
                'Carrito',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              onTap: () => Navigator.pushNamed(context, 'carrito'),       //Al tocar nos envía a la página Carrito
              leading: Icon(                           //Icono inicial del segundo elemento
                Icons.shopping_cart,
                size: 30,
              ),
              trailing: Icon(                          //Icono final del segundo elemento
                Icons.arrow_right,
                size: 30,
              ),
            ),
            SizedBox(height: 15,),
            Divider(color: Colors.black),                                 //Divider color negro
            BackButton(),                                                 //Botón para ocultar el Drawer
            SizedBox(height: 475,),
            Divider(color: Colors.black),                                 //Divider color negro
            TextButton(                                                                             //Boton de Texto
              onPressed: () => Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false),   //Al tocar nos envía al login y elimina el historial de rutas
              child: Text(                                                                          //Texto del boton: Salir
                'Salir',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
      );
  }
}