import 'package:flutter/material.dart';
import 'package:flutter_eats/src/providers/inputs_login_provider.dart';
import 'package:flutter_eats/src/widgets/main_drawer.dart';
import 'package:provider/provider.dart';

class CarritoPage extends StatelessWidget {
  const CarritoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
    final inputsLoginProvider = Provider.of<InputsLoginProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Carrito',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: _body(inputsLoginProvider),                                                       //Llamamos a traer al body
    );
  
  }

  Widget _body(inputsLoginProvider){
    
    return Container(                                                      //Container para la decoración del Background
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromRGBO(0, 14, 57, 1),
            Color.fromRGBO(21, 19, 20, 1),
          ],
        ),
      ),
      
      child: Padding(
        padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
        child: SafeArea(
          child: Column(
            children: [
              Container(                                                      //Muestra la direccion ingresada en el login page
                margin: EdgeInsets.symmetric(horizontal: 40.0),
                child: Text('Enviando a ${inputsLoginProvider.direccion}:',                
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),

              SizedBox(height: 15.0),                                           //Espacio entre widgets

              Expanded(                                                         //ListView de los productos
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 40.0),
                  width: double.infinity,
                  height: double.infinity,
                  child: ListView(
                    children: [
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                      mostrarProducto(),
                    ],
                  ),
                ),
              ),

              Container(                                                       //Muestra el monto total y el boton de pedir
                height: 70.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('Total: \$370.0',                                        //Monto total
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 30,
                      )
                    ),
                    TextButton(
                      child: Container(
                        width: 140,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Colors.green[600],
                          borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        ),
                        child: Column(                                            //Para centrar el texto en el container
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('¡Pedir!',
                              style: TextStyle(
                                fontSize: 25,
                                color: Colors.white,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ],
                        ),
                      ),
                      onPressed: (){},                                            //Al presionar el botón de pedir...
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget mostrarProducto (){
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      height: 60,
      decoration: BoxDecoration(
      ),
      child: Row(
        children: [
          Container(                                                      //Muestra nombre y precio del producto
            width: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Pizza Peperonni',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                Text('\$130',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(                                                //Muestra la cantidad de unidades y los iconos de + y -
              width: 20,
              height: 70,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  GestureDetector(
                    child: Icon( Icons.remove, 
                      color: Colors.white,
                    ),
                    onTap: (){},                                              //Al presionar el ícono de menos...
                  ),
                  Text('2',                                                   //Unidades del producto
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w200,
                      color: Colors.white,
                    ),
                  ),
                  GestureDetector(
                    child: Icon( Icons.add, 
                      color: Colors.white,
                    ),
                    onTap: (){},                                             //Al presionar el ícono de más...
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



                        