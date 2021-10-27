
import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/carrito_provider.dart';
import 'package:flutter_eats/src/providers/restaurant_info_provider.dart';
import 'package:provider/provider.dart';

class RestaurantMenuPage extends StatelessWidget {
  const RestaurantMenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _Body();
  }
}

class _Body extends StatelessWidget {
  const _Body({Key? key}) : super(key: key);

  
Widget build(BuildContext context) {

  final restaurantInfoProvider = Provider.of<RestaurantInfoProvider>(context);
  final carritoProvider = Provider.of<CarritoProvider>(context);

    return SafeArea(
      child: Container(
        margin: EdgeInsets.fromLTRB(40.0, 20.0, 40.0, 0.0),
        child: Column(
          children: [
            Expanded(
              child: ListView(                                                             //Para desplegar todos los elementos
                children: [
                  Text("Alimentos",                                                        //Titulo 1
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Divider(                                                                  //Linea divisora
                    thickness: 1,
                    color: Colors.white,
                  ),
                  
                  Column(                                                                   //Espacio para los alimentos
                    children: mostrarProductos(context,restaurantInfoProvider,carritoProvider,'alimento'),
                  ),
                  
                  SizedBox(height: 20.0,),                                                  //Espacio extra
                  Text("Bebidas",                                                           //Titulo 2
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Divider(                                                                  //Linea divisora
                    thickness: 1,
                    color: Colors.white,
                  ),

                  Column(                                                                   //Espacio para las bebidas
                    children: mostrarProductos(context,restaurantInfoProvider,carritoProvider,'bebida'),
                  ),

                  
                  SizedBox(height: 20.0)                                                      //Espacio extra
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List <Widget> mostrarProductos (context, provider, carritoProvider, tipoProducto){         //Obtiene la lista de productos a desplegar

    List <Widget> lista = [];
    
    if (tipoProducto == 'alimento'){
      for (var i = 0; i < provider.alimentos.length; i++){
        lista.add(crearProducto(context, carritoProvider, tipoProducto, provider.alimentos[i], provider.precioAlimentos[i]));
      }
    }
    else{
      for (var i = 0; i < provider.bebidas.length; i++){
        lista.add(crearProducto(context, carritoProvider, tipoProducto, provider.bebidas[i], provider.precioBebidas[i]));
      }
    }
    
    return lista;
  }

  
  Widget crearProducto(context, carritoProvider, tipoProducto, nombre, precio){                 //Crea un ListTile con la información de un producto
    
    String icon = '';

    if (tipoProducto == 'alimento') icon = 'assets/alimento.png';
    else icon = 'assets/bebida.png';
    
    return ListTile(
      tileColor: Colors.red,
      selected: false,
      title: Text(nombre,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      subtitle: Text('\$$precio',
        style: TextStyle(
          color:Colors.white,
          //fontSize: 
        ),
      ),
      leading: Container(
        width: 50,
        height:50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: AssetImage(icon)
          ),
        ),
      ),
      trailing: Container(
        width: 50,
        child: GestureDetector(                                  //Para poder generar un evento onTap en el icono
          child: Icon(Icons.add, color: Colors.white),
          onTap: (){                                                //Agregar al carrito
            carritoProvider.crearProducto(nombre, precio);   //Mandamos los datos a la clase Producto para que se prepare para construir
            carritoProvider.agregarProducto(carritoProvider);   //Construimos el Producto y lo guardamos en la lista del Provider.
            
            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text("Producto Agregado al carrito",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              duration: Duration(seconds:1),
              backgroundColor: Colors.white,
              behavior: SnackBarBehavior.floating,
              width: 250,
            ));

          },
        ),
      ),
    );
  } 
}
