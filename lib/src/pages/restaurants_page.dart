import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';

class RestaurantsPage extends StatelessWidget {
  const RestaurantsPage({Key? key}) : super(key: key);

  //Prueba
  static final restaurantes = ["Italiannis", "Burguer King", "Pizza Hut", "Sushi Roll", "Restaurante1", "Restaurante2", "Restaurante3", "Restaurante 4", "Restaurante5"];        
  static final categorias = ["Pizza, Pastas", "Hamburguesas, Comida rápida", "Pizza", "Sushi, Oriental", "De todo", "De todo", "De todo", "De todo", "De todo"];        

  @override
  Widget build(BuildContext context) {

    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);  //Instancia del Provider de los Inputs de Login

    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.fromLTRB(50.0, 20.0, 50.0, 0.0),     //Margen para nuestra columna 
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Bienvenido ${inputsLoginProvider.nombre}',                //Mensaje de bienvenida al usuario
                style: TextStyle( 
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500,
                ),
              ), 
              SizedBox(height: 40),
              Text('Restaurantes cerca de ti'),
              Divider(color: Colors.black),
              Expanded(                                                           //Para que nuestro ListView abarque todo el espacio posible
                child: ListView(                                                  //Lista de restaurantes
                  children: listaRestaurantes(context)                            //Método que obtiene una lista con los widgets
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List <Widget> listaRestaurantes(context){                                       //Utilizamos el context para movernos de pagina
    var widgets = restaurantes.map((index){                                       //Por cada elemento que tenemos en la lista 'restaurantes'
      return Column(
        children: <Widget>[
          ListTile(                                                               //Cada List Tile es un restaurante
            //tileColor: Colors.amber,                                                             
            title: Text(index,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text('Categoría: Pizzas, Pasta',
              style: TextStyle(
                fontStyle: FontStyle.italic,
              ),
            ),
            
            onTap: (){                                                                  //Que nos lleve a la página de información
              Navigator.pushNamed(context, 'restaurant_info');
            },
          ),
          SizedBox(height: 10),                                                         //Para separar los list tiles
          /*Card(                                                                       //Creamos una carta por restaurante
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
            child: Column(
              children: [
                ListTile(
                  title: Text(index),
                  subtitle: Text('Categoria: Pizzas, Pasta'),
                )
              ],
            ),
          ),*/
        ],
      );
    }).toList();

    return widgets;
  }
}